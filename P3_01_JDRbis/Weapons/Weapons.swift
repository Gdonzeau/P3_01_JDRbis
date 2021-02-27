//
//  Weapons.swift
//  P3_01_JDR
//
//  Created by Guillaume Donzeau on 22/02/2021.
//

import Foundation

class Weapon {
    static var allWeapons = [Axe(),BigHealingSpell(),Dagger(),Flail(),Hammer(),HealingSpell(),Sword(),Fireball(),SmallClub()]
    static var barbarianWeapons = [Weapon]()
    static var paladinWeapons = [Weapon]()
    static var druidWeapons = [Weapon]()
    static var mageWeapons = [Weapon]()
    static var allChests = [barbarianWeapons,druidWeapons,paladinWeapons,mageWeapons]
    
    var name:String {
        get {
            return "nothing"
        }
    }
    var damage:Int {
        get {
            return 10
        }
    }
    var heals:Bool {
        get {
            return false
        }
    }
    var number:Int {
        get {
            return 100
        }
    }
    var barbarianAuthorized:Bool {
        get {
            return true
        }
    }
    var druidAuthorized:Bool {
        get {
            return true
        }
    }
    var paladinAuthorized:Bool {
        get {
            return true
        }
    }
    var mageAuthorized:Bool {
        get {
            return true
        }
    }
    static func initializingChests() { // Initialisation automatique
        for stuff in Weapon.allWeapons {
            if stuff.barbarianAuthorized {
                Weapon.barbarianWeapons += [stuff]
            }
            if stuff.paladinAuthorized {
                Weapon.paladinWeapons += [stuff]
            }
            if stuff.druidAuthorized {
                Weapon.druidWeapons += [stuff]
            }
            if stuff.mageAuthorized {
                Weapon.mageWeapons += [stuff]
            }
        }
    }
    /*
    static func subclasses<Weapon>(of theClass: Weapon) -> [Weapon] {
        var count: UInt32 = 0, result: [Weapon] = []
        let allClasses = objc_copyClassList(&count)!

        for n in 0 ..< count {
            let someClass: AnyClass = allClasses[Int(n)]
            guard let someSuperClass = class_getSuperclass(someClass), String(describing: someSuperClass) == String(describing: theClass) else { continue }
            result.append(someClass as! Weapon)
        }

        return result
    }
    */
    func subclass<Weapon>(theClass: Weapon) ->[Weapon] {
        var count: UInt32 = 0, result: [Weapon] = []
        let allClasses = objc_copyClassList(&count)!

        for n in 0 ..< count {
            let someClass: AnyClass = allClasses[Int(n)]
            guard let someSuperClass = class_getSuperclass(someClass), String(describing: someSuperClass) == String(describing: theClass) else { continue }
            result.append(someClass as! Weapon)
        }

        return result
    }
}
