
#import <UIKit/UIKit.h>

@interface UIView (FrameEx)

@property (nonatomic) CGFloat hm_x;

@property (nonatomic) CGFloat hm_y;

@property (nonatomic) CGFloat hm_bottom;

@property (nonatomic) CGFloat hm_right;

@property (nonatomic) CGFloat hm_centerX;

@property (nonatomic) CGFloat hm_centerY;

@property (nonatomic) CGFloat hm_width;

@property (nonatomic) CGFloat hm_height;

@property (nonatomic) CGPoint hm_origin;

@property (nonatomic) CGSize hm_size;


#pragma mark - Set Anchor Point
/**
 *  设置锚点
 *
 *  @param anchorPoint 锚点
 */
- (void)setAnchorPoint:(CGPoint)anchorPoint;

/**
 *  根据锚点设置位置
 *
 *  @param point       位置
 *  @param anchorPoint 锚点
 */
- (void)setPosition:(CGPoint)point atAnchorPoint:(CGPoint)anchorPoint;

@end
