//
//  Big Healing Spell.swift
//  P3_01_JDR
//
//  Created by Guillaume Donzeau on 22/02/2021.
//

import Foundation

class BigHealingSpell:Weapon {
    override var name: String { "a major healing spell" }
    override var damage: Int { -50 }
    override var number:Int { 0 }
    override var heals:Bool { true }
    
    override var barbarianAuthorized:Bool { false }
    override var druidAuthorized:Bool { true }
    override var paladinAuthorized:Bool { false }
    override var mageAuthorized:Bool { false }
}
