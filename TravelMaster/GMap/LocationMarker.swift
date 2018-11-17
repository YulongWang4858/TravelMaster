//
//  LocationMarker.swift
//  TravelMaster
//
//  Created by Wang Yulong on 14/11/18.
//  Copyright © 2018 Wang Yulong. All rights reserved.
//

import Foundation
import GoogleMaps

public class LocationMarker : HashableClass
{
    // MARK : Protocol Implementation
    public static func == (lhs: LocationMarker, rhs: LocationMarker) -> Bool {
        return lhs._marker_rID.elementsEqual(rhs._marker_rID);
    }
    
    // MARK : Fields and Const
    private var _is_marker_visible : Bool = true;
    private var _marker_index : Int? = nil;
    private let _marker_rID : String = NSUUID().uuidString;           // id unique for this marker
    private var _map_position_2d : CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 0, longitude: 0);
    private var _gmarker : GMSMarker? = nil;
    
    // MARK : Properties
    public var Latitude : Double
    {
        get
        {
            return self._map_position_2d.latitude;
        }
        set (newVal)
        {
            self._map_position_2d.latitude = newVal;
        }
    }
    
    public var Longitude : Double
    {
        get
        {
            return self._map_position_2d.longitude;
        }
        set (newVal)
        {
            self._map_position_2d.longitude = newVal;
        }
    }
    
    public var  MarkerID : String
    {
        get
        {
            return self._marker_rID;
        }
    }
    
    // MARK : Constructor
    public override init()
    {
        self._gmarker = GMSMarker.init(position: self._map_position_2d);
    }
    
    public init(lat latitude : Double, lon longitude : Double)
    {
        self._map_position_2d.latitude = latitude;
        self._map_position_2d.longitude = longitude;
        self._gmarker = GMSMarker.init(position: self._map_position_2d);
    }
    
    public init(lat latitude : Double, lon longitude : Double, index markerIndex : Int)
    {
        self._map_position_2d.latitude = latitude;
        self._map_position_2d.longitude = longitude;
        self._marker_index = markerIndex;
        self._gmarker = GMSMarker.init(position: self._map_position_2d);
    }
    
    // MARK : APIs
    /* Compares with another marker, ture if they are the same */
    public func isTheSameAs(secondMarker another : LocationMarker) -> Bool
    {
        return self._marker_rID.elementsEqual(another._marker_rID);
    }
    
    
    // MARK : Methods
}
