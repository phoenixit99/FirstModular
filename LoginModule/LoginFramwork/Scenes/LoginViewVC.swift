//
//  LoginViewVC.swift
//  DISample
//
//  Created by NguyenHoang on 5/30/21.
//

import UIKit

public protocol LoginDelegate {
    func loginCallBack(token: String)
}

public class LoginViewVC: UIViewController {

    public var viewModel:LoginViewModel!
    public var delegate: LoginDelegate!
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .gray
        let btnLoginAction = UIButton(type: .custom)
        btnLoginAction.setTitle("Login ActionView", for: .normal)
        btnLoginAction.addTarget(self, action: #selector(doLoginAction(_:)), for: .touchUpInside)
        btnLoginAction.backgroundColor = .red
        self.view.addSubview(btnLoginAction)
        btnLoginAction.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            btnLoginAction.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            btnLoginAction.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            btnLoginAction.widthAnchor.constraint(equalToConstant: 200),
            btnLoginAction.heightAnchor.constraint(equalToConstant: 50)

        ])
        
    }
    
    public func doLoginAction(userName: String,password: String,completion: @escaping (String) -> Void) {
       
    }
    @IBAction func doLoginAction(_ sender: Any) {
        print("do login action")
        self.viewModel.doLogin(param: LoginParameters(userName: "", password: ""), completion: { result in
            print("token value = ", result)
            if let delegate = self.delegate{
                self.dismiss(animated: true) {
                    delegate.loginCallBack(token: result)
                }
            }
        })
    }
}

