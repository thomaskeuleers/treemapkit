#import "IPhoneSimpleDemoAppDelegate.h"
#import "IPhoneSimpleDemoViewController.h"

@implementation IPhoneSimpleDemoAppDelegate

@synthesize window;
@synthesize viewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];

	return YES;
}


@end
