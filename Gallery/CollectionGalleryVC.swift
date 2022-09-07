//
//  CollectionGalleryVC.swift
//  Gallery
//
//  Created by Zam on 05.09.2022.
//

import UIKit

class CollectionGalleryVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collectionGallery: UICollectionView!
    
    let model = Model()

    override func viewDidLoad() {
        super.viewDidLoad()

        model.loadPictures()

        collectionGallery.delegate = self
        collectionGallery.dataSource = self
    }
 
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return model.pics.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath) as! CollectionCell
        cell.collectionCellImage.image = model.pics[indexPath.item]
        return cell
    }

}
