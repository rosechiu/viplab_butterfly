//
//  LoginViewController.swift
//  VIPLAB_Butterfly
//
//  Created by viplab on 2021/3/1.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var txv_email: UITextField!
    @IBOutlet var txv_password: UITextField!
    @IBOutlet var btn_login: UIButton!
    @IBOutlet var image_background: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //取得螢幕的高度與寬度
        let screen_height = view.frame.height
        let screen_width = view.frame.width
        
        //建立物件初始位置
        txv_email.frame = CGRect(x: screen_width*0.2, y: screen_height*0.3, width: screen_width*0.6, height: screen_height*0.05)
        txv_password.frame = CGRect(x: screen_width*0.2, y: screen_height*0.4, width: screen_width*0.6, height: screen_height*0.05)
        btn_login.frame = CGRect(x: screen_width*0.2, y: screen_height*0.5, width: screen_width*0.6, height: screen_height*0.05)
        btn_login.layer.cornerRadius = btn_login.frame.height/2
        
        //TextField的delegate指向controller
        txv_email.delegate = self
        txv_password.delegate = self
        
        //TextField的keyboardType
        txv_email.keyboardType = .emailAddress
        txv_password.keyboardType = .emailAddress
        
        //背景圖片
        image_background.image = UIImage(named: "home")
        image_background.alpha = 0.3  //透明度
        image_background.frame = CGRect(x: 0, y: 0, width: screen_width, height: screen_height)
    }

    //收起鍵盤
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}
