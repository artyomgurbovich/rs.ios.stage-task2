#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    NSMutableArray<NSNumber *> * numbers = [NSMutableArray new];
    NSMutableArray<NSString *> * strings = [NSMutableArray new];
    for(int i = 0; i < [array count]; i++) {
        if (![[array objectAtIndex:(NSUInteger)i] isKindOfClass:[NSArray class]]) return @[];
        if ([[[array objectAtIndex:(NSUInteger)i] firstObject] isKindOfClass:[NSString class]]) {
            [strings addObjectsFromArray:[array objectAtIndex:(NSUInteger)i]];
        } else {
            [numbers addObjectsFromArray:[array objectAtIndex:(NSUInteger)i]];
        }
    }
    numbers = [numbers sortedArrayUsingSelector:@selector(compare:)];
    strings = [strings sortedArrayUsingSelector:@selector(compare:)];
    if ([numbers count] > 0 && [strings count] > 0) {
        return @[numbers, strings];
    } else if ([numbers count] > 0) {
        return numbers;
    } else if ([strings count] > 0) {
        return strings;
    }
    return @[];
}

@end
