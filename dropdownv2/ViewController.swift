//
//  ViewController.swift
//  dropdownv2
//
//  Created by Ron Rith on 5/23/18.
//  Copyright © 2018 Ron Rith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnDrop: UIButton!
    @IBOutlet weak var tblView: UITableView!
    var fruitList = ["Dara1","See2","Welcome3","WeDara4","SeeAgain5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.isHidden = true
    }
    @IBAction func btnAction(_ sender: Any) {
        if tblView.isHidden {
            animat(toogle: true)
        }else{
            animat(toogle: false)
        }
    }
    func animat(toogle: Bool){
        if toogle{
            UIView.animate(withDuration: 0.3) {
                self.tblView.isHidden = false
            }
        }else{
            UIView.animate(withDuration: 0.3) {
                self.tblView.isHidden = true
            }
        }
        
    }
    
}

extension ViewController: UITableViewDelegate,UITableViewDataSource{
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruitList.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath)
        cell.textLabel?.text = fruitList[indexPath.row]
        return cell
    }
    
    
}

