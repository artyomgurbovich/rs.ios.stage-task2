#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    NSMutableString *str = [NSMutableString stringWithFormat:@""];
    for(NSInteger numberCopy = n; numberCopy > 0; numberCopy >>= 1) [str insertString:((numberCopy & 1) ? @"1" : @"0") atIndex:0];
    while([str length] < 8) str = (NSMutableString*)[@"0" stringByAppendingString: str];
    NSMutableString *reversedString = [NSMutableString string];
    NSInteger charIndex = [str length];
    while (charIndex > 0) {
        charIndex--;
        NSRange subStrRange = NSMakeRange(charIndex, 1);
        [reversedString appendString:[str substringWithRange:subStrRange]];
    }
    const char* utf8String = [reversedString UTF8String];
    char* endPtr = NULL;
    return strtol(utf8String, &endPtr, 2);
}
