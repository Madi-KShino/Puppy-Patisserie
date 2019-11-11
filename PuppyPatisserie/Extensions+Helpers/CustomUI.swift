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
