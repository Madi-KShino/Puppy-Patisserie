//
//  LoginViewController.swift
//  PuppyPatisserie
//
//  Created by Madison Kaori Shino on 11/6/19.
//  Copyright © 2019 Madi S. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    //Colors
    let gray = hexStringToUIColor(hex: "#30333A")
    let orange = hexStringToUIColor(hex: "#E06641")
    let pink = hexStringToUIColor(hex: "#F298AB")
    let white = hexStringToUIColor(hex: "#F6EEDA")
    let taupe = hexStringToUIColor(hex: "#B4BE57")
    var gradientLayer: CAGradientLayer!
    var hasAccount = false
    
    //Outlets
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signupButton: UIButton!
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var toggleButtton: UIButton!
    
    //Lifecycle
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        createGradient()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checkDarkMode()
        setupView()
        toggleAccountStatus()
    }
    
    //Actions
    @IBAction func toggleButtonTapped(_ sender: Any) {
        if hasAccount {
            hasAccount = false
            UIView.animate(withDuration: 0.5) {
                self.confirmTextField.alpha = 1
                self.signupButton.alpha = 1
                self.loginButton.alpha = 0
                self.confirmTextField.isHidden = false
                self.signupButton.isHidden = false
                self.loginButton.isHidden = true
                self.toggleButtton.setTitle("Sign In", for: .normal)
            }
        } else {
            hasAccount = true
            UIView.animate(withDuration: 0.5) {
                self.confirmTextField.alpha = 0
                self.signupButton.alpha = 0
                self.loginButton.alpha = 1
                self.confirmTextField.isHidden = true
                self.signupButton.isHidden = true
                self.loginButton.isHidden = false
                self.toggleButtton.setTitle("Create Account", for: .normal)
            }
        }
    }
    
    @IBAction func loginButtonTapped(_ sender: Any) {
    }
    
    @IBAction func signUpButtonTapped(_ sender: Any) {
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    
    //Helper Fnctions
    func setupView() {
        loginButton.layer.cornerRadius = 22
        signupButton.layer.cornerRadius = 22
        loginButton.layer.borderWidth = 4
        signupButton.layer.borderWidth = 4
        backgroundView.layer.cornerRadius = 25
    }
    
    func createGradient() {
        gradientLayer = CAGradientLayer()
        gradientLayer.frame = backgroundView.bounds
        gradientLayer.colors = [white.cgColor, orange.cgColor]
        gradientLayer.cornerRadius = 25
        backgroundView.layer.addSublayer(gradientLayer)
    }
    
    func toggleAccountStatus() {
        if hasAccount {
            confirmTextField.isHidden = true
            signupButton.isHidden = true
            toggleButtton.setTitle("Create Account", for: .normal)
        } else {
            loginButton.isHidden = true
            toggleButtton.setTitle("Sign In", for: .normal)
        }
    }
    
    func checkDarkMode() {
        if self.traitCollection.userInterfaceStyle == .dark {
            view.backgroundColor = UIColor.black
            loginButton.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            signupButton.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            loginButton.setTitleColor(.black, for: .normal)
            signupButton.setTitleColor(.black, for: .normal)
            toggleButtton.setTitleColor(.black, for: .normal)
        } else {
            view.backgroundColor = UIColor.white
            loginButton.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            signupButton.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            loginButton.setTitleColor(.white, for: .normal)
            signupButton.setTitleColor(.white, for: .normal)
            toggleButtton.setTitleColor(.white, for: .normal)
        }
    }

}
