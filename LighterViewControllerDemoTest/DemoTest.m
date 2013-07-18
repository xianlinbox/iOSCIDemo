//
//  DemoTest.m
//  LighterViewControllerDemo
//
//  Created by lincoln.liu on 7/16/13.
//  Copyright (c) 2013 xianlinbox. All rights reserved.
//

#import <GHUnitIOS/GHUnit.h>
#import "OCMock/OCMock.h"

@interface DemoTest : GHTestCase

@end

@implementation DemoTest

- (void)testSimplePass{
    GHAssertEqualStrings(@"yes", @"yes", @"yes should equal to yes");
}

- (void)testSimpleFail{
    GHAssertFalse(true, @"Should be false");
}

- (void)testSimpeMockPass{
    id mockObject = [OCMockObject mockForClass:NSString.class];
    [[[mockObject stub] andReturn:@"test"] lowercaseString];
    
    NSString * returnValue = [mockObject lowercaseString];
    GHAssertEqualStrings(returnValue, @"test", @"%@ should equal to test");
}

- (void)testSimpleHamcrestMatcher{
    NSString *actual = @"string";
    NSString *expect = @"string";
    assertThat(actual,equalTo(expect));
}
@end
