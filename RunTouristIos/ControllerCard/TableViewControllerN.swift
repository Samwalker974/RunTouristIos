//
//  TableViewController.swift
//  RunTouristIos
//
//  Created by SamuelS on 01/05/2021.
//

import UIKit

class TableViewControllerN: UITableViewController {
    
    var data = ["Cascade Niagara","Roche Ecrite","Parc du Colorado","Jardin de L'Etat"]
    var data1 = [UIImage.init(named : "cascadeNiagara"),UIImage.init(named : "rocheEcrite"),UIImage.init(named : "parcDuColorado"),UIImage.init(named : "jardinDeLetat")]
    var data3 = ["Cascade emblématique, situé à deux kilometres du centre ville de Sainte Suzanne 100 mètres d'altitude dispose d'un chemin libre d\'accès","La Roche Ecrite est l'une des destinations phare de l'île de La Réunion. Elle partage ce statut de vedette avec le volcan, le piton des Neiges, le Maïdo et le Grand Bénare.","Grand espace naturel de l\'île, situé au sommet de la commune de la Montagne a environ 650 mètres d\'altitudes","Anciennement appelé Jardin de Roy, servant de jardin en 1773 il abrite un Musée d\'histoire naturelle la visite faisant l\'occasion de découvrir de nombreux arbres exotiques"]
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
