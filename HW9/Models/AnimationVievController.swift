//
//  AnimationVievController.swift
//  HW9
//
//  Created by Nur on 12/20/23.
//

import UIKit

class AnimationVievController: UIViewController {

    @IBOutlet var zoomViewWindow: UIImageView!
    @IBOutlet var planetView: UIImageView!
    
    @IBOutlet var zoomButtone: UIButton!
    @IBOutlet var clearButtone: UIButton!
    
    var originCoordinateX: CGFloat?
    var originCoordinateY: CGFloat?
    var originHeighy: CGFloat?
    var originWidth: CGFloat?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()

    }


    @IBAction func locateButtonePressed(_ sender: UIButton) {
        zoomButtoneActivate()
    }
    
    @IBAction func delocateBottonePressed(_ sender: UIButton) {
        cleerButtoneActivate()
    }
}

