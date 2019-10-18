#import "FlutterPlugin05Plugin.h"
#import <flutter_plugin05/flutter_plugin05-Swift.h>

@implementation FlutterPlugin05Plugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterPlugin05Plugin registerWithRegistrar:registrar];
}
@end
