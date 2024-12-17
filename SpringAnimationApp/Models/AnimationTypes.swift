//
//  AnimationTypes.swift
//  SpringAnimationApp
//
//  Created by Артем Иванов on 14.12.2024.
//

struct AnimationTypes: CustomStringConvertible {
    
    let name: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
        """
         preset: \(name)
         curve: \(curve)
         force: \(String(format: "%.02f", force))
         duration: \(String(format: "%.02f", duration))
         delay: \(String(format: "%02f", delay))
        
        """
    }
    
    static var randomAnimation: AnimationTypes {
        AnimationTypes(
            name: DataStore.available.animationTypes.randomElement()?.rawValue ?? "pop",
            curve: DataStore.available.curveTypes.randomElement()?.rawValue ?? "linear",
            force: Double.random(in: 1...1.5),
            duration: Double.random(in: 0.5...1.5),
            delay: 0.7
        )
    }
}
