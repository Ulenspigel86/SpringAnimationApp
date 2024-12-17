//
//  SpringAnimationViewController.swift
//  SpringAnimationApp
//
//  Created by Артем Иванов on 14.12.2024.
//

import UIKit
import SpringAnimation

class SpringAnimationViewController: UIViewController {
    
    
    @IBOutlet var animationTypesView: SpringView!
    @IBOutlet var animationTypesLabel: SpringLabel! {
        didSet {
            animationTypesLabel.text = animation.description
        }
    }
    
    var animation = AnimationTypes.randomAnimation
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func startSpringAnimation(_ sender: UIButton) {
        animationTypesLabel.animation = "slideUp"
        animationTypesLabel.animate()
        animationTypesLabel.text = animation.description
        animationTypesLabel.animation = "slideDown"
        animationTypesLabel.animate()
            
        animationTypesView.animation = animation.name
        animationTypesView.curve = animation.curve
        animationTypesView.duration = animation.duration
        animationTypesView.force = animation.force
        animationTypesView.delay = animation.delay
        animationTypesView.animate()
            
        animation = AnimationTypes.randomAnimation
        sender.setTitle("Start \(animation.name)", for: .normal)
        }
    }


