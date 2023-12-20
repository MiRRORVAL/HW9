//
//  SetupUI.swift
//  HW9
//
//  Created by Nur on 12/20/23.
//

import UIKit
extension AnimationVievController {
    func setupUI() {
        originCoordinateX = planetView.frame.origin.x
        originCoordinateY = planetView.frame.origin.y
        originHeighy = planetView.frame.size.height
        originWidth = planetView.frame.size.width
        clearButtone.layer.cornerRadius = 20
        zoomButtone.layer.cornerRadius = 20
        
        zoomViewWindow.frame.size.width = 200
        zoomViewWindow.frame.size.height = 200
        
        UIView.animate(withDuration: 7, delay: 0,
                       options: [.repeat, .autoreverse]) {
            self.planetView.frame.origin.y -= 80
        }
        UIView.animate(withDuration: 2, delay: 0, options: [.repeat, .autoreverse, .allowAnimatedContent, .allowUserInteraction]) {

            self.zoomViewWindow.layer.frame.origin.y = 320
            self.zoomViewWindow.layer.frame.origin.x = 70
            self.zoomViewWindow.frame.size.width += 40
            self.zoomViewWindow.frame.size.height += 40
        }
    }
    func zoomButtoneActivate() {
                zoomViewWindow.isHidden = false
                self.planetView.frame.size.width += 100
                self.planetView.frame.size.height += 100
                self.planetView.frame.origin.y -= 50
                self.planetView.frame.origin.x -= 50

        UIView.animate(withDuration: 0.5, delay: 0, options: [.allowAnimatedContent, .allowUserInteraction]) {
            self.zoomViewWindow.isHidden = false
            self.zoomButtone.layer.backgroundColor = .init(red: 1, green: 1, blue: 1, alpha: 0.7)
            self.zoomButtone.layer.backgroundColor = .init(red: 0, green: 0, blue: 0, alpha: 0.0)
            self.clearButtone.isHidden = false
        }
    }
    func cleerButtoneActivate() {
        UIView.animate(withDuration: 3, delay: 0, options: [.allowAnimatedContent, .allowUserInteraction]) {
            self.clearButtone.layer.backgroundColor = .init(red: 1, green: 1, blue: 1, alpha: 0.7)
            self.clearButtone.layer.backgroundColor = .init(red: 0, green: 0, blue: 0, alpha: 0.0)
            self.planetView.frame.origin.y = self.originCoordinateY!
            self.planetView.frame.origin.x = self.originCoordinateX!
            self.planetView.frame.size.width = self.originWidth!
            self.planetView.frame.size.height = self.originHeighy!
            self.clearButtone.isHidden = true
            self.zoomViewWindow.isHidden = true
        }
        setupUI()
    }
}

