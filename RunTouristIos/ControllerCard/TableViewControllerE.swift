//
//  TableViewControllerE.swift
//  RunTouristIos
//
//  Created by SamuelS on 01/05/2021.
//

import UIKit

class TableViewControllerE: UITableViewController {

    var data = ["Bassin La Paix","Notre Dame des Lave","Plaine des Sable","Voile de la Mariee"]
    var data1 = [UIImage.init(named : "BassinLaPaix"),UIImage.init(named : "NotreDameDesLaves"),UIImage.init(named : "PlaineDesSables"),UIImage.init(named : "VoileDeLaMariee")]
    var data3 = ["Le bassin la Paix est situé sur la rivière des Roches à la frontière des communes de Bras-Panon et de Saint-Benoît.","Eglise situé au Piton Sainte-Rose entouré par couches de parois rocheuse provenant de coulés de lave.","a route qui conduit au piton de la Fournaise traverse un paysage totalement lunaire : la plaine des Sables, étendue de scories et de roches volcaniques à plus de 2 000 mètres d’altitude.","NE LÉGENDE GRAVÉE DANS LA ROCHE La réputation de la cascade de Salazie est également liée à sa légende, celle d’un amour tragique sur fond de nature sauvage."]
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
