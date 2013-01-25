#import <Foundation/Foundation.h>

@protocol MyProtocol <NSObject>

@property (nonatomic, readonly, copy) NSString *reuseIdentifier;

- (void)prepareForReuse;

@end
