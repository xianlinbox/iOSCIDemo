//
//  CaculatorTest.m
//  LighterViewControllerDemo
//
//  Created by lincoln.liu on 7/18/13.
//  Copyright (c) 2013 xianlinbox. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Caculator.h"
@interface CaculatorTest : GHTestCase

@end

@implementation CaculatorTest

-(void)testAdd{
    Caculator *cal = [[Caculator alloc] init];
    int expect = [cal addNumber:10 number:20];
    
    assertThatInt(expect, equalToInt(30));
}
@end
