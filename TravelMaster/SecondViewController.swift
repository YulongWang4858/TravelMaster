//
//  SecondViewController.swift
//  TravelMaster
//
//  Created by Wang Yulong on 8/11/18.
//  Copyright © 2018 Wang Yulong. All rights reserved.
//

import UIKit
import GoogleMaps

class SecondViewController: UIViewController
{
    // MARK : Fields and Const
    private var _gmap_helper : GMapHelper = GMapHelper.GMapHelperInstance!;

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // load GMap
        let mapView = self._gmap_helper.GetDefaultGMapView();
        view = mapView;
    }
}

