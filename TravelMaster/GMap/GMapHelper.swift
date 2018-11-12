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
    private var max_zoom_level : Float? = 0;
    private var min_zoom_level : Float? = 0;
    
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
    
    /* Property in control of Zoom value and animation, with safety bounds */
    public var CurrentZoomLevel : Float?
    {
        get
        {
            return self.mapView?.camera.zoom;
        }
        set (newZoomLevel)
        {
            // change and animate
            let current_zoom = self.mapView?.camera.zoom;
            
            if (newZoomLevel!.isLess(than: current_zoom!))
            {
                self.mapView?.animate(toZoom: (current_zoom! - 2).isLess(than: min_zoom_level!) ? min_zoom_level! : newZoomLevel! );
            }
            else
            {
                self.mapView?.animate(toZoom: (max_zoom_level!).isLess(than: current_zoom! + 2) ? max_zoom_level! : newZoomLevel! );
            }
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
        
        if (self.mapView != nil)
        {
            self.max_zoom_level = self.mapView?.maxZoom;
            self.min_zoom_level = self.mapView?.minZoom;
            
            print("GMapHelper: GetDefaultGMapView --> created gmap view with max zoom of " + String(self.max_zoom_level!) + " and min zoom of " + String(self.min_zoom_level!));
        }
        
        return self.mapView!;
    }
    
    /* Changes and Animates GMap Zoom */
    public func ZoomControl(withTag zoom : Int)
    {
        if (zoom == Constants.ZOOM_UP_TAG)
        {
            self.CurrentZoomLevel! += 2;
        }
        else
        {
            self.CurrentZoomLevel! -= 2;
        }
    }
    
    // MARK: Methods
}
