//
//  MainViewController.swift
//  iCard
//
//  Created by xcodewarrior on 14.08.2017.
//  Copyright © 2017 EmrahKorkmaz. All rights reserved.
//

import UIKit
import SnapKit

class MainViewController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        
        let cardTest1: iCreditCard = iCreditCard(cardStyleWithBackgroundColor: .withBothBankIcon, withCardColors: .yelloway, pinIcon: .chip2, creditIcons: .googleWalletIcon)
        let cardTest2: iCreditCard = iCreditCard(cardStyleWithBackgroundColor: .withBothBankIcon, withCardColors: .yelloway, pinIcon: .chip1, creditIcons: .cirrusIcon)
        //let cardTest3: iCreditCard = iCreditCard(cardStyleWithBackgroundColor: .withBothBankIcon, withCardColors: .blueway, pinIcon: .chip3, creditIcons: .americanExpressIcon)
        let cardTest3: iCreditCard = iCreditCard(cardStyleWithBackgroundImage: .withBothBankIcon, withCardImage: UIImage(named:"simpleBackgroundImage"), pinIcon: .chip2, creditIcons: .maestroIcon)
        
        
        /*let cardTest1: iCreditCard = iCreditCard(cardStyleWithBackgroundImage: .withBothBankIcon, withCardImage: UIImage(named:"simpleBackgroundImage"), pinIcon: .chip1, creditIcons: .cirrusIcon)
        let cardTest2: iCreditCard = iCreditCard(cardStyleWithBackgroundImage: .withBothBankIcon, withCardImage: UIImage(named:"simpleBackgroundImage"), pinIcon: .chip2, creditIcons: .masterCard)
        let cardTest3: iCreditCard = iCreditCard(cardStyleWithBackgroundImage: .withBothBankIcon, withCardImage: UIImage(named:"simpleBackgroundImage"), pinIcon: .chip3, creditIcons: .googleWalletIcon)*/
        
        
        view.addSubview(cardTest1)
        view.addSubview(cardTest2)
        view.addSubview(cardTest3)
        
        cardTest1.snp.makeConstraints({ (make) in
            make.height.equalTo(200)
            make.width.equalTo(320)
            make.top.equalTo(view.snp.top).offset(20)
            make.centerX.equalTo(view)
        })
        
        cardTest2.snp.makeConstraints({ (make) in
            make.size.equalTo(cardTest1)
            make.top.equalTo(cardTest1.snp.bottom).offset(20)
            make.centerX.equalTo(view)
        })
        
        cardTest3.snp.makeConstraints({ (make) in
            make.size.equalTo(cardTest1)
            make.top.equalTo(cardTest2.snp.bottom).offset(20)
            make.centerX.equalTo(view)
        })
    }
    
}

extension MainViewController{
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        UIApplication.shared.isStatusBarHidden = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        UIApplication.shared.isStatusBarHidden = true
    }
}
