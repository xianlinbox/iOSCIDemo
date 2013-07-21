//
//  BasicTest.m
//  LighterViewControllerDemo
//
//  Created by lincoln.liu on 7/21/13.
//  Copyright (c) 2013 xianlinbox. All rights reserved.
//

#import "BasicTest.h"
#import "OCMock/OCMock.h"

@implementation BasicTest

- (void)testSimpleHamcrestMatcher{
    NSString *actual = @"string";
    NSString *expect = @"string";
    assertThat(actual,equalTo(expect));
}

- (void)testSimpeMockPass{
    id mockObject = [OCMockObject mockForClass:NSString.class];
    [[[mockObject stub] andReturn:@"test"] lowercaseString];
    
    NSString * returnValue = [mockObject lowercaseString];
    assertThat(returnValue, equalTo(@"test"));
}

@end
