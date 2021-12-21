//
//  HHTableView.m
//  HHTableView
//
//  Created by lch on 2020/4/5.
//  Copyright © 2020年 lch. All rights reserved.
//

#import "HHTableView.h"


@interface HHTableView ()<UITableViewDelegate,UITableViewDataSource>

// 接UITableViewCell
@property (nonatomic,strong) Class cellClass;
@property (nonatomic,copy)   NSString *reuseIdentifier;
@property (nonatomic,assign) NSInteger isNib;
/**
 头视图
 */
@property (nonatomic,copy) HH_viewForHeader viewForHeader;
@property (nonatomic,copy) HH_heightForHeader heightForHeader;
/**
 脚视图
 */
@property (nonatomic,copy) HH_viewForFooter viewForFooter;
@property (nonatomic,copy) HH_heightForFooter heightForFooter;
/**
 cell
 */
@property (nonatomic,copy) HH_numberOfSection numberOfSection;
@property (nonatomic,copy) HH_numberOfRow numberOfRow;
@property (nonatomic,copy) HH_heightForCell heightCell;
@property (nonatomic,copy) HH_viewForCell viewForCell;
@property (nonatomic,copy) HH_didSelectRowAtIndexPath didSelectRowAtIndexPath;


@end

@implementation HHTableView


- (instancetype)initPlainTableViewFrame:(CGRect)frame tableViewCell:(id)cellClass reuseIdentifier:(NSString *)reuseIdentifier cellHeight:(CGFloat)cellHeight{
    if (self == [super initWithFrame:frame]) {
        self.reuseIdentifier = reuseIdentifier;
        self.cellClass = cellClass;
        self.isNib = 0;
        self.tableView = [[UITableView alloc]initWithFrame:self.bounds style:UITableViewStylePlain];
        [self addSubview:self.tableView];
        self.tableView.rowHeight = cellHeight;
        self.tableView.showsVerticalScrollIndicator = NO;
        self.tableView.showsHorizontalScrollIndicator = NO;
        [self defaultConfig];
    }
    return self;
}

- (instancetype)initGroupTableViewFrame:(CGRect)frame tableViewCell:(id)cellClass reuseIdentifier:(NSString *)reuseIdentifier cellHeight:(CGFloat)cellHeight{
    
    if (self == [super initWithFrame:frame]) {
        self.reuseIdentifier = reuseIdentifier;
        self.cellClass = cellClass;
        self.isNib = 0;
        self.tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height) style:UITableViewStyleGrouped];
        self.tableView.rowHeight = cellHeight;
        self.tableView.showsVerticalScrollIndicator = NO;
        self.tableView.showsHorizontalScrollIndicator = NO;
        [self addSubview:self.tableView];
        [self defaultConfig];
    }
    return self;
}
#pragma mark - 创建单组tableView Nib Cell
- (instancetype)initPlainNibTableViewFrame:(CGRect)frame tableViewCell:(nullable id)cellClass reuseIdentifier:(NSString *)reuseIdentifier cellHeight:(CGFloat)cellHeight{
    if (self == [super initWithFrame:frame]) {
        self.reuseIdentifier = reuseIdentifier;
        self.cellClass = cellClass;
        self.isNib = 1;
        self.tableView = [[UITableView alloc]initWithFrame:self.bounds style:UITableViewStylePlain];
        [self addSubview:self.tableView];
        self.tableView.rowHeight = cellHeight;
        self.tableView.showsVerticalScrollIndicator = NO;
        self.tableView.showsHorizontalScrollIndicator = NO;
        [self defaultConfig];
    }
    return self;
}
#pragma mark - 配置
- (void)defaultConfig{
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.showsVerticalScrollIndicator = NO;
    self.tableView.showsHorizontalScrollIndicator = YES;
    if (self.isNib == 1) {
        [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass(self.cellClass) bundle:nil] forCellReuseIdentifier:self.reuseIdentifier];
    }else{
        [self.tableView registerClass:[self.cellClass class] forCellReuseIdentifier:self.reuseIdentifier];
    }
    if (@available(iOS 11.0, *)) {
        self.tableView.estimatedRowHeight = 0;
        self.tableView.estimatedSectionFooterHeight = 0;
        self.tableView.estimatedSectionHeaderHeight = 0;
    }
}
#pragma mark --------------- UITableViewDataSource ----------------------
//-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
//
//    if (self.heightCell) {
//        return self.heightCell(tableView,indexPath);
//    }
//    return UITableViewAutomaticDimension; // 自动布局，自动设置cell高度
//}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return self.numberOfSection ? self.numberOfSection(tableView) : 1;
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.numberOfRow ? self.numberOfRow(tableView,section) : 0;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:self.reuseIdentifier];
    // 拿出cell 判断是否有TableViewCell 注册类
    if (self.cellClass) {
        cell = [tableView dequeueReusableCellWithIdentifier:self.reuseIdentifier forIndexPath:indexPath];
    }else{
        cell = [[self.cellClass alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:self.reuseIdentifier];
    }
    if (self.hh_viewForCell) {
        self.viewForCell(tableView, cell, indexPath);
    }
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    if (self.didSelectRowAtIndexPath) {
        self.didSelectRowAtIndexPath(tableView, indexPath);
    }
}
#pragma mark - 头，脚视图
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    
    return self.heightForHeader ? self.heightForHeader(tableView,section) : 0;
    
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    
    return self.viewForHeader ? self.viewForHeader(tableView,section) : [UIView new];
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    
    return self.heightForFooter ? self.heightForFooter(tableView, section) : 0;
}
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    return self.viewForFooter ? self.viewForFooter(tableView,section) : [UIView new];
}

#pragma mark - 刷新tableView
- (void)hh_reloadData{
    [self.tableView reloadData];
}


#pragma mark - 懒加载

- (HHTableView * _Nonnull (^)(HH_viewForHeader _Nonnull))hh_viewForHeader{
    
    return ^HHTableView *(HH_viewForHeader block ){
        
        if (block) {
            self.viewForHeader = block ;
        }
        return self;
    };
    
}
- (HHTableView * _Nonnull (^)(HH_heightForHeader _Nonnull))hh_heightForHeader{
    
    return ^HHTableView *(HH_heightForHeader block){
        
        if (block) {
            self.heightForHeader = block;
        }
        return self;
    };
    
}

- (HHTableView * _Nonnull (^)(HH_viewForFooter _Nonnull))hh_viewForFooter{
    
    return ^HHTableView *(HH_viewForFooter block){
        if (block) {
            self.viewForFooter = block;
        }
        return self;
    };
}
- (HHTableView * _Nonnull (^)(HH_heightForFooter _Nonnull))hh_heightForFooter{
    
    return ^HHTableView *(HH_heightForFooter block){
        if (block) {
            self.heightForFooter = block;
        }
        return self;
    };
    
}

- (HHTableView * _Nonnull (^)(HH_numberOfSection _Nonnull))hh_numberOfSection{
    
    return ^HHTableView *(HH_numberOfSection block){
        if (block) {
            self.numberOfSection = block;
        }
        return self;
    };
}
- (HHTableView * _Nonnull (^)(HH_numberOfRow _Nonnull))hh_numberOfRow{
    
    return ^HHTableView *(HH_numberOfRow block){
        if (block) {
            self.numberOfRow = block;
        }
        return self;
    };
}
- (HHTableView * _Nonnull (^)(HH_heightForCell _Nonnull))hh_heightForCell{
    return ^HHTableView *(HH_heightForCell block){
        if (block) {
            self.heightCell = block;
        }
        return self;
    };
}
- (HHTableView * _Nonnull (^)(HH_viewForCell _Nonnull))hh_viewForCell{
    
    return ^HHTableView *(HH_viewForCell block){
        if (block) {
            self.viewForCell = block;
        }
        return self;
    };
    
}
- (HHTableView * _Nonnull (^)(HH_didSelectRowAtIndexPath _Nonnull))hh_didSelectRowAtIndexPath{
    
    return ^HHTableView *(HH_didSelectRowAtIndexPath block){
        if (block) {
            self.didSelectRowAtIndexPath = block;
        }
        return self;
    };
}



@end
