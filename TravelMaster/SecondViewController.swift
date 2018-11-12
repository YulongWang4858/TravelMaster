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
    private var _max_view_x : Int = 0;
    private var _max_view_y : Int = 0;

    // MARK : Override
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // load GMap
        let mapView = self._gmap_helper.GetDefaultGMapView();
        view = mapView;
        
        // set dimensions
        self._max_view_x = Int(UIScreen.main.bounds.width);
        self._max_view_y = Int(UIScreen.main.bounds.height);
        
        // Debug
        print("Screen max x --> " + String(self._max_view_x));
        print("Screen max y --> " + String(self._max_view_y));
        
        load_UI_components();
    }
    
    // MARK : Methods
    /* Initialize Dynamic UI Components */
    private func load_UI_components()
    {
        // zoom up button
        let zoomUpButton = UIButton();
        zoomUpButton.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1);
        zoomUpButton.frame = CGRect(x: (_max_view_x - Constants.SMALL_UIBUTTON_GAP_LENGTH - Constants.SMALL_UIBUTTON_SIDE_LENGTH), y: (_max_view_y - 4 * Constants.SMALL_UIBUTTON_GAP_LENGTH - 2 * Constants.SMALL_UIBUTTON_SIDE_LENGTH), width: Constants.SMALL_UIBUTTON_SIDE_LENGTH, height: Constants.SMALL_UIBUTTON_SIDE_LENGTH);
        zoomUpButton.setTitle("+", for: .normal);
        zoomUpButton.tag = Constants.ZOOM_UP_TAG;
        zoomUpButton.addTarget(self, action: #selector(zoom_control_clicked(sender:)), for: .touchUpInside);
        self.view.addSubview(zoomUpButton);
        
        // zoom down button
        let zoomDownButton = UIButton();
        zoomDownButton.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1);
        zoomDownButton.frame = CGRect(x: (_max_view_x - Constants.SMALL_UIBUTTON_GAP_LENGTH - Constants.SMALL_UIBUTTON_SIDE_LENGTH), y: (_max_view_y - 2 * Constants.SMALL_UIBUTTON_GAP_LENGTH - 2 * Constants.SMALL_UIBUTTON_SIDE_LENGTH), width: Constants.SMALL_UIBUTTON_SIDE_LENGTH, height: Constants.SMALL_UIBUTTON_SIDE_LENGTH);
        zoomDownButton.setTitle("-", for: .normal);
        zoomDownButton.tag = Constants.ZOOM_DOWN_TAG;
        zoomDownButton.addTarget(self, action: #selector(zoom_control_clicked(sender:)), for: .touchUpInside);
        self.view.addSubview(zoomDownButton);
    }
    
    /* Controlling Zoom Actions + & - */
    @objc private func zoom_control_clicked(sender : UIButton!)
    {
        self._gmap_helper.ZoomControl(withTag: sender.tag);
    }
}

