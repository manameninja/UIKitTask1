//
//  ViewController.swift
//  UIKitTask1
//
//  Created by Даниил Павленко on 02.04.2024.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet weak var gradientView: UIView!
    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupShadow()
        setupRoundedGradient()
    }
    
    //MARK: - Methods
    func setupShadow() {
        gradientView.layer.shadowColor = UIColor.black.cgColor
        gradientView.layer.shadowOffset = CGSize(width: 2.5, height: 2.5)
        gradientView.layer.shadowOpacity = 0.5
        gradientView.layer.shadowRadius = 7
    }
    
    func setupRoundedGradient() {
        let gradient = CAGradientLayer()
        let firstColor = UIColor.systemCyan.cgColor
        let secondColor = UIColor.systemRed.cgColor
        
        gradient.colors = [firstColor, secondColor]
        gradient.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradient.endPoint = CGPoint(x: 1.0, y: 0.6)
        
        // Закругление view и слоя с градиентом
        gradientView.layer.cornerRadius = 10
        gradient.cornerRadius = 10
        
        gradient.frame = gradientView.bounds
        gradientView.layer.addSublayer(gradient)
    }
}
