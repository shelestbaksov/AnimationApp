//
//  Animation.swift
//  AnimationApp
//
//  Created by Leysan Latypova on 31.01.2022.
//

struct Animation {
    let name: String
    let force: Float
    let duration: Float
    
    var description: String {
        """
        name: \(name)
        force: \(force)
        duration: \(duration)
        """
    }
    
    static func getRandomAnimation() -> Animation {
        Animation (
            name: DataManager.shared.animations.randomElement()?.rawValue ?? "shake",
            force: Float.random(in: 0...2),
            duration: Float.random(in: 0...3)
        )
    }
}
