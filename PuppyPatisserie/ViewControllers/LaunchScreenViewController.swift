//
//  LaunchScreenViewController.swift
//  PuppyPatisserie
//
//  Created by Madison Kaori Shino on 11/6/19.
//  Copyright © 2019 Madi S. All rights reserved.
//

import UIKit

class LaunchScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        checkDarkMode()
    }
    
    func checkDarkMode() {
        if self.traitCollection.userInterfaceStyle == .dark {
            view.backgroundColor = UIColor.black
        } else {
            view.backgroundColor = UIColor.white
        }
    }
}
