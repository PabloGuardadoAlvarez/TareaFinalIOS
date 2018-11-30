//
//  DataViewController.swift
//  RecipeFinder
//
//  Created by PABLO GUARDADO ALVAREZ on 29/11/18.
//  Copyright © 2018 PABLO GUARDADO ALVAREZ. All rights reserved.
//

import UIKit

class DataViewController: UIViewController {
    
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var imgData: UIImageView!
    
    @IBOutlet weak var descriptionData: UILabel!
    
    @IBOutlet weak var dificultyData: UILabel!
    
    @IBOutlet weak var timeData: UILabel!
    
    @IBOutlet weak var howToData: UILabel!
    
    @IBOutlet weak var btnMap: UIButton!
    
    var name:String!
    var img:String!
    var howTo:String!
    var dificulty:String!
    var time:Int!
    var des: String!
    var lat:Double!
    var lon:Double!
    var min:String!
    var min2:String!
    
    convenience init(name:String, img:String, howTo:String, dificulty:String, time:Int, des:String, lat:Double, lon:Double) {
        self.init()
        self.name = name
        self.img = img
        self.howTo = howTo
        self.dificulty = dificulty
        self.time = time
        self.des = des
        self.lat = lat
        self.lon = lon
        
    }
    
    
    @IBAction func btnShowMap(_ sender: Any) {
        
        let mapVC = MapViewController(lat: lat, lon: lon)
        navigationController?.pushViewController(mapVC, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        min = String(time)
        min2 = " minutos"
        lblName.text = name
        descriptionData.text = des
        imgData.sd_setImage(with:URL(string:img), completed: nil)
        dificultyData.text = dificulty
        timeData.text = "\(min!) \(min2!)"
        howToData.text = howTo
        btnMap.layer.cornerRadius = 10
        btnMap.layer.borderWidth = 1
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
