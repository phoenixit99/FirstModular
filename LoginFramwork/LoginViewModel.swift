//
//  LoginViewModel.swift
//  DISample
//
//  Created by NguyenHoang on 5/30/21.
//

import UIKit

protocol LoginViewModel {
    func doLogin(param: LoginParameters,completion: @escaping (Bool) -> Void)
}
struct LoginViewModelImpl: LoginViewModel {
    
    private var authenServices: AuthenticationServices

    init(authenServices: AuthenticationServices) {
        self.authenServices = authenServices
    }
    func doLogin(param: LoginParameters,completion: @escaping (Bool) -> Void) {
        self.authenServices.doLogin(param: param) { result in
            // Todo
            completion(true)
        }
    }
}
