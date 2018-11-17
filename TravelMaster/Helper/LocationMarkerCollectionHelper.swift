//
//  LocationMarkerCollectionHelper.swift
//  TravelMaster
//
//  Created by Wang Yulong on 16/11/18.
//  Copyright © 2018 Wang Yulong. All rights reserved.
//

import Foundation

public class LocationMarkerCollectionHelper
{
    // MARK : Fields and Const
    private var _marker_collection : Array<LocationMarker> = Array<LocationMarker> ();
    private var _current_index : Int = 0;
    private var _marker_dictionary  = [LocationMarker : String] ();
    
    // MARK : Properties
    
    /* Returns the entire marker collection */
    public var MarkerCollection : Array<LocationMarker>
    {
        get
        {
            return self._marker_collection;
        }
    }
    
    /* Counts number of markers */
    public var MarkerCount : Int
    {
        get
        {
            return self._marker_collection.count;
        }
    }
    
    // MARK : Constructors
    public init()
    {
    }
    
    // MARK : APIs
    public func AddMarker(lat latitude : Double, lon longitude : Double)
    {
        // create marker on g-map
        let new_marker : LocationMarker = LocationMarker.init(lat: latitude, lon: longitude, index: self._current_index);
        self._marker_collection.append(new_marker);
        
        // update dictionary and marker index
        self._marker_dictionary[new_marker] = new_marker.MarkerID;
        self._current_index += 1;
    }
    
    public func RemoveMarkerWithId(id markerId : String)
    {
        
    }
    
    // MARK : Methods
    
    
    
}
