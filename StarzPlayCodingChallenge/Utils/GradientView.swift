//
//  GradientView.swift
//  StarzPlayCodingChallenge
//
//  Created by Ahmad on 30/03/2024.
//

import UIKit

@IBDesignable
class GradientView: UIView {
    
    @IBInspectable var startColor: UIColor = .black {
        didSet {
            updateGradient()
        }
    }
    
    @IBInspectable var endColor: UIColor = .clear {
        didSet {
            updateGradient()
        }
    }
    
    private let gradientLayer = CAGradientLayer()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer.frame = bounds
    }
    
    private func commonInit() {
        layer.addSublayer(gradientLayer)
        updateGradient()
    }
    
    private func updateGradient() {
        gradientLayer.colors = [startColor.cgColor, endColor.cgColor]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 0.0)
        setNeedsDisplay()
    }
}
