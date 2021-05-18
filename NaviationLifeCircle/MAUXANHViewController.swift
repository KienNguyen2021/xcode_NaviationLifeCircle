//
//  MAUXANHViewController.swift
//  NaviationLifeCircle
//
//  Created by Kien Nguyen on 2021-05-17.
//

import UIKit

class MAUXANHViewController: UIViewController {

    var hoten: String!
    
    
    @IBOutlet weak var txtHoTenXanh: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("🦋🦋🦋🦋🦋🦋🦋")
        
        txtHoTenXanh.text = hoten
        
        print("View 2 - Xanh : Did Load ")
    }
    

    // after viewdidload, view Will appear :
        override func viewWillAppear(_ animated: Bool) {
            
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
