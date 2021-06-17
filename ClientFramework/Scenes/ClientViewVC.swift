//
//  LoginViewVC.swift
//  DISample
//
//  Created by NguyenHoang on 5/30/21.
//

import UIKit

public protocol ClientInfoDelegate: AnyObject {
    func clientCallBack(clientTitle: String)
}

public class ClientViewVC: UIViewController {

    public var viewModel:ClientViewModel!
    public weak var delegate: ClientInfoDelegate!
    @IBOutlet weak var tbView: UITableView!
    
    
    public init() {
        super.init(nibName: "ClientViewVC", bundle: Bundle(for: ClientViewVC.self))
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        tbView.delegate = self
        tbView.dataSource = self
        tbView.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
        
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
                delegate.clientCallBack(clientTitle: "client - \(indexPath.row)")
            }
        }
    }
}

