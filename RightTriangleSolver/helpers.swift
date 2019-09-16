//
//  helpers.swift
//  RightTriangleSolver
//
//  Created by admin on 9/5/19.
//  Copyright © 2019 admin. All rights reserved.
//

import Foundation

func GetMeasurements () {

    var numOfGoodMeasurements : Int = 0
    
    while numOfGoodMeasurements < 3 {
        //Grab the measurements
        print("Would you like to enter a (S)ide or an (A)ngle measurement?")
        if let inputType = readLine() {
            if inputType == "S" || inputType == "s" {
                // get a side measurement
                print("Enter side length, without a unit")
                if let currentMeasurement = readLine() {
                    if let side = Double(currentMeasurement) {
                        if side <= 0.0 {
                            print("Not a valid measurement, try again!")
                        } else {
                            print("Which side is this: a, b or c?")
                            if let choice = readLine() {
                                if choice == "a" {
                                    if calcSideA != 0.0 {
                                        print("You already entered that measurement!  Try again!")
                                    } else {
                                        calcSideA = side
                                        print("You entered a side length, a = \(calcSideA)")
                                        numOfGoodMeasurements += 1
                                        numOfSides += 1
                                    }
                                } else if choice == "b" {
                                    if calcSideB != 0.0 {
                                        print("You already entered that measurement!  Try Again!")
                                    } else {
                                        calcSideB = side
                                        print("You entered a side length, b = \(calcSideB)")
                                        numOfGoodMeasurements += 1
                                        numOfSides += 1
                                    }
                                } else if choice == "c" {
                                    if calcSideC != 0.0 {
                                        print("You already entered that measurement!  Try Again!")
                                    } else {
                                        calcSideC = side
                                        print("You entered a side length, c = \(calcSideC)")
                                        numOfGoodMeasurements += 1
                                        numOfSides += 1
                                    }
                                } else {
                                    print("Invalid input, try again!")
                                }
                            }
                        }
                    } else {
                        print("That input was invalid, try again!")
                    }
                }
            } else if inputType == "A" || inputType == "a" {
                print("Enter an Angle measure (in degrees)")
                if let currentMeasurement = readLine() {
                    if var angle = Double(currentMeasurement) {
                        if angle <= 0.0 && angle >= 180 {
                            print("Not a valid measurement, try again!.")
                        } else {
                            angle *= pi / 180
                            print("Which angle is this: A, B or C?")
                            if let choice = readLine() {
                                if choice == "A" {
                                    if calcAngleA != 0.0 {
                                        print("You already entered that measurement!")
                                    } else {
                                        calcAngleA = angle
                                        print("You entered an angle, A = \(calcAngleA)")
                                        numOfGoodMeasurements += 1
                                        numOfAngles += 1
                                    }
                                } else if choice == "B" {
                                    if calcAngleB != 0.0 {
                                        print("You already entered that measurement!")
                                    } else {
                                        calcAngleB = angle
                                        print("You entered an angle, B = \(calcAngleB)")
                                        numOfGoodMeasurements += 1
                                        numOfAngles += 1
                                    }
                                } else if choice == "C" {
                                    if calcAngleC != 0.0 {
                                        print("You already entered that measurement!")
                                    } else {
                                        calcAngleC = angle
                                        print("You entered an angle, C = \(calcAngleC)")
                                        numOfGoodMeasurements += 1
                                        numOfAngles += 1
                                    }
                                } else {
                                    print("Invalid input, try again!")
                                }
                            }
                        }
                    } else {
                        print("That input was invalid, try again!")
                    }
                }
            } else {
                
                print("Something went wrong, try again!")
            }
        }
    }
}



