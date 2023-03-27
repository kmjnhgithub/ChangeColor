//
//  ViewController.swift
//  ChangeColor
//
//  Created by mike liu on 2023/3/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    
    @IBOutlet weak var customRandomButton: UIButton!
    @IBOutlet weak var anyaImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customRandomButton.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }

    @IBAction func changeColor(_ sender: UISlider) {

        anyaImageView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
    }
    
    
    @IBAction func randomButton(_ sender: UIButton) {
        redSlider.value = Float.random(in: 0...1)
        greenSlider.value = Float.random(in: 0...1)
        blueSlider.value = Float.random(in: 0...1)
        alphaSlider.value = Float.random(in: 0...1)
        anyaImageView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: CGFloat(alphaSlider.value)
        )
    }
    
}

