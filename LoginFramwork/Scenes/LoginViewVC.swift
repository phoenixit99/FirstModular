//
//  LoginViewVC.swift
//  DISample
//
//  Created by NguyenHoang on 5/30/21.
//

import UIKit

public class LoginViewVC: UIViewController {

    var viewModel:LoginViewModel!
    
    public override func viewDidLoad() {
        super.viewDidLoad()
    }
    public func doLoginAction(userName: String,password: String,completion: @escaping (String) -> Void) {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.viewModel.doLogin(param: LoginParameters(userName: "", password: ""), completion: { result in
                completion(result)
            })
        }
    }
    @IBAction func doLoginAction(_ sender: Any) {
        
    }
}

