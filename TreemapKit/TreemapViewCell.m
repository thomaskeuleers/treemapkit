#import "TreemapView.h"
#import "TreemapViewCell.h"
#import <QuartzCore/QuartzCore.h>

@implementation TreemapViewCell

#pragma mark -

- (id)initWithFrame:(CGRect)frame {
    if ((self = [super initWithFrame:frame])) {
        self.layer.borderWidth = 1.0;
        self.layer.borderColor = [[UIColor whiteColor] CGColor];

        self.textLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, frame.size.width - 4, 20)];
        self.textLabel.font = [UIFont boldSystemFontOfSize:20];
        self.textLabel.baselineAdjustment = UIBaselineAdjustmentAlignCenters;
        self.textLabel.textAlignment = NSTextAlignmentCenter;
        self.textLabel.textColor = [UIColor whiteColor];
        self.textLabel.backgroundColor = [UIColor clearColor];
        self.textLabel.lineBreakMode = NSLineBreakByCharWrapping;
        self.textLabel.adjustsFontSizeToFitWidth = YES;
        [self addSubview:self.textLabel];

        self.valueLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, frame.size.width - 4, 20)];
        self.valueLabel.font = [UIFont boldSystemFontOfSize:20];
        self.valueLabel.baselineAdjustment = UIBaselineAdjustmentAlignCenters;
        self.valueLabel.textAlignment = NSTextAlignmentCenter;
        self.valueLabel.textColor = [UIColor whiteColor];
        self.valueLabel.backgroundColor = [UIColor clearColor];
        self.valueLabel.lineBreakMode = NSLineBreakByCharWrapping;
        self.valueLabel.adjustsFontSizeToFitWidth = YES;
        [self addSubview:self.valueLabel];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];

    self.textLabel.frame = CGRectMake(0, self.frame.size.height / 2 - 10, self.frame.size.width, 20);
    self.valueLabel.frame = CGRectMake(0, self.frame.size.height / 2 + 10, self.frame.size.width, 20);
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    [super touchesEnded:touches withEvent:event];

    if (self.delegate && [self.delegate respondsToSelector:@selector(treemapViewCell:tapped:)]) {
        [self.delegate treemapViewCell:self tapped:self.index];
    }
}

@end
