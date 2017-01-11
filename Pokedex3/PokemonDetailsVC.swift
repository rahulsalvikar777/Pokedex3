//
//  PokemonDetailsVC.swift
//  Pokedex3
//
//  Created by RahulSalvikar on 11/01/17.
//  Copyright © 2017 Rahul Salvikar. All rights reserved.
//

import UIKit

class PokemonDetailsVC: UIViewController {

    var pokemon: Pokemon!
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var discriptionLbl: UILabel!
    @IBOutlet weak var typeLbl: UILabel!
    @IBOutlet weak var defenseLbl: UILabel!
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var pokedexLbl: UILabel!
    @IBOutlet weak var weightLbl: UILabel!
    @IBOutlet weak var bestActionLbl: UILabel!
    @IBOutlet weak var evoLbl: UILabel!
    @IBOutlet weak var currentEvoImg: UIImageView!
    @IBOutlet weak var nextEvoImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameLbl.text = pokemon.name.capitalized
        // Do any additional setup after loading the view.
    }
    @IBAction func backBtnAction(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
}
