//
//  ViewController.swift
//  appSuggest
//
//  Created by Cassia Franco on 17/08/2019.
//  Copyright © 2019 Cassia Franco. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var elementos = [1,2,3,4,5,6]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return elementos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier =  "appCell"
        let cell = tableView.dequeueReusableCell(withIdentifier:  cellIdentifier , for : indexPath)
        return cell
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func carregarMaisDados(){
        let novaLista = [1,2,3,4,5,6]
        elementos.append(contentsOf: novaLista)
        
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let ultimoItem = elementos.count - 1
        if indexPath.row == ultimoItem{
            carregarMaisDados()
        }
    }

}

