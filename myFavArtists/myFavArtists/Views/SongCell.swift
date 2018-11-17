//
//  SongCell.swift
//  myFavArtists
//
//  Created by Aboelnaga on 10/25/18.
//  Copyright © 2018 tamkeen. All rights reserved.
//

import UIKit

class SongCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func updateUI(appData: AppData){
        
        videoTitle.text = appData.videoTitle
        
        let url = URL(fileURLWithPath: appData.imageURL)
        DispatchQueue.global().async {
            do{
               let data = try Data(contentsOf: url)
                DispatchQueue.global().async {
                    self.videoPreviewImage.image = UIImage(data: data)
                }
            }catch{
                print(error)
            }
        }
    }

}
