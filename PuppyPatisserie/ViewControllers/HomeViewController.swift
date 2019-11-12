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
    var treats: [Treat] = []
    
    //Outlets
    @IBOutlet weak var helloLabel: PuppyLabel!
    @IBOutlet weak var sideMenuView: UIView!
    @IBOutlet weak var sideMenuButtonStack: UIStackView!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var treatsCollectionView: UICollectionView!
    
    //Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        treatsCollectionView.dataSource = self
        treatsCollectionView.delegate = self
        createGradient()
        setViews()
        addDummyData()
    }
    
    //Actions
    @IBAction func addButtonTapped(_ sender: Any) {
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    //Helper Functions
    func setViews() {
        helloLabel.text = "Hello \(user.name)"
        sideMenuButtonStack.rotate()
        sideMenuButtonStack.updateConstraintsIfNeeded()
        view.bringSubviewToFront(sideMenuButtonStack)
        addButton.layer.cornerRadius = addButton.frame.height / 2
        addButton.layer.borderWidth = 4
        addButton.setTitleColor(orange, for: .normal)
        addButton.layer.borderColor = orange.cgColor
        addButton.layer.shadowColor = orange.cgColor
        addButton.layer.shadowOpacity = 1.5
        addButton.layer.shadowRadius = 15
    }
    
    func createGradient() {
        let gradientView = GradientView(frame: sideMenuView.bounds)
        sideMenuView.insertSubview(gradientView, at: 0)
    }
    
    //Dummy Data
    func addDummyData() {
        let bone = Treat(name: "Doggy Bone", description: "Delicious biscuit packed with protein and grains!")
        let yumyum = Treat(name: "Yummy Training Treat", description: "Bite sized treats perfect for training!")
        self.treats = [bone, yumyum]
    }
}

//Treat Collection View Data
extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return treats.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? TreatCollectionViewCell else { return UICollectionViewCell() }
        cell.treat = treats[indexPath.row]
        cell.frame = CGRect(x: 0, y: 0, width: view.frame.width / 1.5, height: view.frame.height / 2)
        return cell
    }
}


