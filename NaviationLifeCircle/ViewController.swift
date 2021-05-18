//
//  ViewController.swift
//  NaviationLifeCircle
//
//  Created by Kien Nguyen on 2021-05-17.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var txtHoTenVang: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       print(" View 1 - Vang : Did Load")
    }
// after viewdidload, view Will appear :
    override func viewWillAppear(_ animated: Bool) {
        
        print(" View 1 - Vang : Will appear ")
    }
    
// after appear, disappear function :
    
    override func viewDidAppear(_ animated: Bool) {
        
        print(" View 1 - Vang : Did Appear")
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        
        print(" View 1 - Vang : Will DisAppear ")
    }
    
    
    override func viewDidDisappear(_ animated: Bool) {
        
        print(" View 1 : Did DisAppear ")
    }
    
    
    @IBAction func GOTO_XANH(_ sender: Any) {
        
        // Create variable for a storyboard:
        
        let sb = UIStoryboard( name: "Main", bundle: nil)
        
        
        // Tao man hinh 2 mau xanh :
        
        let manhinh2 = sb.instantiateViewController(identifier: "MAUXANH") as! MAUXANHViewController
        
        //manhinh2.hoten=" Kelly & Kenny"
        
        // or nhap  truc tiep vo box o man hinh 1 :
        
        manhinh2.hoten = txtHoTenVang.text
        
        // Navigation PUSH (dua len san khau) or POP(duoi ra):
        
        self.navigationController?.pushViewController(manhinh2, animated: true)
    }
    

}

