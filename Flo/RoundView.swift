//
//  RoundView.swift
//  Flo
//
//  Created by Deep Parekh on 4/7/17.
//  Copyright © 2017 Parekh Bros. All rights reserved.
//

import UIKit

class RoundView: UIView {
    var fillColor: UIColor?
    
    var content: UIView? {
        didSet {
            if let content = content {
                self.addSubview(content)
                content.translatesAutoresizingMaskIntoConstraints = false
                content.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
                content.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {
        let circlePath = UIBezierPath(ovalIn: rect)
        fillColor?.setFill()
        circlePath.fill()
    }
}
