//
//  Dice_Rolling.swift
//  Dice Rolling
//
//  Created by Nicholas MacCloy on 15/08/2020.
//  Copyright © 2020 Nicholas MacCloy. All rights reserved.
//

class DiceRolling {
    var total = 0
    
    func addModifier(number: Int) {
        total += number
    }
    
    func subtractModifier(number: Int) {
        total -= number
    }
    
    func addRoll(number: Int, sides: Int) {
        total += dCustom(number: number, sides: sides, modifier: 0)
    }
    
    func subtractRoll(number: Int, sides: Int) {
        total -= dCustom(number: number, sides: sides, modifier: 0)
    }
    
    func reset() {
        total = 0
    }
    
    // Utility functions
    func random(minimum: Int, maximum: Int) -> Int {
        let number = Int.random(in: 0...10)
        return number
    }
    
    func roll(sides: Int) -> Int {
        let result = random(minimum: 1, maximum: sides)
        return result
    }
    
    // Standard die types
    func d4(number: Int, modifier: Int) -> Int {
        
        var result = 0
        
        for _ in 1...number {
            let rollResult = roll(sides: 4)
            result += rollResult
        }
        
        result += modifier
        
        return result
    }
    
    func d6(number: Int, modifier: Int)  -> Int {
        
        var result = 0
        
        for _ in 1...number {
            let rollResult = roll(sides: 6)
            result += rollResult
        }
        
        result += modifier
        
        return result
    }
    
    func d8(number: Int, modifier: Int)  -> Int {
        
        var result = 0
        
        for _ in 1...number {
            let rollResult = roll(sides: 8)
            result += rollResult
        }
        
        result += modifier
        
        return result
    }
    
    func d10(number: Int, modifier: Int)  -> Int {
        
        var result = 0
        
        for _ in 1...number {
            let rollResult = roll(sides: 10)
            result += rollResult
        }
        
        result += modifier
        
        return result
    }
    
    func d12(number: Int, modifier: Int)  -> Int {
        
        var result = 0
        
        for _ in 1...number {
            let rollResult = roll(sides: 12)
            result += rollResult
        }
        
        result += modifier
        
        return result
    }
    
    
    func d20(number: Int, modifier: Int)  -> Int {
        
        var result = 0
        
        for _ in 1...number {
            let rollResult = roll(sides: 20)
            result += rollResult
        }
        
        result += modifier
        
        return result
    }
    
    func d100(number: Int, modifier: Int)  -> Int {
        
        var result = 0
        
        for _ in 1...number {
            let rollResult = roll(sides: 100)
            result += rollResult
        }
        
        result += modifier
        
        return result
    }
    
    // Custom die type
    func dCustom(number: Int, sides: Int, modifier: Int)  -> Int {
        
        var result = 0
        
        for _ in 1...number {
            let rollResult = roll(sides: sides)
            result += rollResult
        }
        
        result += modifier
        
        return result
    }
    
    
}
