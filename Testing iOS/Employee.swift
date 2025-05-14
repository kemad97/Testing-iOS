//
//  Employee.swift
//  Testing iOS
//
//  Created by Kerolos on 14/05/2025.
//

import Foundation

class Employee {
    
    
    var name : String
    var grossSalary : Int!
    var deductionsPersentage : Int = 0
    var netSalary : Float = 0.0
    var annualNetSalary : Float = 0.0
    var minAnnualNetSalary : Float = 50_000
    var maxAnnualNetSalary : Float = 150_000
    
    
    init(name : String) {
        self.name = name
    }
    func calcNetSalary(){
        
        guard let gross = grossSalary else{
            
            return
        }
        
        switch gross {
        case 5_000..<10_000:
            deductionsPersentage = 5
        case 10_000..<20_000:
            deductionsPersentage = 10
        case 20_000..<30_000:
            deductionsPersentage = 15
        default:
            deductionsPersentage = 1
        }
        
        netSalary = Float(gross - ((gross * deductionsPersentage) / 100))
        annualNetSalary = netSalary * 12
        
    }
    
}
