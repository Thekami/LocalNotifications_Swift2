//
//  ViewController.swift
//  Notifications
//
//  Created by José Angel Torres López on 11/11/15.
//  Copyright © 2015 José Angel Torres López. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var Time = 10
    var Timer = NSTimer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    func Notification(){
        
        Time -= 1
    
        if(Time <= 0){
            
            let Notification = UILocalNotification()
            
            Notification.alertAction = "Go App"
            Notification.alertBody = "Ya pasaron 10 segundos"
            
            //timer will be calling the func Notification() every second
            Notification.fireDate = NSDate(timeIntervalSinceNow: 0)
            
            //Allow this notification to be called outside of the app
            UIApplication.sharedApplication().scheduleLocalNotification(Notification)
                //Time = 10
                Timer.invalidate()
                //Timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: Selector("Notification"), userInfo: nil, repeats: true)

        }
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


    @IBAction func PushNotification(sender: AnyObject) {
        
        let AlertView = UIAlertController(title: "Hola!!", message: "El contador a iniciado", preferredStyle: UIAlertControllerStyle.Alert)
        
        AlertView.addAction(UIAlertAction(title: "Chido", style: UIAlertActionStyle.Default, handler: nil))
        
        self.presentViewController(AlertView, animated: true, completion: nil)

        
        /* timer with parameters 1rs = interval (1 second) 2nd = where show it (self), 3rd = which function will show it, 4th = I dont know, 5th = repeat the action or not
        var Timer = NSTimer.scheduledTimerWithTimeInterval(<#T##ti: NSTimeInterval##NSTimeInterval#>, target: <#T##AnyObject#>, selector: <#T##Selector#>, userInfo: <#T##AnyObject?#>, repeats: <#T##Bool#>)*/
        Time = 10
        Timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: Selector("Notification"), userInfo: nil, repeats: true)
        
        
    }
}

