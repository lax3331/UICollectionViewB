//
//  CellData.swift
//  UICollectionViewB
//
//  Created by Nikita Kuznetsov on 03.04.2023.
//

import Foundation
import UIKit

let dataCell = [
one,
two,
three,
four,
five]

struct cellData {
    let backgroundPicture: UIImage
    let text: String
}

let one = cellData(backgroundPicture: UIImage(named: "1")!, text: "First")
let two = cellData(backgroundPicture: UIImage(named: "2")!, text: "Second")
let three = cellData(backgroundPicture: UIImage(named: "3")!, text: "Third")
let four = cellData(backgroundPicture: UIImage(named: "4")!, text: "Fourth")
let five = cellData(backgroundPicture: UIImage(named: "5")!, text: "Fifth")
