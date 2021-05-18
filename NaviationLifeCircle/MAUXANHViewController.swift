//
//  MAUXANHViewController.swift
//  NaviationLifeCircle
//
//  Created by Kien Nguyen on 2021-05-17.
//

// this is the received Screen :

import UIKit

class MAUXANHViewController: UIViewController {

    var hoten: String!
    
    
    @IBOutlet weak var txtHoTenXanh: UITextField!
    
    
    @IBAction func GOTODO(_ sender: Any) {
        
        // 1: Tao Storyboard :
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        
        //2 :tao bien (variable) dai dien cho man hinh Do (3) :
        
        let manhinh3 = sb.instantiateViewController(identifier: "MAUDO") as! MAUDOViewController
        // its ID : MAUDO , Ep no ve MAUDO ViewController
        
        //3 : Push toi man hinh mau DO :
        
        self.navigationController?.pushViewController(manhinh3, animated: true)
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("🦋🦋🦋🦋🦋🦋🦋")
        
        //txtHoTenXanh.text = hoten  ; vi khi man hinh xanh khong nhan ten Tranformer 2017 to man hinh Do
        
        print("View 2 - Xanh : Did Load ")
    }
    

    // after viewdidload, view Will appear :
        override func viewWillAppear(_ animated: Bool) {
            
            txtHoTenXanh.text = hoten    // Moved here : to receive Tranformer 2017 from ManhinhDo
            
            print(" View 2 -Xanh: Will Appear ")
        }
        
        
    override func viewDidAppear(_ animated: Bool) {
        
        print(" View 2 -Xanh : Did Appear")
    }

    
    override func viewWillDisappear(_ animated: Bool) {
        
        print(" View 2 -Xanh : Will DisAppear ")
    }
    
    
    override func viewDidDisappear(_ animated: Bool) {
        
        print(" View 2 - Xanh : Did DisAppear ")
    }
    
    // Hoc ky life circle tren : appear and disappear
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
