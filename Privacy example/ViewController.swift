//
//  ViewController.swift
//  Privacy example
//
//  Created by NETBIZ on 21/08/19.
//  Copyright © 2019 Netbiz.in. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let effectView = UIVisualEffectView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}
extension ViewController: PrivacyControl{
    func hideData() {
        blurOut()
    }
    
    func showData() {
        removeBlur()
    }
    
    func blurOut() {
        
        effectView.frame = self.view.frame
        self.view.addSubview(effectView)
        
        UIView.animate(withDuration: 0.1, animations: {
            self.effectView.effect = UIBlurEffect(style: .light)
        })
        
    }
    func removeBlur(){
        UIView.animate(withDuration: 0.1, animations: {
            self.effectView.removeFromSuperview()
        })
    }
    
    
}
