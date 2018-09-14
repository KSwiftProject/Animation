//
//  ViewController.swift
//  Animation
//
//  Created by Khai Lee on 9/9/18.
//  Copyright © 2018 Khai Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var tap: UIButton!
    
    var imageView: UIImageView!
    var currentAnimation = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imageView = UIImageView(image: UIImage(named: "penguin"))
        imageView.center = CGPoint(x: 512, y: 384)
        view.addSubview(imageView)
    }
    
    @IBAction func tapped(_ sender: Any) {
        tap.isHidden = true
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 5, options: [],
                       animations: { [unowned self] in
                        switch self.currentAnimation {
                        case 0:
                            self.imageView.transform = CGAffineTransform(scaleX: 2, y: 2)
                            break
                            
                        case 1:
                            self.imageView.transform = CGAffineTransform.identity
                            break
                            
                        case 2:
                            self.imageView.transform = CGAffineTransform(translationX: -256, y: -256)
                            break
                            
                        case 3:
                            self.imageView.transform = CGAffineTransform.identity
                            break
                            
                        case 4:
                            self.imageView.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
                            break
                            
                        case 5:
                            self.imageView.transform = CGAffineTransform.identity
                            break
                            
                        case 6:
                            self.imageView.alpha = 0.1
                            self.imageView.backgroundColor = UIColor.green
                            break
                            
                        case 7:
                            self.imageView.alpha = 1
                            self.imageView.backgroundColor = UIColor.clear
                            break
                            
                        default:
                            break
                        }
        }) { [unowned self] (finished: Bool) in
            self.tap.isHidden = false
        }
        
        currentAnimation += 1
        
        if currentAnimation > 7 {
            currentAnimation = 0
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

