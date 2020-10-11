//
//  ViewController.m
//  07抽象类和类簇
//
//  Created by Li_JinLin on 2020/9/27.
//  Copyright © 2020 Li_JinLin. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "Student.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Person * aPerson = [[Person alloc] init];
    aPerson.name = @"Jack";
    aPerson.age = 18;
    // 浅拷贝
    Person * bPerson = aPerson;
    bPerson.name = @"Tom";
    bPerson.age = 20;
    NSLog(@"A name: %@ age: %lu, B name: %@ age: %lu", aPerson.name, aPerson.age, bPerson.name, bPerson.age);
    
    // 深拷贝
    Person * cPerson = [aPerson copyWithZone:NULL];
    cPerson.name = @"John";
    cPerson.age = 24;
    NSLog(@"A name: %@ age: %lu, B name: %@ age: %lu, C name: %@, age: %lu", aPerson.name, aPerson.age, bPerson.name, bPerson.age, cPerson.name, cPerson.age);
    
    // 归档
    Student * stu = [[Student alloc] init];
    
    NSString * test = @"test";
    NSLog(@"propertyList: %@", [test propertyList]);
    NSMutableDictionary * mudic = [[NSMutableDictionary alloc] initWithObjectsAndKeys:@"test",@"testValue", nil];

}
- (void)play {
    NSLog(@"-->");
}
@end
