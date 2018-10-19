//
//  Test.swift
//  S
//
//  Created by lemo on 2018/10/18.
//  Copyright © 2018年 wangli. All rights reserved.
//

import Foundation
import UIKit

extension CGFloat {
    /**
     The relative dimension to the corresponding screen size.
     
     //Usage
     let someView = UIView(frame: CGRect(x: 0, y: 0, width: 320.dp, height: 40.dp)
     
     **Warning** Only works with size references from @1x mockups.
     
     */
    var dp: CGFloat {
        return (self / 375) * UIScreen.main.bounds.width
    }
}


extension UILabel{
    var defaultFont: UIFont? {
        get { return self.font }
        set {
            /* When ViewController still in navigation stack
             and appear each time, the font label will decrease
             till will disappear, so we need to call dp just one
             time for each label .*/
            
            guard let font = self.font else {
                return
            }
            print(font)
            if self.tag == 0 {  // self.tag = 0 is default value .
                self.tag = 1
                let newFontSize = self.font.pointSize.dp // we get old font size and adaptive it with multiply it with dp.
                let oldFontName = self.font.fontName
                self.font = UIFont(name: oldFontName, size: newFontSize) // and set new font here .
            }
        }
    }
}
