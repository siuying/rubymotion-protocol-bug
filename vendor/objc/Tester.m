#import "Tester.h"
#import "MyProtocol.h"

@implementation Tester

+(BOOL) testObjectConformsToMyProtocol:(id)object {
  return [object conformsToProtocol:@protocol(MyProtocol)];
}

@end