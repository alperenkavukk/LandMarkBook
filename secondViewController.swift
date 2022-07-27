//
//  secondViewController.swift
//  landmarkBook
//
//  Created by Alperen Kavuk on 25.07.2022.
//

import UIKit

class secondViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    var selectLandMarkName=""
    var selectLandMarkImage=UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text=selectLandMarkName
        imageView.image=selectLandMarkImage
        
       
    }
    


}
