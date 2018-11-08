//
//  SecondViewController.swift
//  TravelMaster
//
//  Created by Wang Yulong on 8/11/18.
//  Copyright © 2018 Wang Yulong. All rights reserved.
//

import UIKit
import GoogleMaps

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // load GMap
        GMSServices.provideAPIKey(Constants.GMAP_API_KEY);
        
        let camera = GMSCameraPosition.camera(withLatitude: 1.318056, longitude: 103.908629, zoom: 20);
        let mapView = GMSMapView.map(withFrame:CGRect.zero, camera: camera);
        view = mapView;
    }

}

