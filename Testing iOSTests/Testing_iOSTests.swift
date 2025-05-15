//
//  Testing_iOSTests.swift
//  Testing iOSTests
//
//  Created by Kerolos on 14/05/2025.
//

import XCTest
@testable import Testing_iOS

final class Testing_iOSTests: XCTestCase {
    
    var networkService: NetworkServiceProtocol!

    override func setUp() {
        super.setUp()
        networkService = NetworkService()
    }
    
    override func tearDown() {
        networkService = nil
        super.tearDown()
    }
    
    func testApi () {
        
        let exp = expectation(description: "Loading..")
        
        networkService.loadDate(url: "https://raw.githubusercontent.com/DevTides/NewsApi/master/news.json") {news, error in
            
            if error != nil {
                XCTFail()
            }else
            {
                XCTAssertEqual(news?.count, 20)
               exp.fulfill()
            }
        }
        waitForExpectations(timeout: 5)

        
    }
}
