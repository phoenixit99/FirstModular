//
//  AuthenticationServices.swift
//  DISample
//
//  Created by NguyenHoang on 5/30/21.
//

import UIKit


protocol AuthenticationProtocol {
    
    func doLogin(param: LoginParameters,completion: @escaping (Bool) -> Void)
    func getAccountDetail(userId: String)
    
}
struct AuthenticationServices: AuthenticationProtocol {
  
    func doLogin(param: LoginParameters, completion: @escaping (Bool) -> Void) {
        completion(true)
    }
    
    func getAccountDetail(userId: String) {
        
    }

}
