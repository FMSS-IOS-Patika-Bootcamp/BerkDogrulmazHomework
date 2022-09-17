//
//  DetailVC.swift
//  HomoworkBerk
//
//  Created by Berk doğrulmaz on 17.09.2022.
//

import UIKit

class DetailVC: UIViewController {
    
    

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var choosenLeague : League?
    var image = UIImage()
    
 
    override func viewDidLoad() {
        super.viewDidLoad()

        self.imageView.image = choosenLeague?.image
        self.nameLabel.text = choosenLeague?.name
        self.descriptionLabel.text = choosenLeague?.description
       
    }
    

    @IBAction func detailButtonClicked(_ sender: Any) {
        
        //Webview 
        let webVC = WebViewController()
        present(webVC, animated: true)
        
    }
    
}
