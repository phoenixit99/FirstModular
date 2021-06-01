//
//  AuthenticationServices.swift
//  DISample
//
//  Created by NguyenHoang on 5/30/21.
//

import UIKit


public protocol AuthenticationProtocol {
    
    func doLogin(param: LoginParameters,completion: @escaping (Bool) -> Void)
    func getAccountDetail(userId: String)
    
}
public struct AuthenticationServices: AuthenticationProtocol {
  
    public func doLogin(param: LoginParameters, completion: @escaping (Bool) -> Void) {
        completion(true)
    }
    
    public func getAccountDetail(userId: String) {
        
    }

}
