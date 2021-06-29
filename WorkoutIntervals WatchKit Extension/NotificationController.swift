//
//  NotificationController.swift
//  WorkoutIntervals WatchKit Extension
//
//  Created by Thomas Davis on 6/23/21.
//

import WatchKit
import Foundation
import UserNotifications

class NotificationController: WKUserNotificationInterfaceController {

    var isOn = false;
    var runMinutes = 0;
    var walkMinutes = 0;
    
    override init() {
        // Initialize variables here.
        super.init()
        
        let controller = InterfaceController.init();
        
        if (controller.onOffSwitch.isEqual(true))
        {
            isOn = true;
        }
        
        walkMinutes = controller.runPickerVal;
        runMinutes = controller.walkPickerVal;
    
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
    }

    override func didReceive(_ notification: UNNotification) {
        // This method is called when a notification needs to be presented.
        // Implement it if you use a dynamic notification interface.
        // Populate your dynamic notification interface as quickly as possible.
        
        if (!isOn)
        {
            print("Hello World!");
        }
    }
}
