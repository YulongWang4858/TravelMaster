//
//  Constants.swift
//  TravelMaster
//
//  Created by Wang Yulong on 8/11/18.
//  Copyright © 2018 Wang Yulong. All rights reserved.
//

import Foundation

struct Constants
{
    // MARK : GMap Config
    public static let GMAP_API_KEY : String = "AIzaSyA4Z_wMk2YGtxGspyKhVDyLLmrbqFr4JjY";
    
    // TODO : Remove after testing
    public static let PARC_ELEG_LAT : Double = 1.318056;
    public static let PARC_ELEG_LON : Double = 103.908629;
    public static let PARC_ELEG_ZOOM : Float = 20;
    
    // MARK : View Dimensions
    public static let SMALL_UIBUTTON_SIDE_LENGTH : Int = 40;
    public static let SMALL_UIBUTTON_GAP_LENGTH : Int = 25;
    
    // MARK : UI Control Tag
    public static let ZOOM_UP_TAG : Int = 0;
    public static let ZOOM_DOWN_TAG : Int = 1;
}
