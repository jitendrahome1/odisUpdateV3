//
//  AppDelegate.swift
//  ServiceDemo
//
//  Created by IOS on 16/08/17.
//  Copyright © 2017 goigi. All rights reserved.
//
import UIKit

class JAImageDownloader: NSObject {
    static let sharedDownloader = JAImageDownloader()
    fileprivate override init() { }

// This Function download image and retun image data.
    func downloadImageWith(forImageURL imageURl: String?, pImageData:@escaping (_ imageData: Data)->()){
        // Create Url from string
        let url = URL(string: imageURl!)!
        
        // Download task:
        // - sharedSession = global NSURLCache, NSHTTPCookieStorage and NSURLCredentialStorage objects.
        let task = URLSession.shared.dataTask(with: url, completionHandler: { (responseData, responseUrl, error) -> Void in
            // if responseData is not null...
            if let data = responseData{
                
                // execute in UI thread
                DispatchQueue.main.async(execute: { () -> Void in
                    
                    pImageData(data)
                    })
            }
        }) 
        
        // Run task
        task.resume()
        
    }

}
