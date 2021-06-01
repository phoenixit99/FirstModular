//
//  LoginViewModel.swift
//  DISample
//
//  Created by NguyenHoang on 5/30/21.
//

import UIKit

public protocol LoginViewModel {
    func doLogin(param: LoginParameters,completion: @escaping (String) -> Void)
}
public struct LoginViewModelImpl: LoginViewModel {
    
    private var authenServices: AuthenticationServices

    public init(authenServices: AuthenticationServices) {
        self.authenServices = authenServices
    }
    public func doLogin(param: LoginParameters,completion: @escaping (String) -> Void) {
        self.authenServices.doLogin(param: param) { result in
            // Todo
            completion("token-abcd")
        }
    }
}
