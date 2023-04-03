//
//  MainCollectionViewCell.swift
//  UICollectionViewB
//
//  Created by Nikita Kuznetsov on 30.03.2023.
//

import UIKit

class MainCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var mainImageView: UIImageView!
    
    @IBOutlet weak var describeLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        mainImageView.contentMode = .scaleAspectFill
    }

}
