//
//  PopularShotsCollectionViewController.swift
//  Wribble
//
//  Created by Akaanksha Sharman on 15/09/17.
//  Copyright © 2017 Akaanksha Sharman. All rights reserved.
//

import UIKit

class PopularShotsCollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    private let IDENTIFIER_POPULARSHOTS = "popularShotsCell"
    
    @IBOutlet var collectionVw: UICollectionView!
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "dribble"
    }
    
    
    //MARK: - CollectionView DataSource Delegate
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
     let cell = collectionView.dequeueReusableCell(withReuseIdentifier: IDENTIFIER_POPULARSHOTS , for: indexPath) as! PopularShotsCollectionViewCell
        cell.imgVwUserProfilePic.image = #imageLiteral(resourceName: "dummyProfile")
        cell.lblUserName.text = "Tim Cook"
        cell.imgVwShot.image = #imageLiteral(resourceName: "dummyImage")
        return cell
    }
    
    //MARK: - UICollectionView FlowLayout Delegate
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width - 10, height: self.view.frame.height/2.5)
    }

}
