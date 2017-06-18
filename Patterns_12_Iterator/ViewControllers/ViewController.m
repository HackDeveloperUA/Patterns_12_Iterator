//
//  ViewController.m
//  Patterns_12_Iterator
//
//  Created by Uber on 17/06/2017.
//  Copyright © 2017 Uber. All rights reserved.
//

#import "ViewController.h"


// Models
#import "ShopWareHouse.h"
#import "BasicEnumerator.h"

#import "GoodItemsEnumerator.h"
#import "BadItemsEnumerator.h"

#import "ItemInShop.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


   ShopWareHouse* shopWarehouse = [ShopWareHouse new];
    
    [shopWarehouse addItem:[[ItemInShop alloc]initWithArgs:@"Item1" andQaulity:NO]];
    [shopWarehouse addItem:[[ItemInShop alloc]initWithArgs:@"Item2" andQaulity:NO]];
    
    [shopWarehouse addItem:[[ItemInShop alloc]initWithArgs:@"Item3" andQaulity:YES]];
    [shopWarehouse addItem:[[ItemInShop alloc]initWithArgs:@"Item4" andQaulity:YES]];
    [shopWarehouse addItem:[[ItemInShop alloc]initWithArgs:@"Item5" andQaulity:NO]];

    
    GoodItemsEnumerator *goodIterator = [shopWarehouse getGoodItemsEnumerator];
    BadItemsEnumerator *badIterator = [shopWarehouse getBrokenItemsEnumerator];
    
    ItemInShop *element;
    
    while (element = [goodIterator nextObject]) {
        NSLog(@"Good Item = %@", element.name);
    }
    
    while (element = [badIterator nextObject]) {
        NSLog(@"Bad Item = %@", element.name);
    }

    
    // Пример 1
    NSArray* internallArrayCollection = @[@"Item1", @"Item2", @"Item3", @"Item4", @"Dima"];
    
    NSEnumerator *enumerator = [internallArrayCollection objectEnumerator];
    NSString* elementString;
    
    while (elementString = [enumerator nextObject]) {
        NSLog(@"%@",elementString);
    }
    
    //////
    
    // Пример 2
    [internallArrayCollection enumerateObjectsUsingBlock: ^(id obj, NSUInteger idx, BOOL *stop) {
        if([obj localizedCaseInsensitiveCompare:@"Dima"] == NSOrderedSame)
        {
            NSLog(@"Dima has been found!"); *stop = YES;
        }
    }];
    
}



@end
