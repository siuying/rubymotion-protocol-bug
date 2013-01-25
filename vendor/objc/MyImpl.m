#import "MyImpl.h"

@implementation MyImpl

- (NSString *)reuseIdentifier {
    return NSStringFromClass([self class]);
}

- (void)prepareForReuse {
}

@end