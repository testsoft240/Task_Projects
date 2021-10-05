//
//  secondViewController.swift
//  LoginDesign
//
//  Created by MAC240 on 04/10/21.
//

import UIKit

class secondViewController: UIViewController {

    
    @IBOutlet weak var imgBorder: UIView!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var signInBtn: UIButton!
 
    @IBOutlet weak var credentialView: UIView!
    
    @IBOutlet weak var textfieldView: UIView!
    @IBOutlet weak var txtfieldImgView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.2361768186, green: 0.5202947259, blue: 0.8708894849, alpha: 1)
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
