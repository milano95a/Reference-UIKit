//
//  MultiCellTableViewController.swift
//  Reference UIKit
//
//  Created by Abdurakhmon Jamoliddinov on 12/22/20.
//

import UIKit

class MultiCellTableViewController: UITableViewController {
    
    //    MARK: - Properties
    
    var philosophers = ["Socrates", "Plato", "Aristotle", "Kant", "Descartes", "Marx", "Nietzche", "Wittgenstein", "Confucius", "Aquinas", "Locke", "Hume", "Rousseau", "Sartre", "Mill", "Foucault", "Kierkegaard", "Hegal", "de Beauvoir", "Spinoza", "Machiavelli", "Avicenna", "Hobbes", "Camus"]
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return philosophers.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.item % 2 == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "OddCell", for: indexPath)
            cell.backgroundColor = .white
            cell.textLabel?.text = philosophers[indexPath.item]
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "EvenCell", for: indexPath)
            cell.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
            cell.textLabel?.text = philosophers[indexPath.item]
            return cell
        }
    }
}
