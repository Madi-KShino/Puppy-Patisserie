//
//  LoginViewController.swift
//  PuppyPatisserie
//
//  Created by Madison Kaori Shino on 11/6/19.
//  Copyright © 2019 Madi S. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    //Outlets
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signupButton: UIButton!
    @IBOutlet weak var backgroundView: UIView!
    
    //Lifecycle
    override func viewWillAppear(_ animated: Bool) {
        createGradient()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checkDarkMode()
        setupView()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func setupView() {
        loginButton.layer.cornerRadius = 22
        signupButton.layer.cornerRadius = 22
        loginButton.layer.borderWidth = 4
        signupButton.layer.borderWidth = 4
        backgroundView.layer.cornerRadius = 25
    }
    
    func createGradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [UIColor(hex: "#FFB284") as Any, UIColor(hex: "#E79796") as Any]
        backgroundView.layer.addSublayer(gradientLayer)
    }
    
    func checkDarkMode() {
        if self.traitCollection.userInterfaceStyle == .dark {
            view.backgroundColor = UIColor.black
            loginButton.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            signupButton.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            loginButton.setTitleColor(.black, for: .normal)
            signupButton.setTitleColor(.black, for: .normal)
        } else {
            view.backgroundColor = UIColor.white
            loginButton.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            signupButton.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            loginButton.setTitleColor(.white, for: .normal)
            signupButton.setTitleColor(.white, for: .normal)
        }
    }

}
