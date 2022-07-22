//
//  Item.swift
//  MonTrousseau
//
//  Created by kenter on 21/07/2022.
//

import Foundation

class Item {
    
    var site: String?
    var username: String?
    var password: String?
    
    private let _siteKey = "site"
    private let _usernameKey = "username"
    private let _passwordKey = "password"
    
    var safeSite: String {
        return site ?? ""
    }
    
    var safeUsername: String {
        return username ?? ""
    }
    
    var safePassword: String {
        return password ?? ""
    }
    
    init(site: String?, username: String?, password: String?) {
        self.site = site
        self.username = username
        self.password = password
    }
    
    init(dict: [String: String]) {
        self.site = dict[_siteKey]
        self.username = dict[_usernameKey]
        self.password = dict[_passwordKey]
    }
    
    func toDict() -> [String: String] {
        var dict: [String: String] = [:]
        if self.site != nil {
            dict[_siteKey] = self.site!
        }
        if self.password != nil {
            dict[_passwordKey] = self.password!
        }
        if self.username != nil {
            dict[_usernameKey] = self.username!
        }
        return dict
    }
}


