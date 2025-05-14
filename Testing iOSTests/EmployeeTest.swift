//
//  EmployeeTest.swift
//  Testing iOSTests
//
//  Created by Kerolos on 14/05/2025.
//

import XCTest
@testable import Testing_iOS


final class EmployeeTest: XCTestCase {
   
    var employee : Employee?
    
    override func setUp() {
          super.setUp()
        employee = Employee (name: "Kerolos")
      }
      
      override func tearDown() {
          employee = nil
          super.tearDown()
      }
    
    func testAnnualSalary ()
    
    {
        guard let emp = employee else {
            XCTFail()
            return
        }
        emp.annualNetSalary=60000.0
        XCTAssertGreaterThan(emp.annualNetSalary, emp.minAnnualNetSalary)
        
        XCTAssertLessThan(emp.annualNetSalary, emp.maxAnnualNetSalary)

        
    }
    
    func testDeduction() {
        guard let emp = employee else {
            XCTFail()
            return
        }
        emp.grossSalary=5000
        emp.calcNetSalary()
        
        XCTAssertEqual(emp.deductionsPersentage, 5)
        
    }

}
