//
//  GMapHelper.swift
//  TravelMaster
//
//  Created by Wang Yulong on 8/11/18.
//  Copyright © 2018 Wang Yulong. All rights reserved.
//

import Foundation
import GoogleMaps

public class GMapHelper
{
    // MARK: Fields and Const
    private static var _instance : GMapHelper? = nil;
    private var camera = GMSCameraPosition.camera(withLatitude: 0, longitude: 0, zoom: 1);
    private var mapView : GMSMapView? = nil;
    
    // MARK: Properties
    // singletone property
    public static var GMapHelperInstance : GMapHelper?
    {
        get
        {
            if (_instance == nil)
            {
                _instance = GMapHelper.init();
            }
            return _instance;
        }
    }
    
    // MARK: Constructor
    /* Default Constructor*/
    private init()
    {
        GMSServices.provideAPIKey(Constants.GMAP_API_KEY);
    }
    
    // MARK: APIs
    public func GetDefaultGMapView() -> GMSMapView
    {
        // locate to worldCoord provided by GWP
        let gMWaypoint = GMapWaypointModel.init(withCase: 0);
        self.camera = GMSCameraPosition.camera(withLatitude: gMWaypoint.Latitude, longitude: gMWaypoint.Longitude, zoom: Constants.PARC_ELEG_ZOOM);
        self.mapView = GMSMapView.map(withFrame:CGRect.zero, camera: camera);
        
        return self.mapView!;
    }
    
    // MARK: Methods
}
