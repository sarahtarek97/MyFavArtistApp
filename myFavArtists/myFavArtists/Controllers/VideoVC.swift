//
//  VideoVC.swift
//  myFavArtists
//
//  Created by Aboelnaga on 10/25/18.
//  Copyright © 2018 tamkeen. All rights reserved.
//

import UIKit
import WebKit

class VideoVC: UIViewController {

    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var webView: WKWebView!
    
    private var _dataCell : AppData!
    
    var dataCell : AppData{
        get{
            return _dataCell
        }
        set{
            _dataCell = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLable.text = dataCell.videoTitle
        webView.loadHTMLString(dataCell.videoURL, baseURL: nil)
        
    }

}
