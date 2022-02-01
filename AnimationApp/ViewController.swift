//
//  ViewController.swift
//  AnimationApp
//
//  Created by Leysan Latypova on 31.01.2022.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var animationDescriptionLabel: UILabel!
    
    var animation = Animation.getRandomAnimation()
        
    @IBAction func runAnimation(_ sender: UIButton) {
        animationDescriptionLabel.text = animation.description
        
        springAnimationView.animation = animation.name
        springAnimationView.force = CGFloat(animation.force)
        springAnimationView.duration = CGFloat(animation.duration)
        springAnimationView.animate()
        
        animation = Animation.getRandomAnimation()
        sender.setTitle("Run \(animation.name)", for: .normal)
    }
    
}

