//
//  ColoursTableVC.swift
//  RandomColours
//
//  Created by Admin on 02/01/2024.
//

import UIKit

class ColoursTableVC: UIViewController {
    
    var colors: [UIColor] = []
    
    enum Cells {
        static let colorCell = "ColorCell"
    }
    
    enum Segues{
        static let toDetail = "ToColorsDetailVC"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColors()
    }
    
    func addRandomColors () {
        
        for _ in 0..<50 {
            colors.append(.random()) // changed here to use func from added Swift file
            
        }
    }
    
    //The generating colors func connected directly to the subclass - ColoursTableVC - > we move it to the additional Swift file.
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVc = segue.destination as! ColoursDetailVC // casting - telling that it corresponds to  Colours variable from second View Controller
        // 'destination' whenever the segue is pointing to - pass to that direction
        destVc.color = sender as?UIColor
        // 'sender' means give me that object no matter what type is it - need to be specified
        
    }
}

extension ColoursTableVC: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView .dequeueReusableCell(withIdentifier: Cells.colorCell) else {
            return UITableViewCell()
            //returns to emty cell if value nil
        }
        cell.backgroundColor = colors[indexPath.row]
        // making color to update dynamically, whatever row we are on - send color to that number
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Sender - passing data to DetailsVC whenever the row we are on pass this color
        let color = colors[indexPath.row]
        performSegue(withIdentifier: Segues.toDetail, sender: color)
    }
}
