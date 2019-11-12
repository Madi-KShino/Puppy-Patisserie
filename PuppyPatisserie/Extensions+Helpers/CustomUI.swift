//
//  UIViewExtension.swift
//  PuppyPatisserie
//
//  Created by Madison Kaori Shino on 11/10/19.
//  Copyright © 2019 Madi S. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
     func rotate(by radians: CGFloat = (-CGFloat.pi/2)) {
        self.transform = CGAffineTransform(rotationAngle: radians)
     }
}

class PuppyButtons: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpUI()
    }
    
    func updateFontTo(fontName: String){
        guard let size = self.titleLabel?.font.pointSize else { return }
        self.titleLabel?.font = UIFont(name: fontName, size: size)!
    }
    
    func setUpUI() {
        self.updateFontTo(fontName: "Futura-Medium")
        checkDarkMode()
    }
    
    func checkDarkMode() {
        if self.traitCollection.userInterfaceStyle == .dark {
            self.setTitleColor(.black, for: .normal)
            self.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        } else {
            self.setTitleColor(.white, for: .normal)
            self.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
}

class PuppyLabel: UILabel {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpUI()
    }
    
    func updateFontTo(fontName: String){
        let size = self.font.pointSize
        self.font = UIFont(name: fontName, size: size)!
    }
    
    func setUpUI() {
        self.updateFontTo(fontName: "Futura-Bold")
        self.adjustsFontSizeToFitWidth = true
        self.minimumScaleFactor = 0.7
        checkDarkMode()
    }
    
    func checkDarkMode() {
        if self.traitCollection.userInterfaceStyle == .dark {
            self.textColor = taupe
        } else {
            self.textColor = orange
        }
    }
}

class GradientView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }

    private func setupView() {
        autoresizingMask = [.flexibleWidth, .flexibleHeight]

        guard let theLayer = self.layer as? CAGradientLayer else {
            return;
        }

        theLayer.colors = [offWhite.cgColor, orange.cgColor]
        theLayer.locations = [0.0, 1.0]
        theLayer.frame = self.bounds
    }

    override class var layerClass: AnyClass {
        return CAGradientLayer.self
    }
}
