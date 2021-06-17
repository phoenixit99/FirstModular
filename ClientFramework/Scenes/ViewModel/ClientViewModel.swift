//
//  LoginViewModel.swift
//  DISample
//
//  Created by NguyenHoang on 5/30/21.
//

import UIKit

public protocol ClientViewModel {
    func getListClient(completion: @escaping (String) -> Void)
}
public struct ClientViewModelImpl: ClientViewModel {
    
    private var authenServices: AuthenticationServices

    public init(authenServices: AuthenticationServices) {
        self.authenServices = authenServices
    }
    public func getListClient(completion: @escaping (String) -> Void) {
        self.authenServices.getListClient() { result in
            // Todo
            completion("token-abcd")
        }
    }
}
