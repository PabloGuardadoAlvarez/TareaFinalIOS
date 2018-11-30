//
//  MapViewController.swift
//  RecipeFinder
//
//  Created by PABLO GUARDADO ALVAREZ on 30/11/18.
//  Copyright © 2018 PABLO GUARDADO ALVAREZ. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    @IBOutlet weak var map: MKMapView!
    
    @IBOutlet weak var switchMapType: UISegmentedControl!
    
    internal var locationToShow: CLLocation?
    
    @IBAction func segmentedControlTypeDidChange(_ sender: Any) {
        
        switch switchMapType.selectedSegmentIndex {
        case 0:
            map.mapType = .standard
        case 1:
            map.mapType = .satellite
        case 2:
            map.mapType = .hybrid
        default:
            map.mapType = .standard
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let annotation = MKPointAnnotation()
        annotation.coordinate = (locationToShow?.coordinate)!
        map.addAnnotation(annotation)
        
        let region = MKCoordinateRegionMakeWithDistance((locationToShow?.coordinate)!, 2000, 2000)
        map.setRegion(region, animated: true)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    convenience init(lat:Double! , lon:Double!){
        
        self.init()
        self.locationToShow = CLLocation(latitude: lat, longitude: lon)
    }
    

}
