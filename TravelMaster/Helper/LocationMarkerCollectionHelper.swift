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
    
    
    
    
    // MARK : Methods
    
    
    
}
