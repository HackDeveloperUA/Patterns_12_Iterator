//
//  ItemInShop.m
//  Patterns_12_Iterator
//
//  Created by Uber on 17/06/2017.
//  Copyright © 2017 Uber. All rights reserved.
//

#import "ItemInShop.h"

@implementation ItemInShop

-(instancetype) initWithArgs:(NSString*)aName andQaulity:(BOOL) isBroken
{
    self = [super init];
    if (self) {
        self.name = aName;
        self.isBroken = isBroken;
    }
    return self;
}

@end
