//
//  CaliforniaPizzaStore.m
//  pizza
//
//  Created by wdwk on 2017/5/24.
//  Copyright © 2017年 wksc. All rights reserved.
//

#import "CaliforniaPizzaStore.h"
#import "Veggiepizza.h"
#import "ClamPizza.h"
#import "PepperoniPizza.h"
#import "CheesePizza.h"
@implementation CaliforniaPizzaStore
-(Pizza *)createPizza:(NSString *)type{
    
    Pizza * pizza;
    if ([type isEqualToString:@"cheese"]) {
        pizza=[CheesePizza new];
    }
    else if ([type isEqualToString:@"clam"]){
        pizza=[ClamPizza new];
    }
    else if ([type isEqualToString:@"veggie"]){
        pizza=[Veggiepizza new];
    }
    else if ([type isEqualToString:@"pepperoni"]){
        pizza=[PepperoniPizza new];
    }
    return pizza;
    
}
@end
