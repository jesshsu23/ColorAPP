//
//  ViewController.swift
//  Color
//
//  Created by Jess Hsu on 2021/8/30.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var coupleImageView: UIImageView!
    
    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var alphaSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func changeColor(_ sender: Any) {
        coupleImageView.backgroundColor = UIColor(red:
        CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue:
        CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
    }

    @IBAction func randomColor(_ sender: Any) {
        redSlider.value = Float.random(in: 0...1)
        greenSlider.value = Float.random(in: 0...1)
        blueSlider.value = Float.random(in: 0...1)
        alphaSlider.value = Float.random(in: 0.5...1)

        coupleImageView.backgroundColor = UIColor(red:
        CGFloat(redSlider.value), green: CGFloat(greenSlider.value),
        blue: CGFloat(blueSlider.value), alpha:
        CGFloat(alphaSlider.value))
    }
}

