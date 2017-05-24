//
//  PizzaStore.m
//  pizza
//
//  Created by wdwk on 2017/5/24.
//  Copyright © 2017年 wksc. All rights reserved.
//

#import "PizzaStore.h"

@implementation PizzaStore

-(Pizza *)orderPizza:(NSString *)type{
    Pizza *pizza=[self createPizza:type];
    [pizza prepare];
    [pizza bake];
    [pizza cut];
    [pizza box];
    NSLog(@"%@",[NSString stringWithFormat:@"%@风味pizza",self]);
    return pizza;
}
@end
