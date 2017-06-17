//
//  ItemInShop.h
//  Patterns_12_Iterator
//
//  Created by Uber on 17/06/2017.
//  Copyright © 2017 Uber. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ItemInShop : NSObject

@property (nonatomic, strong) NSString* name;
@property (nonatomic, assign) BOOL isBroken;


-(instancetype) initWithArgs:(NSString*)aName andQaulity:(BOOL) isBroken;

@end
