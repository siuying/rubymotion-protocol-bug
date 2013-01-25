#import <Foundation/Foundation.h>
#import "MyImpl.h"
#import "MyProtocol.h"

@interface Tester : NSObject
+(BOOL) testObjectConformsToMyProtocol:(id)object;
@end