//
//  MAUDOViewController.swift
//  NaviationLifeCircle
//
//  Created by Kien Nguyen on 2021-05-17.
//

import UIKit

class MAUDOViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func BackTo_PREVIOUS(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
    
        // truyen tham so vao View
        
        
        
    }
    
    
    @IBAction func BackTo_ROOT(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
        
        // ai la root thi show ra, khong truyen tham so vao View, nen false
    }
    
    
    // Goi dich danh 1 man hinh nao do de no chuyen toi - truyen tham so vo ViewController
    // Nen khai bao bao storyboard :
    // truyen 1 cai view vao la popToViewController :
    // POP nhung gi da di qua trong qua khu thoi :
    // toi ham moi la phai PUSH
    
    @IBAction func BackTo_VIEW(_ sender: Any) {
        
        //let sb = UIStoryboard(name: "main", bundle: nil)
       // let manhinhXanh = sb.instantiateViewController(identifier: "MAUXANH")
      //  self.navigationController?.popToViewController(manhinhXanh, animated: true)
        
        // all above not worked with "back to view"
        
        // solution : duyet man, chon viewControllers [],means back ve phan tu so 1,  no da luu khi di qua roi,moi lan PUSH qua mot man hinh, no save trong navigation
        
        let manhinh2 = self.navigationController?.viewControllers[1] as! MAUXANHViewController
        manhinh2.hoten = " Tranformer 2017"
        
        // Nhung no khong hien Tranformer 2017 ben man hinh MAUXANH, vi no khong qua vi no khong di qua ViewDidLoad o tren
        
        // Ep no ve man hinh Xanh : as! MAUXANHViewController, nen moi thay variable hoten duoc
        
        // neu muon ve man hinh ROOT thi [0]
        
        //man hinh2 da wrapped, unwrapped (!)roi moi lay ra sai :
        
        self.navigationController?.popToViewController(manhinh2, animated: true)
        
        // da unwrapped (!) manhinh 2 o tren roi, nen gio khong unwrapped man hinh 2 o day nua !
        
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
