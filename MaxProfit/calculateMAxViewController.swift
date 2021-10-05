//
//  calculateMAxViewController.swift
//  MaxProfit
//
//  Created by MAC240 on 05/10/21.
//

import UIKit

class calculateMAxViewController: UIViewController {

    
    @IBOutlet weak var Amount: UITextField!
    
    
    @IBOutlet weak var buyAmt: UILabel!
    @IBOutlet weak var shareName: UILabel!
    @IBOutlet weak var sellAmt: UILabel!    
    @IBOutlet weak var profitAmt: UILabel!
    
    @IBOutlet weak var totalInvested: UILabel!
    @IBOutlet weak var totalProfit: UILabel!
    
    var getShareName = ""
    var getsellAmt = 0.0
    var getBuyAmt = 0.0
    var getProfitAmt = ""
    
    var invested = ""
    var Profit = Double()
    
    @IBOutlet weak var stepperCount: UIStepper!
    override func viewDidLoad() {
        super.viewDidLoad()

        buyAmt.text = String(getBuyAmt)
        sellAmt.text = String(getsellAmt)
        shareName.text = getShareName
        
        Profit = getsellAmt - getBuyAmt
        print("profit amoubt \(Profit)")
        
        profitAmt.text = ""
        
//        Amount.text =  String(getBuyAmt)
//        stepperCount.minimumValue = getBuyAmt
        
     
    }

    @IBAction func calculateBtnClicked(_ sender: Any) {
        totalInvested.text = Amount.text
        CalculateProfit()
    }
    
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        print("click")
        var val = stepperCount.value
        print("get val is \(val) \(val * getBuyAmt)")
        Amount.text =  String(val * getBuyAmt)
    }
    
    
//    @objc func stepperValueChanged(_ sender:UIStepper!){
//        var val = stepperCount.value
//        print("get val is \(val) \(val * getBuyAmt)")
//        Amount.text =  String(val)
//    }
    
    func CalculateProfit(){
        invested = totalInvested.text ?? ""
        let totalInvested = Double(invested) ?? 0.0
        let getTotal =  totalInvested / getBuyAmt
        let totalprofit = getTotal * Profit
        
        print("get profit is \(totalprofit)")
        
        profitAmt.text = String(format: "%.2f", Profit)
        
        if Profit < 0  {
            profitAmt.textColor = UIColor.red
            totalProfit.textColor = UIColor.red
        }else{
            profitAmt.textColor = UIColor.green
            totalProfit.textColor = UIColor.green
        }
        
        totalProfit.text = String(format: "%.2f", totalprofit)
    }
    
}
