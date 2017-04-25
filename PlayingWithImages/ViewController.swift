//
//  ViewController.swift
//  PlayingWithImages
//
//  Created by Susan Zheng on 8/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    let tapRecoginizer = UITapGestureRecognizer()
    var blurred = false
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        imageView.image = UIImage.init(named: "ivbjio8") //or whatever the image is named
        imageView.isUserInteractionEnabled = true
        
        tapRecoginizer.addTarget(self, action: #selector(ViewController.isItBlurred(_:)))
        imageView.addGestureRecognizer(tapRecoginizer)
        
    }
    
    func tappedView()
    {
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.light)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = imageView.frame
        self.imageView.addSubview(blurEffectView)
    
    }

    func unBlurred()
    {
        imageView.image = UIImage.init(named: "ivbjio8")
    }
    func isItBlurred(_ blurred: Bool)
    {
        if blurred == false
        {
            tappedView()
            var meh : Bool = true

        }
        else if blurred == true
        {
            unBlurred()
        }
    }
}

