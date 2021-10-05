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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        buyAmt.text = String(getBuyAmt)
        sellAmt.text = String(getsellAmt)
        shareName.text = getShareName
        
        Profit = getsellAmt - getBuyAmt
        print("profit amoubt \(Profit)")
        
        profitAmt.text = String(format: "%.2f", Profit)
    }

    @IBAction func calculateBtnClicked(_ sender: Any) {
        totalInvested.text = Amount.text
        CalculateProfit()
    }
    
    func CalculateProfit(){
        invested = totalInvested.text ?? ""
        let totalInvested = Double(invested) ?? 0.0
        let getTotal =  totalInvested / getBuyAmt
        let totalprofit = getTotal * Profit
        
        print("get profit is \(totalprofit)")
        
        totalProfit.text = String(format: "%.2f", totalprofit)
    }
    
}
