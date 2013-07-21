//
//  CaculatorTest.m
//  LighterViewControllerDemo
//
//  Created by lincoln.liu on 7/21/13.
//  Copyright (c) 2013 xianlinbox. All rights reserved.
//

#import "CaculatorTest.h"

@implementation CaculatorTest


- (void)setUp
{
    [super setUp];
}

- (void)tearDown
{
    [super tearDown];
}

- (void)testAdd
{
    Caculator *caculator = [[Caculator alloc]init];
    assertThatInt([caculator addNumber1:10 Number2:20], equalToInt(30));
}


@end
