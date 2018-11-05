//
//  ViewController.swift
//  Pay
//
//  Created by Drakeson 007 on 02/11/2018.
//  Copyright © 2018 Code256.Ug. All rights reserved.
//

import UIKit
import Rave


class ViewController: UIViewController, RavePaymentManagerDelegate {
    
    func showRaveView(){
        let raveMgr = RavePayManager()
        raveMgr.email = "test@example.com" //Customer's email address
        raveMgr.amount = "25" // Amount
        raveMgr.transcationRef = "TTT100010010" //Unique transaction reference
        raveMgr.currencyCode = "NGN"
        raveMgr.delegate = self
        raveMgr.narration = "narration"
        raveMgr.supportedPaymentMethods = [.card,.account] // Choose supported payment channel allowed
        //Set your recurring payment ID, Only set this if you are enabling recurring payments
        //raveMgr.paymentPlan = <PAYMENT PLAN ID>
        
        raveMgr.show(withController:self)
    }
    
    func ravePaymentManagerDidCancel(_ ravePaymentManager: RavePayManager) {
        
    }
    func ravePaymentManager(_ ravePaymentManager: RavePayManager, didSucceedPaymentWithResult result: [String : AnyObject]) {
        
    }
    func ravePaymentManager(_ ravePaymentManager: RavePayManager, didFailPaymentWithResult result: [String : AnyObject]) {
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        showRaveView()
    }

}

