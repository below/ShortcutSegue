//
//  ViewController.swift
//  ShortcutSegue
//
//  Created by Alexander v. Below on 24.04.18.
//  Copyright © 2018 Deutsche Telekom AG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func jump () {
        
        let storyboard = self.storyboard!
        
        // This depends a bit from where you are coming. Sometimes you don't want the last viewController on the stack
        var controllers : [UIViewController] = self.navigationController!.viewControllers

        var controller = storyboard.instantiateViewController(withIdentifier: "B")
        // Remember to do the things here you'd do in prepareForSegue!
        controllers.append(controller)
        
        controller = storyboard.instantiateViewController(withIdentifier: "C")
        controllers.append(controller)
        
        // This is supposed to be the best way to set a different "stack", according
        // to some docs I no longer seem to be able to find.
        self.navigationController!.setViewControllers(controllers, animated: true)

    }
}

