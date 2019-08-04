//
//  User.swift
//  realtimechat
//
//  Created by Nidhin P on 8/4/19.
//  Copyright © 2019 nidhin. All rights reserved.
//

import Foundation

struct User: Codable {
    static var current: User!
    var id: String
    var username: String
}
