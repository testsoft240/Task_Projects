//
//  ViewController.swift
//  MaxProfit
//
//  Created by MAC240 on 05/10/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    @IBOutlet weak var tblView: UITableView!
    
   var sharesArray = ["L&T","NHPC","SBICard","Appollo","Edelweiss","ITC","TCS","CEAT","HDFCBank","PowerGrid","AXISBank","BajajFinsv","CIPLA","EKC","EMCO"]
    var buyArray = ["100.00","25.60","80.00","250.00","290.24","153.95","456.00","200.00","806.00","190.00","30.50","31.60","140.00","80.50","25.60"]
    
    var sellArray = ["112.00","28.80","85.40","195.00","62.80","244.94","561.00","205.44","1008.50","565.45","80.54","81.65","157.45","88.50","00.45"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        tblView.dataSource = self
        tblView.delegate = self
    
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sharesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! myCell
        cell.sharesName.text = sharesArray[indexPath.row]
        cell.sellAmt.text = sellArray[indexPath.row]
        cell.buyAmt.text = buyArray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let VC = storyboard?.instantiateViewController(identifier: "calculateMAxViewController") as! calculateMAxViewController
        VC.getShareName = sharesArray[indexPath.row]
        VC.getsellAmt = Double(sellArray[indexPath.row]) ?? 0.0
        VC.getBuyAmt = Double(buyArray[indexPath.row]) ?? 0.0
        self.navigationController?.pushViewController(VC, animated: true)
    }
    
}


class myCell : UITableViewCell{
    
    @IBOutlet weak var sharesName: UILabel!
    @IBOutlet weak var buyAmt: UILabel!
    @IBOutlet weak var sellAmt: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
