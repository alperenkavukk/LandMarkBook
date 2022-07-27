//
//  ViewController.swift
//  landmarkBook
//
//  Created by Alperen Kavuk on 24.07.2022.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var landmarkNames = [String]()
    var landmarkImages = [UIImage]()
    var choseLandMarkNames=""
    var choseLandMarkImage=UIImage()
    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.dataSource=self
        tableview.delegate=self

       //landmark  book data
        landmarkNames.append("Colosseum")
        landmarkNames.append("Great Wall")
        landmarkNames.append("Kremlin")
        landmarkNames.append("Stone henge")
        landmarkNames.append("taj mahal")
        
        landmarkImages.append(UIImage(named: "colosseum")!)
        landmarkImages.append(UIImage(named: "greatwall")!)
        landmarkImages.append(UIImage(named: "kremlin")!)
        landmarkImages.append(UIImage(named: "stonehenge")!)
        landmarkImages.append(UIImage(named: "taçmahal")!)
        
        navigationItem.title="Landmark Book"
        


}
    func tableView(_ tableView: UITableView, commit editingStyle:UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            landmarkNames.remove(at: indexPath.row)
            landmarkImages.remove(at: indexPath.row)
            tableview.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }
   

    func   tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=UITableViewCell()
        cell.textLabel?.text=landmarkNames[ indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count
    }
        
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        choseLandMarkNames=landmarkNames[indexPath.row]
        choseLandMarkImage=landmarkImages[indexPath.row]
        
        performSegue(withIdentifier: "toImageViewControl", sender: nil)
    }
    //karşıdaki verileri getirme
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="toImageViewControl"{
            let destinationVC=segue.destination as! secondViewController
            destinationVC.selectLandMarkName=choseLandMarkNames
            destinationVC.selectLandMarkImage=choseLandMarkImage
             
        }
    }

}

