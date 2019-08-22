//
//  PrivacyProtocol.swift
//  Privacy example
//
//  Created by NETBIZ on 21/08/19.
//  Copyright © 2019 Netbiz.in. All rights reserved.
//

import UIKit
protocol PrivacyControl {
    func hideData()
    func showData()
}

extension UINavigationController:PrivacyControl{
    func hideData() {
        if let vc = topViewController as? PrivacyControl{
            vc.hideData()
        }
    }
    
    func showData() {
        if let vc = topViewController as? PrivacyControl{
            vc.showData()
        }
    }
    
    
}
