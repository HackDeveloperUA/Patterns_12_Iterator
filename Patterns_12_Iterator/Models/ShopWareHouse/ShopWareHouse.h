//
//  ShopWareHouse.h
//  Patterns_12_Iterator
//
//  Created by Uber on 17/06/2017.
//  Copyright © 2017 Uber. All rights reserved.
//

#import <Foundation/Foundation.h>


// Enumerators
@class BasicEnumerator;
@class GoodItemsEnumerator;
@class BadItemsEnumerator;

// Models
#import "ItemInShop.h"

@interface ShopWareHouse : NSObject

@property (nonatomic, strong) NSMutableArray *goods;

@property (nonatomic, strong) GoodItemsEnumerator *goodItemsEnumerator;
@property (nonatomic, strong) BadItemsEnumerator *badItemsEnumerator;

-(void) addItem:(ItemInShop *)anItem;

-(NSEnumerator *) getBrokenItemsEnumerator;
-(NSEnumerator *) getGoodItemsEnumerator;

@end
