//
//  NSObject+RKAddition.m
//  RKFullScreenNavigationController
//
//  Created by mac on 20/08/18.
//

#import "NSObject+RKAddition.h"
#import <objc/runtime.h>

@implementation NSObject (RKAddition)
static char associativeObjectsKey;

- (id)rk_AssociativeObjectForKey:(NSString *)key
{
    NSMutableDictionary *dict = objc_getAssociatedObject(self, &associativeObjectsKey);
    
    return [dict objectForKey:key];
}

- (void)rk_RemoveAssociatedObjectForKey:(NSString *)key
{
    NSMutableDictionary *dict = objc_getAssociatedObject(self, &associativeObjectsKey);
    
    [dict removeObjectForKey:key];
}

- (void)rk_SetAssociativeObject:(id)object forKey:(NSString *)key
{
    NSMutableDictionary *dict = objc_getAssociatedObject(self, &associativeObjectsKey);
    
    if (!dict) {
        dict = [NSMutableDictionary dictionary];
        objc_setAssociatedObject(self, &associativeObjectsKey, dict, OBJC_ASSOCIATION_RETAIN);
    }
    
    if (object == nil) {
        [dict removeObjectForKey:key];
    } else {
        [dict setObject:object forKey:key];
    }
}
@end
