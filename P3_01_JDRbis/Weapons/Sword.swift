//
//  Sword.swift
//  P3_01_JDR
//
//  Created by Guillaume Donzeau on 22/02/2021.
//

import Foundation

class Sword:Weapon {
    override var name: String { "a sword" }
    override var damage: Int { 30 }
    override var heals:Bool { false }
    
    override var barbarianAuthorized:Bool { true }
    override var druidAuthorized:Bool { false }
    override var paladinAuthorized:Bool { true }
    override var mageAuthorized:Bool { false }
}

