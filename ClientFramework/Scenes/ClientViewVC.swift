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

public class ClientViewVC: UIViewController {

    public var viewModel:ClientViewModel!
    public var delegate: LoginDelegate!
    var tbView:UITableView!
    
    public init() {
        super.init(nibName: "ClientViewVC", bundle: Bundle(for: ClientViewVC.self))
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .gray
        
        tbView = UITableView(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height))
        tbView.delegate = self
        tbView.dataSource = self
        tbView.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
        tbView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(tbView)
        
    }

}
extension ClientViewVC: UITableViewDelegate, UITableViewDataSource {
 
    public func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell")! as UITableViewCell
        cell.textLabel?.text = "client - \(indexPath.row)"
        return cell
    }
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let delegate = self.delegate{
            self.dismiss(animated: true) {
                delegate.loginCallBack(token: "client - \(indexPath.row)")
            }
        }
    }
}

