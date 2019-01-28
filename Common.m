//
//  NSObject+Common.m
//  Tethering
//
//  Created by shock on 28/01/2019.
//

#import "Common.h"

@implementation Common

+ (NSString *)byteString:(NSInteger)value {
    NSInteger gb = 1024 * 1024 * 1024;
    NSInteger mb = 1024 * 1024;
    NSInteger kb = 1024;
    
    if (value > gb) {
        return [NSString stringWithFormat:@"%.1f GB", (double)value / (double)gb];
    }
    else if (value > mb) {
        return [NSString stringWithFormat:@"%.1f MB", (double)value / (double)mb];
    }
    else if (value > kb) {
        return [NSString stringWithFormat:@"%.1f KB", (double)value / (double)kb];
    }
    
    return [NSString stringWithFormat:@"%lu bytes", value];
}

@end
