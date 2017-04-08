//
//  FloController.swift
//  Flo
//
//  Created by Deep Parekh on 4/7/17.
//  Copyright © 2017 Parekh Bros. All rights reserved.
//

import UIKit

class FloController: UIViewController {
    
    let waterIndicator: WaterIndicator = {
        let waterIndicator = WaterIndicator(frame: .zero)
        waterIndicator.translatesAutoresizingMaskIntoConstraints = false
        waterIndicator.backgroundColor = .white
        return waterIndicator
    }()
    
    let plusText: UILabel = {
        let plus = UILabel(frame: .zero)
        plus.text = "+"
        plus.numberOfLines = 1
        plus.textColor = .white
        plus.font = UIFont.boldSystemFont(ofSize: 50)
        return plus
    }()
    
    let minusText: UILabel = {
        let plus = UILabel(frame: .zero)
        plus.text = "-"
        plus.numberOfLines = 1
        plus.textColor = .white
        plus.font = UIFont.boldSystemFont(ofSize: 50)
        return plus
    }()
    
    lazy var plusButton: RoundView = {
        let roundView = RoundView(frame: .zero)
        roundView.fillColor = .green
        roundView.backgroundColor = .white
        roundView.translatesAutoresizingMaskIntoConstraints = false
        roundView.content = self.plusText
        roundView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.handlePlus)))
        return roundView
    }()
    
    lazy var minusButton: RoundView = {
        let minusButton = RoundView(frame: .zero)
        minusButton.fillColor = .red
        minusButton.backgroundColor = .white
        minusButton.translatesAutoresizingMaskIntoConstraints = false
        minusButton.content = self.minusText
        minusButton.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.handleMinus)))
        return minusButton
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationItem.title = "FLO"
        initView()
        }
    
    private func initView() {
        // Plus Button
        view.addSubview(plusButton)
        plusButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 70).isActive = true
        plusButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        plusButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
        plusButton.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        // Minus Button
        view.addSubview(minusButton)
        minusButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -70).isActive = true
        minusButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        minusButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
        minusButton.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        // Water Indicator
        view.addSubview(waterIndicator)
        waterIndicator.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        waterIndicator.widthAnchor.constraint(equalToConstant: 330).isActive = true
        waterIndicator.topAnchor.constraint(equalTo: view.topAnchor, constant: 150).isActive = true
        waterIndicator.heightAnchor.constraint(equalToConstant: 330).isActive = true
    }
    
    func handleMinus() {
        print("TAPPED MINUS")
    }
    
    func handlePlus() {
        print("TAPPED PLUS")
    }
}

