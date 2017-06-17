//
//  ShopWareHouse.m
//  Patterns_12_Iterator
//
//  Created by Uber on 17/06/2017.
//  Copyright © 2017 Uber. All rights reserved.
//

#import "ShopWareHouse.h"

#import "BasicEnumerator.h"
#import "GoodItemsEnumerator.h"
#import "BadItemsEnumerator.h"

@implementation ShopWareHouse



- (instancetype)init
{
    self = [super init];
    if (self) {
        self.goods = [[NSMutableArray alloc] init];
    }
    return self;
}


-(void) addItem:(ItemInShop *)anItem {
    [self.goods addObject:anItem];
}

-(NSEnumerator *) getBrokenItemsEnumerator {
    _badItemsEnumerator = [[BadItemsEnumerator alloc] initWithItems:_goods];
    return _badItemsEnumerator;
}
-(NSEnumerator *) getGoodItemsEnumerator {
    self.goodItemsEnumerator = [[GoodItemsEnumerator alloc] initWithItems:_goods];
    return self.goodItemsEnumerator;
}



@end
