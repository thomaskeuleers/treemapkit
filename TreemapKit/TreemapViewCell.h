#import <UIKit/UIKit.h>

@protocol TreemapViewCellDelegate;

@interface TreemapViewCell : UIControl

@property (nonatomic, strong) UILabel *valueLabel;
@property (nonatomic, strong) UILabel *textLabel;
@property (nonatomic, assign) NSInteger index;

@property (nonatomic, weak) id <TreemapViewCellDelegate> delegate;

- (id)initWithFrame:(CGRect)frame;

@end

@protocol TreemapViewCellDelegate <NSObject>

@optional

- (void)treemapViewCell:(TreemapViewCell *)treemapViewCell tapped:(NSInteger)index;

@end
