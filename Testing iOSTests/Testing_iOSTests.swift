//
//  Testing_iOSTests.swift
//  Testing iOSTests
//
//  Created by Kerolos on 14/05/2025.
//

import XCTest
@testable import Testing_iOS

final class Testing_iOSTests: XCTestCase {
    
    var userValid:User?
    var userNil:User?
    var userNotValid:User?
    
    
    
    override func setUp()  {
        super.setUp()
        userValid=User(username: "Kerolos", password: "123456")
        userNotValid=User(username: "ker", password: "123")
        
        
    }
    
    override func tearDown()  {
        userValid=nil
        userEmpty=nil
        userNotValid=nil
        super.tearDown()
        
    }
    
    func testValidAuth(){
        guard let user = userValid else {
            return
        }
        XCTAssertTrue(user.authenticate(),"User is validd")
    }
    
    func testInvalidUser () {
        guard let user = userNotValid else {
            return
        }
        XCTAssertFalse( user.authenticate(),"User is validd")
    }
    
    func testUserEmp() {
        
        guard let user = userNil else {
            XCTFail("user is nil")
            return
        }
        XCTAssertTrue(user.authenticate(),"User is validd")

        
    }
    
    func testUserName() {
           guard let user = userValid else {
               return
           }
           XCTAssertEqual(user.username, "Kerolos" )
        
       }
    
}
