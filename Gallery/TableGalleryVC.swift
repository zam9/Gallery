//
//  TableGalleryVC.swift
//  Gallery
//
//  Created by Zam on 05.09.2022.
//

import UIKit

class TableGalleryVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableGallery: UITableView!
    
    let model = Model()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        model.loadPictures()
        
        tableGallery.delegate = self
        tableGallery.dataSource = self
    }
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.pics.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableCell", for: indexPath) as! TableCell
        cell.tableCellImage.image = model.pics[indexPath.item]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 135
    }

}
