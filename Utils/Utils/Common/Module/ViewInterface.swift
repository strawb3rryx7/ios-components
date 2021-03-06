//
//  ViewInterface.swift
//  Utils
//
//  Created by Ahmet Keskin on 5.11.2019.
//  Copyright © 2019 Trendyol.com. All rights reserved.
//

import UIKit

public protocol ViewInterface: class {
    static var storyboardId: String { get }
    
    func setTitle(_ title: String)
}

public extension ViewInterface where Self: UIViewController {
    static var storyboardId: String {
        return String(describing: self)
    }
    
    func setTitle(_ title: String) {
        self.title = title
    }
}
