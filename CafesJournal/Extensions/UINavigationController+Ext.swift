//
//  UINavigationController+Ext.swift
//  CafesJournal
//
//  Created by elina.zambere on 20/02/2021.
//

import UIKit

extension UINavigationController {
    
    open override var childForStatusBarStyle: UIViewController? {
        return topViewController
    }
}
