//
//  SimpleTabTableViewController.swift
//  Reference UIKit
//
//  Created by Abdurakhmon Jamoliddinov on 12/21/20.
//

import UIKit

class SimpleTabTableViewController: UITableViewController {
    
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

}
