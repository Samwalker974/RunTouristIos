//
//  TableViewControllerS.swift
//  RunTouristIos
//
//  Created by SamuelS on 01/05/2021.
//

import UIKit

class TableViewControllerS: UITableViewController {

    var data = ["Cascade Langevin","Grand Anse","Piton Des Neiges","Saga du Rhum"]
    var data1 = [UIImage.init(named : "CascadeLangevin3"),UIImage.init(named : "GrandAnse2"),UIImage.init(named : "PitonDesNeiges1"),UIImage.init(named : "SagaDuRhum2")]
    var data3 = ["Situé dans le sud sauvage, composé de plusieurs chutes d\'eau il est la plus fréquenté et la plus célèbre offre des spots pour pique niquer et se baigner.","Lieu acceuillant une baie bordée de cocotiers et de lataniers avec un bassin connue pour sa plage corallienne très fréquenter.","Un des volan de l\'île dans un état endormie, marque le sommet edifice volcanique à 3070 mètres d\'altitudes, on dit qu\'il est endormis depuis 12000 ans","Site culturel et musée consacré a l\'histoire de la fabrication du rhum de la Réunion situé dans la commune de Saint Pierre"]
    override func viewDidLoad() {
        super.viewDidLoad()

    }

   
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let checkItem = tableView.dequeueReusableCell(withIdentifier: "Cell") as! CheckMyItem
        
            
        checkItem.name.text = data[indexPath.row]
        checkItem.img.image = data1[indexPath.row]
        checkItem.info.text = data3[indexPath.row]
        
    
        return checkItem
    }

}
