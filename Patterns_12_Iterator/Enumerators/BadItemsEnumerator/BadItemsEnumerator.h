//
//  BadItemsEnumerator.h
//  Patterns_12_Iterator
//
//  Created by Uber on 17/06/2017.
//  Copyright © 2017 Uber. All rights reserved.
//

#import "BasicEnumerator.h"


// Models
#import "ItemInShop.h"
#import "ShopWareHouse.h"

@interface BadItemsEnumerator : BasicEnumerator

@property (nonatomic, strong) NSMutableArray *itemsArray;
@property (nonatomic, strong) NSEnumerator *internalEnumerator;

@end
