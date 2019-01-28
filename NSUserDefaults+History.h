//
//  NSUserDefaults+History.h
//  Tethering
//
//  Created by shock on 28/01/2019.
//

#import <Foundation/Foundation.h>

@interface NSUserDefaults (History)

+(void) saveStream:(NSInteger)up down:(NSInteger)down;

@end
