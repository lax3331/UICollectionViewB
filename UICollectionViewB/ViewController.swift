//
//  ViewController.swift
//  UICollectionViewB
//
//  Created by Nikita Kuznetsov on 30.03.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    @IBOutlet weak var flowCollection: UICollectionViewFlowLayout!
    @IBOutlet weak var mainCollectionView: UICollectionView!
    
    let cellID = "MainCollectionViewCell"
    let insets = UIEdgeInsets(top: 30, left: 30, bottom: 30, right: 30)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mainCollectionView.backgroundColor = .black
        setupCell()
        
    }

    func setupCell(){
        mainCollectionView.delegate = self
        mainCollectionView.dataSource = self
        mainCollectionView.register(UINib(nibName: cellID, bundle: nil), forCellWithReuseIdentifier: cellID)
   
        }
        
    }


extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataCell.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = mainCollectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as! MainCollectionViewCell
        cell.backgroundColor = .darkGray
        let cellData = dataCell[indexPath.row]
        
        cell.mainImageView.image = cellData.backgroundPicture
        cell.describeLabel.text = cellData.text
        cell.describeLabel.textColor = .white
        return cell
    }
    
    
}

extension ViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return insets
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 30
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let itemWidth = collectionView.bounds.width - insets.left - insets.right
               let itemHeight = collectionView.bounds.height / 2.0 - insets.top - insets.bottom
               return CGSize(width: itemWidth, height: itemHeight)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
