//
//  LocationMarker.swift
//  TravelMaster
//
//  Created by Wang Yulong on 14/11/18.
//  Copyright © 2018 Wang Yulong. All rights reserved.
//

import Foundation
import GoogleMaps

public class LocationMarker
{
    // MARK : Fields and Const
    private var _is_marker_visible : Bool = true;
    private var _marker_index : Int? = nil;
    private let _marker_rID : String = NSUUID().uuidString;           // id unique for this marker
    private var _latitude : Double = 0;
    private var _longitude : Double = 0;
    private var _map_position_2d : CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 0, longitude: 0);
    private var _gmarker : GMSMarker? = nil;
    
    // MARK : Properties
    public var Latitude : Double
    {
        get
        {
            return self._latitude;
        }
        set (newVal)
        {
            self._latitude = newVal;
            self._map_position_2d.latitude = newVal;
        }
    }
    
    public var Longitude : Double
    {
        get
        {
            return self._longitude;
        }
        set (newVal)
        {
            self._longitude = newVal;
            self._map_position_2d.longitude = newVal;
        }
    }
    
    
    // MARK : Constructor
    public init()
    {
        self._gmarker = GMSMarker();
        
        self._gmarker = GMSMarker.init(position: CLLocationCoordinate2D(latitude: self._latitude, longitude: self._longitude));
    }
    
    public init(lat latitude : Double, lon longitude : Double)
    {
        self._latitude = latitude;
        self._longitude = longitude;
        
        self._gmarker = GMSMarker.init(position: CLLocationCoordinate2D(latitude: latitude, longitude: longitude));
    }
    
    public init(lat latitude : Double, lon longitude : Double, index markerIndex : Int)
    {
        self._latitude = latitude;
        self._longitude = longitude;
        self._marker_index = markerIndex;
        
        self._gmarker = GMSMarker.init(position: CLLocationCoordinate2D(latitude: latitude, longitude: longitude));
    }
    
    // MARK : APIs
    /* Compares with another marker, ture if they are the same */
    public func isTheSameAs(secondMarker another : LocationMarker) -> Bool
    {
        return self._marker_rID.elementsEqual(another._marker_rID);
    }
    
    // MARK : Methods
}
