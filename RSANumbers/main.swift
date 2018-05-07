//
//  main.swift
//  RSANumbers
//
//  Created by Gordon, Russell on 2018-04-04.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

//========================================================INPUT=========================================================\\
// Collect and filter user input here

// Ensure input is valid
var lowerLimit = 0

while 1 == 1 {
    
    print("Enter lower limit of range")
    
    // Make sure input is not nil
    guard let givenInput = readLine() else {
        continue
    }
    
    // Make sure input is an integer
    guard let givenLowerLimit = Int(givenInput) else {
        continue
    }
    
    // Make sure the lower limit is greater than 1
    if givenLowerLimit < 1 || givenLowerLimit > 1000 {
        continue
    }
    
    lowerLimit = givenLowerLimit
    break
}

var upperLimit = 0

while 1 == 1 {
    
    print("Enter upper limit of range")
    
    // Make sure input is not nil
    guard let givenInput = readLine() else {
        continue
    }
    
    // Make sure input is an integer
    guard let givenUpperLimit = Int(givenInput) else {
        continue
    }
    
    // Make sure the upper limit is greater than 1
    if givenUpperLimit > 1000 || givenUpperLimit < 1 {
        continue
    }
    
    upperLimit = givenUpperLimit
    break
}

//=======================================================PROCESS========================================================\\
// Implement the primary logic of the problem here
var totalRSAs = 0

// Find any RSA's in given range
for possibleRSA in lowerLimit...upperLimit {
    
    var numberOfFactors = 0
    
    // Find factors of numbers
    for possibleFactor in 1...possibleRSA {
        
        // Remainder of 0 means the number is a factor
        if possibleRSA % possibleFactor == 0 {
            
            numberOfFactors += 1
        }
    }
    
    // If the number of factors is equal to 4 add 1 count to the total amount of RSA's
    if numberOfFactors == 4 {
        totalRSAs += 1
    }
}

//=======================================================OUTPUT=========================================================\\
// Report results to the user here

print("The number of RSA numbers between \(lowerLimit) and \(upperLimit) is \(totalRSAs)")
