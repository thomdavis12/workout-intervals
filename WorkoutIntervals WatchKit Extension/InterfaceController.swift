//
//  InterfaceController.swift
//  WorkoutIntervals WatchKit Extension
//
//  Created by Thomas Davis on 6/23/21.
//

import WatchKit
import Foundation
import HealthKit

class InterfaceController: WKInterfaceController, HKWorkoutSessionDelegate {
    
    @IBOutlet weak var onOffSwitch: WKInterfaceSwitch!
    @IBOutlet var onOffText: WKInterfaceTextField!
    @IBOutlet weak var runPicker: WKInterfacePicker!
    @IBOutlet weak var walkPicker: WKInterfacePicker!
    
    var runMinutes = 0;
    var walkMinutes = 0;
    
    override func awake(withContext context: Any?) {
        // Configure interface objects here.
        let item1:WKPickerItem = WKPickerItem();
        item1.title = "4";
        
        let item2:WKPickerItem = WKPickerItem();
        item2.title = "8";
        
        let item3:WKPickerItem = WKPickerItem();
        item3.title = "12";
        
        let item4:WKPickerItem = WKPickerItem();
        item4.title = "16";
        
        runPicker.setItems([item1, item2, item3, item4]);
        walkPicker.setItems([item1, item2, item3, item4]);
        
        
        
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        onOffSwitch.setOn(true);
        setText(true);
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
    }
    
    @IBAction func runPickerAction(_ value: Int) {
        if (value == 0) {
            runMinutes = 4;
        }
        
        if (value == 1) {
            runMinutes = 8;
        }
        
        if (value == 2) {
            runMinutes = 12;
        }
        
        if (value == 3) {
            runMinutes = 16;
        }
        
        print("runMinutes " + String.init(runMinutes));
    }
    
    @IBAction func walkPickerAction(_ value: Int) {
        if (value == 0) {
            walkMinutes = 4;
        }
        
        if (value == 1) {
            walkMinutes = 8;
        }
        
        if (value == 2) {
            walkMinutes = 12;
        }
        
        if (value == 3) {
            walkMinutes = 16;
        }
        
        print("walkMinutes " + String.init(walkMinutes));
    }
    
    @IBAction func setText(_ value: Bool) {
        if (value) {
            onOffText.setText("On");
        }
        else {
            onOffText.setText("Off");
        }
    }
    
    func workoutSession(_ workoutSession: HKWorkoutSession, didFailWithError error: Error) {
        <#code#>
    }
    
    func workoutSession(_ workoutSession: HKWorkoutSession, didChangeTo toState: HKWorkoutSessionState, from fromState: HKWorkoutSessionState, date: Date) {
        <#code#>
    }
    
    func workoutSession(_ workoutSession: HKWorkoutSession, didGenerate event: HKWorkoutEvent) {
        <#code#>
    }
}
