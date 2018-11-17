//
//  ViewController.swift
//  myFavArtists
//
//  Created by Aboelnaga on 10/25/18.
//  Copyright © 2018 tamkeen. All rights reserved.
//

import UIKit

class MainVC: UIViewController ,UITableViewDelegate,UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    
    var dataArray = [AppData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p1 = AppData(imageURL: "amrdiab", videoURL: "https://www.youtube.com/watch?v=eCZHbMRq2TU", videoTitle: "haded - Kol Hayaty")
        dataArray.append(p1)
        
        let p2 = AppData(imageURL: "dualipa", videoURL: "https://www.youtube.com/watch?v=Mgfe5tIwOj0", videoTitle: "IDGAF")
        dataArray.append(p2)
        
        let p3 = AppData(imageURL: "edsheeran", videoURL: "https://www.youtube.com/watch?v=JGwWNGJdvx8", videoTitle: "Shape Of You")
        dataArray.append(p3)
        
        let p4 = AppData(imageURL: "shakira", videoURL: "https://www.youtube.com/watch?v=sPTn0QEhxds", videoTitle: "Me Enamore")
        dataArray.append(p4)
        
        let p5 = AppData(imageURL: "sia", videoURL: "https://www.youtube.com/watch?v=2vjPBrBU-TM", videoTitle: "Chandelier")
        dataArray.append(p5)
        
        let p6 = AppData(imageURL: "taylorswift", videoURL: "https://www.youtube.com/watch?v=tCXGJQYZ9JA", videoTitle: "Delicate")
        dataArray.append(p6)
        
        let p7 = AppData(imageURL: "zaptharwat", videoURL: "https://www.youtube.com/watch?v=HUn8L1BVCxY", videoTitle: "El Sohab")
        dataArray.append(p7)
        
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? SongCell{
            let data = dataArray[indexPath.row]
            cell.updateUI(appData: data)
            return cell
        }else{
            return UITableViewCell()
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let appData = dataArray[indexPath.row]
        performSegue(withIdentifier: "mainVC", sender: appData)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VideoVC {
            if let song = sender as? AppData{
                destination.dataCell = song
            }
        }
    }

}

