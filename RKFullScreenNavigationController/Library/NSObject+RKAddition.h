//
//  NSObject+RKAddition.h
//  RKFullScreenNavigationController
//
//  Created by mac on 20/08/18.
//

#import <Foundation/Foundation.h>

@interface NSObject (RKAddition)

- (id)rk_AssociativeObjectForKey:(NSString *)key;

- (void)rk_RemoveAssociatedObjectForKey:(NSString *)key;

- (void)rk_SetAssociativeObject:(id)object forKey:(NSString *)key;

@end
