//
//  GMapWaypointModel.swift
//  TravelMaster
//
//  Created by Wang Yulong on 8/11/18.
//  Copyright © 2018 Wang Yulong. All rights reserved.
//

import Foundation

public class GMapWaypointModel
{
    // MARK: Fields and Const
    // dimensions
    private var _latitude : Double = 0.00;
    private var _longitude : Double = 0.00;
    private var _altitude : Double = 0.00;
    
    // MARK: Properties
    public var Latitude : Double
    {
        get
        {
            return self._latitude;
        }
        set (newVal)
        {
            self._latitude = newVal;
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
        }
    }
    
    public var Altitude : Double
    {
        get
        {
            return self._altitude;
        }
        set (newVal)
        {
            self._altitude = newVal;
        }
    }
    
    // MARK: Constructor
    public init()
    {
        
    }
    
    public init(withCase testDefault : Int)
    {
        // TODO: Remove after testing
        if (testDefault == 0)
        {
            print("GMapWaypointModel --> zooming to Parc Elegance");
            
            // assign default
            self._longitude = Constants.PARC_ELEG_LON;
            self._latitude = Constants.PARC_ELEG_LAT;
        }
    }
    
    // MARK: Methods
}
