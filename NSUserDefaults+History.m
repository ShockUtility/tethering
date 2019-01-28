//
//  NSUserDefaults+History.m
//  Tethering
//
//  Created by shock on 28/01/2019.
//

#import "NSUserDefaults+History.h"

@implementation NSUserDefaults (History)

+(void) saveStream:(NSInteger)up down:(NSInteger)down {
    double key = [NSDate date].timeIntervalSince1970;
    
    NSUserDefaults *def = [NSUserDefaults standardUserDefaults];
    [def setObject: [NSString stringWithFormat:@"%ld,%ld", (long)up, down]
            forKey: [NSString stringWithFormat:@"%f",key]];
    [def synchronize];
}

@end
