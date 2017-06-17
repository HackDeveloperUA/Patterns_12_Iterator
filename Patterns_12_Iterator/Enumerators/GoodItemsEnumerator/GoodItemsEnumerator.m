//
//  GoodItemsEnumerator.m
//  Patterns_12_Iterator
//
//  Created by Uber on 17/06/2017.
//  Copyright © 2017 Uber. All rights reserved.
//

#import "GoodItemsEnumerator.h"

@implementation GoodItemsEnumerator


- (instancetype)initWithItems:(NSMutableArray *)anItems {
    
        self = [super init];
        if (self) {
            
            self.itemsArray = [[NSMutableArray alloc] init];
            for ( ItemInShop *item in anItems)
            {
                if (!item.isBroken)
                    [self.itemsArray addObject:item];
            }
            self.internalEnumerator = [self.itemsArray objectEnumerator];
        }
        return self;
}


    
-(NSArray *)allObjects {
    return self.itemsArray;
}

-(id) nextObject{
    return [self.internalEnumerator nextObject];
}

    
@end
