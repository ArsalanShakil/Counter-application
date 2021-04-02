//
//  CounterClass.swift
//  Task 1
//
//  Created by iosdev on 23.3.2021.
//
import Foundation

class Counter  {
    private(set) var value: Int
    let lower: Int
    let upper: Int
    
    init(_ from:Int = 0, to:Int = 10) {
        self.lower = from
        self.upper = to
        self.value = from
    }
    
    func inc(by:Int = 1) {
        if(self.value + by <= self.upper) {
            self.value += by
        }
    }
    
    func dec(by:Int = 1) {
        if(self.value - by >= self.lower) {
            self.value -= by
        }
    }
    
    
    
}
