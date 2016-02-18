//
//  ViewController.swift
//  LanguageIdentifiersIniOS9
//
//  Created by zlq on 16/2/17.
//  Copyright © 2016年 zlq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(NSLocale.preferredLanguages())
        let availableLanguages = [ "en-GB", "en-US", "zh-Hans", "zh-Hant", "en"]
        let bestMatchedLanguage = NSBundle.preferredLocalizationsFromArray(availableLanguages).last
        print(bestMatchedLanguage)
        
        let availableLocalizations = NSBundle.mainBundle().localizations
        let userPerfered = NSBundle.preferredLocalizationsFromArray(availableLocalizations, forPreferences: NSLocale.preferredLanguages())
        let localLanguage = userPerfered.first
        print(localLanguage)
        print(userPerfered)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

