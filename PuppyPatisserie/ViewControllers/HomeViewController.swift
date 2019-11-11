//
//  HomeViewController.swift
//  PuppyPatisserie
//
//  Created by Madison Kaori Shino on 11/7/19.
//  Copyright © 2019 Madi S. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    //Properties
    let user = User(name: "Madi")
    var gradientLayer: CAGradientLayer!
    
    //Outlets
    @IBOutlet weak var helloLabel: UILabel!
    @IBOutlet weak var sideMenuView: UIView!
    @IBOutlet weak var sideMenuButtonStack: UIStackView!
    
    //Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        createGradient()
        setViews()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    func setViews() {
        helloLabel.text = "Hello \(user.name)"
        sideMenuButtonStack.rotate()
        sideMenuButtonStack.updateConstraintsIfNeeded()
        view.bringSubviewToFront(sideMenuButtonStack)
    }
    
    func createGradient() {
        gradientLayer = CAGradientLayer()
        gradientLayer.frame = sideMenuView.bounds
        gradientLayer.colors = [offWhite.cgColor, orange.cgColor]
        sideMenuView.layer.addSublayer(gradientLayer)
    }
}
