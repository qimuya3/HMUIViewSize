
#import "UIView+FrameEx.h"

@implementation UIView (FrameEx)

- (CGFloat)hm_x {
	return self.frame.origin.x;
}

- (void)setHm_x:(CGFloat)x {
	CGRect frame = self.frame;
	frame.origin.x = x;
	self.frame = frame;
}

- (CGFloat)hm_y {
	return self.frame.origin.y;
}

- (void)setHm_y:(CGFloat)y {
	CGRect frame = self.frame;
	frame.origin.y = y;
	self.frame = frame;
}

- (CGFloat)hm_bottom {
    return self.frame.origin.y + self.frame.size.height;
}

- (void)setHm_bottom:(CGFloat)b {
    self.frame = CGRectMake(self.hm_x, b - self.hm_height, self.hm_width, self.hm_height);
}

- (CGFloat)hm_right {
    return self.frame.origin.x + self.frame.size.width;
}

- (void)setHm_right:(CGFloat)r {
    self.frame = CGRectMake(r - self.hm_width, self.hm_y, self.hm_width, self.hm_height);
}

- (CGFloat)hm_centerX
{
    return self.center.x;
}

- (void)setHm_centerX:(CGFloat)centerX
{
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
}

- (CGFloat)hm_centerY {
    return self.center.y;
}

- (void)setHm_centerY:(CGFloat)centerY {
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
}

- (CGFloat)hm_width {
    return self.frame.size.width;
}

- (void)setHm_width:(CGFloat)width {
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (CGFloat)hm_height {
    return self.frame.size.height;
}

- (void)setHm_height:(CGFloat)height {
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (CGPoint)hm_origin {
    return self.frame.origin;
}

- (void)setHm_origin:(CGPoint)origin {
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

- (CGSize)hm_size {
    return self.frame.size;
}

- (void)setHm_size:(CGSize)size {
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

#pragma mark - Set Anchor Point
/**
 *  设置锚点
 *
 *  @param anchorPoint 锚点
 */
- (void)setAnchorPoint:(CGPoint)anchorPoint
{
    [self setPosition:self.hm_origin atAnchorPoint:anchorPoint];
}

/**
 *  根据锚点设置位置
 *
 *  @param point       位置
 *  @param anchorPoint 锚点
 */
- (void)setPosition:(CGPoint)point atAnchorPoint:(CGPoint)anchorPoint
{
    CGFloat x = point.x - anchorPoint.x * self.hm_width;
    CGFloat y = point.y - anchorPoint.y * self.hm_height;
    [self setHm_origin:CGPointMake(x, y)];
}

@end
