#import "SplitScreenMenuPlugin.h"
#if __has_include(<split_screen_menu/split_screen_menu-Swift.h>)
#import <split_screen_menu/split_screen_menu-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "split_screen_menu-Swift.h"
#endif

@implementation SplitScreenMenuPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftSplitScreenMenuPlugin registerWithRegistrar:registrar];
}
@end
