//
//  MyResumeTests.m
//  MyResumeTests
//
//  Created by Prajakta Kulkarni on 04/06/16.
//  Copyright © 2016 Prajakta Kulkarni. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface MyResumeTests : XCTestCase

@end

@implementation MyResumeTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

-(void)testPassTest
{
    XCTAssertNil(nil,"");
}
-(void)testFailTest
{
    XCTAssertNil(nil,"");
}
- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
