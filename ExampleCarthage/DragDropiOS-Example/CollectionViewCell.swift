//
//  CollectionViewCell.swift
//  UICollectionViewFreezeLayout
//
//  Created by rafael on 7/18/16.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    static let IDENTIFIER = "COLLECTION_VIEW_CELL"
    
    @IBOutlet weak var imageView:UIImageView!
    
    var model:Model!
    
    override func awakeFromNib() {
        backgroundColor = UIColor.white
        layer.borderColor = UIColor.lightGray.cgColor
        layer.borderWidth = 0.5
    }
    
    
    func updateData(_ model:Model){
        self.model = model
        if model.text != nil {
            selectedStatus()
            imageView.image = UIImage(named: model.imageName!)
        }else{
            nomoralStatus()
            
            imageView.image = nil
        }
    }
    
    func hasContent() -> Bool {
        return model.text != nil
    }
    
    func moveOverStatus(){
        backgroundColor = UIColor.orange.withAlphaComponent(0.5)
    }
    
    func nomoralStatus(){
        backgroundColor = UIColor.white
    }
    
    func selectedStatus(){
        backgroundColor = UIColor.blue.withAlphaComponent(0.5)
    }
    

}
