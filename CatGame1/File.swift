//
//  File.swift
//  CatGame1
//
//  Created by Артём Симан on 21.03.22.
//

import UIKit

extension UIView {
    func roundCorners(withRadius radius: CGFloat) {
        self.layer.cornerRadius = radius
        
        self.layer.sublayers?.forEach{
            $0.cornerRadius = radius
        }
        
    }
    
    func makeRound() {
        let side = min(self.frame.height, self.frame.width)
        roundCorners(withRadius: side / 2)
    }
    
    func addGradient(withColors colors: [UIColor]) {
        let gradient = CAGradientLayer()
        
        gradient.frame = self.bounds
        gradient.colors = colors.map{ $0.cgColor}
        
        gradient.startPoint = CGPoint(x: 1, y: 0);
        gradient.endPoint = CGPoint(x: 0, y: 1);
        self.layer.insertSublayer(gradient, at: 0)
    }
}
