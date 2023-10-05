//
//  ViewController.swift
//  project15
//
//  Created by Vlad Klunduk on 05/10/2023.
//

import UIKit

class ViewController: UIViewController {
    
    var imageView: UIImageView!
    var currentAnimation = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView = UIImageView(image: UIImage(named: "penguin"))
        imageView.center = CGPoint(x: 230, y: 384)
        view.addSubview(imageView)
    }
    
    @IBAction func tapped(_ sender: UIButton) {
        sender.isHidden = true

        UIView.animate(withDuration: 1, delay: 0, animations: {
            switch self.currentAnimation {
            case 0: self.imageView.transform = CGAffineTransform(scaleX: 2, y: 2)
            case 1: self.imageView.transform = .identity
            case 2: self.imageView.transform = CGAffineTransform(translationX: -100, y: -100)
            case 3: self.imageView.transform = .identity
            case 4: self.imageView.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
            case 5: self.imageView.transform = .identity
            case 6:
                self.imageView.alpha = 0.1
                self.imageView.backgroundColor = .green
            case 7:
                self.imageView.alpha = 1
                self.imageView.backgroundColor = .clear
            default: break
            }
            
        }, completion: { _ in 
            sender.isHidden = false
        })
        
        currentAnimation += 1
        if currentAnimation > 7 {
            currentAnimation = 0
        }
    }
    
}

