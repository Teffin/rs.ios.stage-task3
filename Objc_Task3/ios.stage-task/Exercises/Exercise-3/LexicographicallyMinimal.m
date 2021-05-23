#import "LexicographicallyMinimal.h"

@interface LexicographicallyMinimal()

@property (nonatomic, strong) NSMutableString *resultString;

@end

@implementation LexicographicallyMinimal

-(NSString *)findLexicographicallyMinimalForString1:(NSString *)string1 andString2:(NSString *)string2 {
    NSMutableString *returnValue = [[NSMutableString alloc] init];
    long i = 0;
    long j = 0;
    long lenStr1 = string1.length;
    long lenStr2 = string2.length;
    
    while ((i + j) < (lenStr1 + lenStr2))
    {
        if ((i < lenStr1) && (j < lenStr2))
        {
            if ([string1 characterAtIndex:i] <= [string2 characterAtIndex:j])
            {
                [returnValue appendString:[NSString stringWithFormat:@"%C",[string1 characterAtIndex:i]]];
                i++;
            } else {
               [returnValue appendString:[NSString stringWithFormat:@"%C",[string2 characterAtIndex:j]]];
                j++;
            }
        } else if (i < lenStr1) {
            [returnValue appendString:[NSString stringWithFormat:@"%C",[string1 characterAtIndex:i]]];
            i++;
        } else if (j < lenStr2) {
            [returnValue appendString:[NSString stringWithFormat:@"%C",[string2 characterAtIndex:j]]];
            j++;
        } else {
            break ;
        }
    }
    return returnValue;
}
@end
