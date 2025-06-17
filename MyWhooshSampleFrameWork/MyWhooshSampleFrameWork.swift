//
//  MyWhooshSampleFrameWork.swift
//  MyWhooshSampleFrameWork
//
//  Created by Uzair Shahzad on 16/06/2025.
//


public class MyWhooshSample {
    public init() {}
    
    public func sayHello(name: String) -> String {
        return logic(for: name)
    }
    
    public func sayCheese(name: String) -> String {
        return logic(for: name)
    }
    
    // Not visible to consumer
    private func logic(for name: String) -> String {
        return "Hello, \(name) 👋"
    }
}
