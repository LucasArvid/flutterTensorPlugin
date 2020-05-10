#import "TensorflowexjobbPlugin.h"
#if __has_include(<tensorflowexjobb/tensorflowexjobb-Swift.h>)
#import <tensorflowexjobb/tensorflowexjobb-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "tensorflowexjobb-Swift.h"
#endif

@implementation TensorflowexjobbPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftTensorflowexjobbPlugin registerWithRegistrar:registrar];
}
@end
