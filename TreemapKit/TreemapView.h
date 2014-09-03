#import <UIKit/UIKit.h>
#import "TreemapViewCell.h"

@protocol TreemapViewDataSource;
@protocol TreemapViewDelegate;

@interface TreemapView : UIView <TreemapViewCellDelegate>{
    BOOL initialized;
}

@property (nonatomic, weak) IBOutlet id <TreemapViewDataSource> dataSource;
@property (nonatomic, weak) IBOutlet id <TreemapViewDelegate> delegate;

- (void)reloadData;

@end

@protocol TreemapViewDelegate <NSObject>

@optional

- (void)treemapView:(TreemapView *)treemapView touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event;
- (void)treemapView:(TreemapView *)treemapView touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event;
- (void)treemapView:(TreemapView *)treemapView touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event;
- (void)treemapView:(TreemapView *)treemapView touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event;
- (void)treemapView:(TreemapView *)treemapView tapped:(NSInteger)index;
- (void)treemapView:(TreemapView *)treemapView updateCell:(TreemapViewCell *)cell forIndex:(NSInteger)index forRect:(CGRect)rect;

@end

@protocol TreemapViewDataSource <NSObject>

- (NSArray *)valuesForTreemapView:(TreemapView *)treemapView;
- (TreemapViewCell *)treemapView:(TreemapView *)treemapView cellForIndex:(NSInteger)index forRect:(CGRect)rect;

@optional

- (CGFloat)treemapView:(TreemapView *)treemapView separatorWidthForDepth:(NSInteger)depth;
- (NSInteger)treemapView:(TreemapView *)treemapView separationPositionForDepth:(NSInteger)depth;

@end
