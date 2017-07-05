//
//  NetWorkTestCase.swift
//  TestCase
//
//  Created by nisum on 7/5/17.
//  Copyright © 2017 Praveen. All rights reserved.
//

import XCTest
import TestCase

class NetWorkTestCase: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    override func tearDown() {
        super.tearDown()
    }
    func testAsyncNetworking() {
        
        let expectation = self.expectation(description: "Network")
        let networking = Networking(URL: NSURL(string: "http://www.nisum.com")!)
        networking.request { (data, response, error) -> Void in
            if let response = response as? NSHTTPURLResponse {
                XCTAssertEqual(response.statusCode, 200)
            } else {
                XCTFail("Request failed")
            }
            expectation.fulfill()
        }
        
        waitForExpectations(timeout: 5.0) { error in
            if let error = error {
                XCTFail("Connection timeout")
            }
        }
    }
    
}
