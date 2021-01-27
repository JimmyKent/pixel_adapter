#import "PixelAdapterPlugin.h"
#if __has_include(<pixel_adapter/pixel_adapter-Swift.h>)
#import <pixel_adapter/pixel_adapter-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "pixel_adapter-Swift.h"
#endif

@implementation PixelAdapterPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPixelAdapterPlugin registerWithRegistrar:registrar];
}
@end
