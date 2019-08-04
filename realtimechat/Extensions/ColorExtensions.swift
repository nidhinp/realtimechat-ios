//
//  ColorExtensions.swift
//  realtimechat
//
//  Created by Nidhin P on 8/4/19.
//  Copyright © 2019 nidhin. All rights reserved.
//

import UIKit

extension UIColor {
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat) {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
}
