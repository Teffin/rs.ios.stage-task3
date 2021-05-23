#import "PlayersSeparator.h"

@implementation PlayersSeparator

- (NSInteger)dividePlayersIntoTeams:(NSArray<NSNumber *>*)ratingArray {
    long iIndex = 0;
    long jIndex;
    long kIndex;
    long returnValue = 0;
    long len = ratingArray.count;
    while (iIndex < len)
    {
        jIndex = iIndex + 1;
        while (jIndex < len)
        {
            kIndex = jIndex + 1;
            while (kIndex < len)
            {
                if ([ratingArray[iIndex] intValue] > [ratingArray[jIndex] intValue] && [ratingArray[jIndex] intValue] > [ratingArray[kIndex] intValue])
                {
                    returnValue++;
                } else if ([ratingArray[iIndex] intValue] < [ratingArray[jIndex] intValue] && [ratingArray[jIndex] intValue] < [ratingArray[kIndex] intValue])
                {
                    returnValue++;
                }
                kIndex++;
            }
            jIndex++;
        }
        iIndex++;
    }
    return (NSInteger)returnValue;
}

@end
