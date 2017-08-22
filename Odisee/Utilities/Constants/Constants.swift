//
//  AppDelegate.swift
//  ServiceDemo
//
//  Created by IOS on 16/08/17.
//  Copyright © 2017 goigi. All rights reserved.
//

import Foundation
import UIKit

let SYSTEM_VERSION = UIDevice.current.systemVersion

let SCREEN_WIDTH = UIScreen.main.bounds.width
let SCREEN_HEIGHT = UIScreen.main.bounds.height
let MAIN_WINDOW = UIApplication.shared.windows.first
let LIST_LIGHT_GRAY_COLOR = UIColorRGB(242, g: 242, b: 242)!
func IS_OF_4_INCH() -> Bool {
	switch UIDevice.current.modelName {
	case .iPhone5, .iPhone5S, .iPhone5C, .iPhoneSE:
		return true
	default:
		return false
	}
}
let DASHBOARD = "/dashboards"
// MARK: Storyboard
let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
let loginStoryboard: UIStoryboard = UIStoryboard(name: "Login", bundle: nil)
let otherStoryboard: UIStoryboard = UIStoryboard(name: "Others", bundle: nil)
let dashboardStoryboard: UIStoryboard = UIStoryboard(name: "Dashboard", bundle: nil)
// MARK:- Font
let FONT_NAME = "Roboto-Regular"
let kTableViewBackgroundImage = "BackgroundImage"

let CANCEL = "Cancel"
let OK = "Ok"



// MARK:- Base Color



let BASECOLOR = UIColorRGB(250, g: 230, b: 215)


func IS_IPAD() -> Bool {

	switch UIDevice.current.userInterfaceIdiom {
	case .phone: // It's an iPhone
		return false
	case .pad: // It's an iPad
		return true
	case .unspecified: // undefined
		return false
	default:
		return false
	}
}

func SET_OBJ_FOR_KEY(_ obj: AnyObject, key: String) {
	UserDefaults.standard.set(obj, forKey: key)
    UserDefaults.standard.synchronize()
}

func OBJ_FOR_KEY(_ key: String) -> AnyObject? {
	if UserDefaults.standard.object(forKey: key) != nil {
		return UserDefaults.standard.object(forKey: key)! as AnyObject?
	}
	return nil
}



func SET_INTEGER_FOR_KEY(_ integer: Int, key: String) {
	UserDefaults.standard.set(integer, forKey: key)
}

func INTEGER_FOR_KEY(_ key: String) -> Int? {
	return UserDefaults.standard.integer(forKey: key)
}

func SET_FLOAT_FOR_KEY(_ float: Float, key: String) {
	UserDefaults.standard.set(float, forKey: key)
}

func FLOAT_FOR_KEY(_ key: String) -> Float? {
	return UserDefaults.standard.float(forKey: key)
}

func SET_BOOL_FOR_KEY(_ bool: Bool, key: String) {
	UserDefaults.standard.set(bool, forKey: key)
}

func BOOL_FOR_KEY(_ key: String) -> Bool? {
	return UserDefaults.standard.bool(forKey: key)
}

func REMOVE_OBJ_FOR_KEY(_ key: String) {
	UserDefaults.standard.removeObject(forKey: key)
}

func UIColorRGB(_ r: CGFloat, g: CGFloat, b: CGFloat) -> UIColor? {
	return UIColor(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: 1.0)
}
func UIBorderColor() -> UIColor {
	return UIColor(red: 212.0 / 255.0, green: 212.0 / 255.0, blue: 212.0 / 255.0, alpha: 1.0)
}

func UIColorRGBA(_ r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat) -> UIColor? {
	return UIColor(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: a)
}

func FIRST_WINDOW() -> AnyObject? {
	return UIApplication.shared.windows.first!
}

func APP_DELEGATE() -> AppDelegate? {
	return UIApplication.shared.delegate as? AppDelegate
}

func SWIFT_CLASS_STRING(_ className: String) -> String? {
	return "\(Bundle.main.infoDictionary!["CFBundleName"] as! String).\(className)";
}

func PRIMARY_FONT(_ size: CGFloat) -> UIFont? {
	return UIFont(name: FONT_NAME, size: size)
}

//func SECONDARY_FONT(size: CGFloat) -> UIFont? {
// return UIFont(name: "Roboto-Regular", size: size)!
//}

/*
 if #available(iOS 9.0, *)
 {
 //System version is more than 9.0
 }
 else
 {

 }
 */
