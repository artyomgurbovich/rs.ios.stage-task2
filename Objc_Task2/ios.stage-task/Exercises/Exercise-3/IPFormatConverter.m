#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    if (numbersArray == NULL || [numbersArray count] < 1) {
        return @"";
    }
    NSMutableArray *array = [NSMutableArray arrayWithArray: numbersArray];
    while ([array count] < 4) [array addObject: [NSNumber numberWithInt:0]];
    while ([array count] > 4) [array removeLastObject];
    for (int i = 0; i < 4; i++) {
        if ([[array objectAtIndex:(NSInteger)i] intValue] > 255) {
            return @"The numbers in the input array can be in the range from 0 to 255.";
        } else if ([[array objectAtIndex:(NSInteger)i] intValue] < 0) {
            return @"Negative numbers are not valid for input.";
        }
    }
    return [[array valueForKey:@"description"] componentsJoinedByString:@"."];;
}

@end
