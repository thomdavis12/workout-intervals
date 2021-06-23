//
//  InterfaceController.swift
//  WorkoutIntervals WatchKit Extension
//
//  Created by Thomas Davis on 6/23/21.
//

import WatchKit
import Foundation

class InterfaceController: WKInterfaceController {
    
    @IBOutlet weak var onOffSwitch: WKInterfaceSwitch!
    @IBOutlet var onOffText: WKInterfaceTextField!
    
    override func awake(withContext context: Any?) {
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        onOffSwitch.setOn(true);
        setText(true);
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
    }
    
    @IBAction func setText(_ value: Bool) {
        if (value) {
            onOffText.setText("On");
        }
        else {
            onOffText.setText("Off");
        }
    }
}
