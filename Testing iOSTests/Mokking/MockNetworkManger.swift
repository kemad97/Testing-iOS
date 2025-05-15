//
//  MockNetworkManger.swift
//  Testing iOSTests
//
//  Created by Kerolos on 15/05/2025.
//

import XCTest

class MokkeNetworkManager: XCTestCase {
    
    var fakeNetwork = FakeNetwork(isReturnError: false)

    func testData() {
        
        fakeNetwork.loadDate(url: " ") {new, error in
            
            if (error != nil) {
                XCTFail()
            } else {
                XCTAssertNotNil(new)
            }
            
        }
    }
}
