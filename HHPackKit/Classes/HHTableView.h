//
//  HHTableView.h
//  HHTableView
//
//  Created by lch on 2020/4/5.
//  Copyright © 2020年 lch. All rights reserved.
//



////// 链式编程方式封装tableView

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HHTableView : UIView

#pragma mark - 创建单组tableView
- (instancetype)initPlainTableViewFrame:(CGRect)frame tableViewCell:(nullable id)cellClass reuseIdentifier:(NSString *)reuseIdentifier cellHeight:(CGFloat)cellHeight;
#pragma mark - 创建单组tableView Nib Cell
- (instancetype)initPlainNibTableViewFrame:(CGRect)frame tableViewCell:(nullable id)cellClass reuseIdentifier:(NSString *)reuseIdentifier cellHeight:(CGFloat)cellHeight;
#pragma mark - 创建多组tableView
- (instancetype)initGroupTableViewFrame:(CGRect)frame tableViewCell:(nullable id)cellClass reuseIdentifier:(NSString *)reuseIdentifier cellHeight:(CGFloat)cellHeight;

#pragma mark -
@property (nonatomic,strong) UITableView *tableView;
#pragma mark - 刷新tableView
- (void)hh_reloadData;

/**
 分析：需要回到的数据，属性
 
 数量     ： 分组数，行数
 高度     ： cell高度，headerView 高度 ， footerView 高度
 视图     ： 头视图，脚视图 ， tableViewCell
 点击     ： tableViewCell 选中点击事件代理方法
 其他
 */

/**
 数量
 */
typedef NSInteger (^HH_numberOfSection)(UITableView *tableView);
typedef NSInteger (^HH_numberOfRow)(UITableView *tableView,NSInteger section);

/**
 高度
 */
typedef CGFloat (^HH_heightForCell)(UITableView *tableView,NSIndexPath *indexPath);
typedef CGFloat (^HH_heightForHeader)(UITableView *tableView,NSInteger section);
typedef CGFloat (^HH_heightForFooter)(UITableView *tableView,NSInteger section);
/**
 视图
 */
typedef void (^HH_viewForCell)(UITableView *tableView,UITableViewCell *cell,NSIndexPath *indexPath);
typedef UIView *_Nullable(^HH_viewForHeader)(UITableView *tableView,NSInteger section);
typedef UIView *_Nullable(^HH_viewForFooter)(UITableView *tableView,NSInteger section);
/**
 cell点击
 */
typedef void (^HH_didSelectRowAtIndexPath)(UITableView *tableView,NSIndexPath *indexPath);


//////////
/**
 头视图
 */
@property (nonatomic,copy,readonly) HHTableView *(^hh_viewForHeader)(HH_viewForHeader block) ;
@property (nonatomic,copy,readonly) HHTableView *(^hh_heightForHeader)(HH_heightForHeader block);

/**
 脚视图
 */
@property (nonatomic,copy,readonly) HHTableView *(^hh_heightForFooter)(HH_heightForFooter block);
@property (nonatomic,copy,readonly) HHTableView *(^hh_viewForFooter)(HH_viewForFooter block);
/**
 cell视图
 */
@property (nonatomic,copy,readonly) HHTableView *(^hh_numberOfSection)(HH_numberOfSection block);
@property (nonatomic,copy,readonly) HHTableView *(^hh_numberOfRow)(HH_numberOfRow block);
@property (nonatomic,copy,readonly) HHTableView *(^hh_heightForCell)(HH_heightForCell block);
@property (nonatomic,copy,readonly) HHTableView *(^hh_viewForCell)(HH_viewForCell block);
// cell row点击
@property(nonatomic,copy,readonly)  HHTableView *(^hh_didSelectRowAtIndexPath)(HH_didSelectRowAtIndexPath block);




@end

NS_ASSUME_NONNULL_END
