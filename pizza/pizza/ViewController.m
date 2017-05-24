//
//  ViewController.m
//  pizza
//
//  Created by wdwk on 2017/5/24.
//  Copyright © 2017年 wksc. All rights reserved.
//

#import "ViewController.h"
#import "PizzaStore.h"
#import "CHicagoPizzaStore.h"
#import "CaliforniaPizzaStore.h"
@interface ViewController ()

@end

@implementation ViewController
//简单工厂：定义一个类，将实例化对象的方法移到这个类中，封装起来；
//静态工厂：利用静态方法定义一个简单工厂；
//备注：简单工厂不是一个设计模式，它比较像一种编程习惯；
//工厂方法：用来处理对象的创建，并将这样的行为封装在子类中；
//工厂方法是抽象的，所以依赖子类来处理对象的创建
//所有的工厂模式都用来封装对象的创建
//工厂方法模式：定义了一个创建对象的接口，但由子类决定要实例化哪一个，工厂方法让类把实例化推迟到子类，（子类看起来有点像一个简单工厂；但是简单工厂不具备工厂方法等弹性，因为简单工厂不能变更正在创建的产品）；
//客户走到哪家店，就订购的哪个风味的！
//注意：利用字符串传入参数化的类型有点危险，万一把clam 英文拼错了，就会造成运行时错误，
//工厂的优点：1.将创建对象的代码集中在一个对象或方法中，可以避免代码中的重复，并且方便以后维护，这意味着客户在实例化对象时，只会依赖于接口，而不是具体类，这让代码更具有弹性，可以应对未来的扩展；
//设计原则：要依赖抽象不要依赖具体类；这个原则听起来很像：“针对接口编程，不针对实现编程”，但这里更强调“抽象”这个原则说明了：不能让高层组件依赖低层组件，而且不管高层或低层组件，两者都应该依赖于抽象（pizzStore高层组件，pizza 低层组件）
- (void)viewDidLoad {
    [super viewDidLoad];
    //第一种芝加哥fengwei的pizza;
    PizzaStore * pizzaStore=[CHicagoPizzaStore new];
    [pizzaStore orderPizza:@"clam"];
    //第二种加州fengwei的pizza;
    PizzaStore * pizzaStore1=[CHicagoPizzaStore new];
    [pizzaStore1 orderPizza:@"clam"];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
