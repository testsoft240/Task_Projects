//
//  ViewController.swift
//  LoginDesign
//
//  Created by MAC240 on 04/10/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgBorder: UIView!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var signInBtn: UIButton!
 
    @IBOutlet weak var credentialView: UIView!
    
    @IBOutlet weak var textfieldView: UIView!
    @IBOutlet weak var txtfieldImgView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgView.layer.cornerRadius = 35
        imgBorder.layer.cornerRadius = 40
        signInBtn.layer.cornerRadius = 10
        
        textfieldView.roundCorners(corners: [.topLeft,.bottomLeft], radius: 10)
        txtfieldImgView.roundCorners(corners: [.topRight,.bottomRight], radius: 10)
        
        imgBorder.layer.shadowRadius = 1
        imgBorder.layer.shadowColor = UIColor.lightGray.cgColor
        imgBorder.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        imgBorder.layer.shadowOpacity = 0.5
        imgBorder.layer.masksToBounds = false
    }


}



extension UIView {
   func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
}
