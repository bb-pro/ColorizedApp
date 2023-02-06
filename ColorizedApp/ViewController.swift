//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Bektemur on 06/02/23.
//

import UIKit

final class ViewController: UIViewController {
    
    //MARK: - IB Outlets
    @IBOutlet var redValue: UILabel!
    @IBOutlet var greenValue: UILabel!
    @IBOutlet var blueValue: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var sampleColor: UIView!
    
    //MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        sampleColor.layer.cornerRadius = 30
        updateColorValue()
        updateColor()
        
    }
    
    //MARK: - IB Actions
    @IBAction func redSliderChanged() {
        updateColorValue()
        updateColor()
    }
    
    @IBAction func greenSliderChanged() {
        updateColorValue()
        updateColor()
    }
    
    @IBAction func blueSliderChanged() {
        updateColorValue()
        updateColor()
    }
    
    //MARK: - Private Methods
    private func updateColor() {
        let colorResult = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
        sampleColor.backgroundColor = colorResult
    }
    
    private func updateColorValue() {
        redValue.text = String(format: "%.2f", redSlider.value)
        greenValue.text = String(format: "%.2f", greenSlider.value)
        blueValue.text = String(format: "%.2f", blueSlider.value)
    }
}

