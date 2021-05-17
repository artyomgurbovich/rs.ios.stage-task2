#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    int result = 0;
    for (int i = 0; i < [array count]; i++) {
        for (int j = 0; j < [array count]; j++) {
            if (i != j && [NSNumber numberWithInt:([[array objectAtIndex:(NSInteger)i] intValue] - [[array objectAtIndex:(NSInteger)j] intValue])] == number) {
                result += 1;
            }
        }
    }
    return (NSInteger) result;
}

@end
