//
//  JsonFetchTableViewController.swift
//  Reference UIKit
//
//  Created by Abdurakhmon Jamoliddinov on 12/23/20.
//

import UIKit

class JsonFetchTableViewController: UITableViewController {

    var petitions = [JsonResult.Petition]()
    let address = "https://www.hackingwithswift.com/samples/petitions-1.json"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DispatchQueue.global(qos: .userInitiated).async {
            if let url = URL(string: self.address){
                if let data = try? Data(contentsOf: url){
                    if let result = try? JSONDecoder().decode(JsonResult.self, from: data){
                        DispatchQueue.main.async {
                            self.petitions = result.results
                            self.tableView.reloadData()
                        }
                    }
                }
            }
        }
        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return petitions.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)

        cell.textLabel?.text = petitions[indexPath.item].id

        return cell
    }
}
