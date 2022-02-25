//
//  ViewController.swift
//  CatGame1
//
//  Created by Артём Симан on 24.02.22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tap: UIButton!
    let catToy = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubviews()
    
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let heightofButton = catToy.layer.frame.height
        catToy.layer.cornerRadius = heightofButton / 2
        setupTap()
    }
    
    private func setupSubviews() {
        let viewSize = self.view.bounds
        let superViewHeight = viewSize.height
        let superViewWidth = viewSize.width
        
        catToy.frame = CGRect(x: superViewWidth / 2 - 25, y: superViewHeight / 2 - 25, width: 50, height: 50)
        catToy.backgroundColor = UIColor.red
        catToy.setTitle("tap", for: .normal)
        self.view.addSubview(catToy)
        
        catToy.addTarget(self, action: #selector(btnTouched), for: .touchUpInside)
        
        self.view.addSubview(catToy)
    }
    
    @objc private func btnTouched() {
        let viewSize = self.view.bounds
        let superViewHeight = viewSize.height
        let superViewWidth = viewSize.width
        let maxY = Int(superViewHeight) - 50
        let maxX = Int(superViewWidth) - 50
        
        catToy.frame = CGRect(x: Double(Int.random(in: 0...maxX)),
                              y: Double(Int.random(in: 0...maxY)),
                              width: 50,
                              height: 50)
 
        print ("Touch")
    }
    
    private func setupTap() {
        let heightofButton = tap.layer.frame.height
        tap.layer.cornerRadius = heightofButton / 2
    }
}

