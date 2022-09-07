//
//  Model.swift
//  Gallery
//
//  Created by Zam on 05.09.2022.
//

import UIKit

class Model {
  
    var pics: [UIImage] = []

    func loadPictures() {
        (1...8).forEach { pics.append(UIImage(named: "landscapePic" + String($0))!) }
        (1...15).forEach { pics.append(UIImage(named: "pic" + String($0))!) }
    }
}

