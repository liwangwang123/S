//
//  ViewController.swift
//  S
//
//  Created by lemo on 2018/9/26.
//  Copyright © 2018年 wangli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let titleLabel = UILabel(frame:  CGRect(x: 10, y: 50, width: 300, height: 300))
        titleLabel.text = "了斯柯达后方可时间很短防守打法惊世毒妃受苦啦的放假"
        titleLabel.font = UIFont.systemFont(ofSize: 18)
        titleLabel.numberOfLines = 0
        titleLabel.textAlignment = .center
        titleLabel.backgroundColor =  .white
        titleLabel.textColor =  .black
        self.view.addSubview(titleLabel)
    }
    
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
            }


}

