//
//  DetailTableViewController.swift
//  Reference UIKit
//
//  Created by Abdurakhmon Jamoliddinov on 12/22/20.
//

import UIKit

class DetailTableViewController: UITableViewController {
    
    //    MARK: - Properties
    
    var philosophers = ["Socrates", "Plato", "Aristotle", "Kant", "Descartes", "Marx", "Nietzche", "Wittgenstein", "Confucius", "Aquinas", "Locke", "Hume", "Rousseau", "Sartre", "Mill", "Foucault", "Kierkegaard", "Hegal", "de Beauvoir", "Spinoza", "Machiavelli", "Avicenna", "Hobbes", "Camus"]
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return philosophers.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        
        cell.textLabel?.text = philosophers[indexPath.item]
        
        return cell
    }
    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let vc = DetailViewController()
//        vc.data = philosophers[indexPath.item]
//        navigationController?.pushViewController(vc, animated: true)
//    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let cell = sender as? UITableViewCell
        
        if segue.identifier == "Go to Detail" {
            if let dvc = segue.destination as? DetailViewController {
                dvc.data = cell?.textLabel?.text
                
            } else if let nvc = segue.destination as? UINavigationController,
                      let dvc = nvc.visibleViewController as? DetailViewController {
                dvc.data = cell?.textLabel?.text
            }
        }
    }
}
