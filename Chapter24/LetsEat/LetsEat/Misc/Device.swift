//
//  Device.swift
//  LetsEat
//
//  Created by admin on 06/12/2019.
//  Copyright © 2019 MyName. All rights reserved.
//

import UIKit

struct Device {
    static var currentDevice: UIDevice {
        struct Singleton {
            static let device = UIDevice.current
        }
        return Singleton.device
    }
    
    static var isPhone: Bool {
        return currentDevice.userInterfaceIdiom == .phone
    }
    
    static var isPad: Bool {
        return currentDevice.userInterfaceIdiom == .pad
    }
}
