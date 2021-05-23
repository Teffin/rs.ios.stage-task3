#import "DateHelper.h"

@implementation DateHelper

#pragma mark - First

-(NSString *)monthNameBy:(NSUInteger)monthNumber {
    if ((monthNumber > 0) && (monthNumber < 13))
    {
        
        NSDateFormatter *df = [[NSDateFormatter alloc] init];
        NSString *monthName = [[df monthSymbols] objectAtIndex:(monthNumber-1)];
        return monthName;
    }

    return nil;
}

#pragma mark - Second

- (long)dayFromDate:(NSString *)date {
    //NSISO8601DateFormatter *dateFormat = [[NSISO8601DateFormatter alloc] init];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZ"];
    NSDate *dateNS = [dateFormat dateFromString:date];
    
    NSDateComponents *dateComponents = [[NSCalendar currentCalendar] components: NSCalendarUnitDay fromDate: dateNS];

    return [dateComponents day];
}

#pragma mark - Third

- (NSString *)getDayName:(NSDate*) date {
    if (date == nil) {
        return nil;
    }
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    
    dateFormat.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"ru"];
    [dateFormat setDateFormat:@"EE"];

    NSString *week = [[dateFormat stringFromDate:date]capitalizedString];

    return week;
}

#pragma mark - Fourth

- (BOOL)isDateInThisWeek:(NSDate *)date {
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    calendar.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"ru"];
    
    NSDateComponents *dateNow = [calendar components:NSCalendarUnitWeekOfYear fromDate: [NSDate now]];
    NSDateComponents *dateIncome = [calendar components: NSCalendarUnitWeekOfYear fromDate: date];

    return [dateNow weekOfYear] == [dateIncome weekOfYear];
   
}

@end
