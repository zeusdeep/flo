//
//  WaterIndicator.swift
//  Flo
//
//  Created by Deep Parekh on 4/7/17.
//  Copyright © 2017 Parekh Bros. All rights reserved.
//

import UIKit

class WaterIndicator: UIView {
    
    let π:CGFloat = CGFloat(M_PI)
    
    override func draw(_ rect: CGRect) {
        
        let bounds = rect
        
        // 1
        let center = CGPoint(x:bounds.width/2, y: bounds.height/2)
        
        // 2
        let radius: CGFloat = max(bounds.width, bounds.height)
        
        // 3
        let arcWidth: CGFloat = 76
        
        // 4
        let startAngle: CGFloat = 3 * π / 4
        let endAngle: CGFloat = π / 4
        
        // 5
        let path = UIBezierPath(arcCenter: center,
                                radius: radius/2 - arcWidth/2,
                                startAngle: startAngle,
                                endAngle: endAngle,
                                clockwise: true)
        
        // 6
        path.lineWidth = arcWidth
        UIColor.orange.setStroke()
        path.stroke()
        
        
    }
}
