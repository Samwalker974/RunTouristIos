//
//  TableViewControllerO.swift
//  RunTouristIos
//
//  Created by SamuelS on 01/05/2021.
//

import UIKit

class TableViewControllerO: UITableViewController {

    var data = ["Aquarium","Bassin Comoran","Cirque De Mafate","Maido"]
    var data1 = [UIImage.init(named : "AquariumDeLaReunion"),UIImage.init(named : "BassinComoran"),UIImage.init(named : "CirqueDeMafate"),UIImage.init(named : "Maido")]
    var data3 = ["Aquarium privé au centre du port de plaisance de Saint-Gilles on y retrouve une diversité de poissons.","Point d eau alimenté par une cascade, situé a Saint Gilles, l endroit est facile d accès dépendant de la météo.","L\'un des trois grands cirques naturels massif du Piton des Neiges, géologiquement dessiner par des remparts qu\'ainsi une vue plongeante sur les crêtes voisines","Sommet montagneux, culmine à environ 2200 mètres d\'altitues, site naturel offrant un paranoma remarquable sur le Cirque de Mafate"]
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
