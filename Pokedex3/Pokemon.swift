//
//  Pokemon.swift
//  Pokedex3
//
//  Created by RahulSalvikar on 10/01/17.
//  Copyright © 2017 Rahul Salvikar. All rights reserved.
//

import Foundation
import Alamofire

class Pokemon{
   private var _name: String!
   private var _pokedexId: Int!
    private var _description: String!
    private var _type: String!
    private var _defense: String!
    private var _height: String!
    private var _weight: String!
    private var _attack: String!
    private var _nextEvolutionTxt: String!
    private var _pokemonURL: String!
    
    var description : String {
        if _description == nil{
            _description = ""
        }
        return _description
    }
    
    var type : String{
        if _type == nil{
            _type = ""
        }
        return _type
    }
    
    var defense : String {
        if _defense == nil{
            _defense = ""
        }
        return _defense
    }
    
    var height : String {
        if _height == nil{
            _height = ""
        }
        return _height
    }
    var weight: String{
        if _weight == nil{
            _weight = ""
        }
        return _weight
    }
    
    var attack:String{
        if _attack == nil{
            _attack = ""
        }
        return _attack
    }
    
    var nextEvolutionTxt: String{
        if _nextEvolutionTxt == nil{
            _nextEvolutionTxt =  ""
        }
        return _nextEvolutionTxt
    }
    
    var name: String{
        return _name
    }
    
    var pokedexId: Int{
        return _pokedexId
    }
    
    init(name:String, pokedexId:Int) {
        self._name = name
        self._pokedexId = pokedexId
        self._pokemonURL = "\(URL_BASE)\(URL_POKEMON)\(pokedexId)/"
    }
    
    func downloadPokemonDetails(completed: @escaping DownloadComplete) {
        Alamofire.request(self._pokemonURL).responseJSON { (responce) in
            print(responce.result.value)
            if let dict = responce.result.value as? Dictionary<String, AnyObject>{
                if let weight = dict["weight"] as? String{
                    self._weight = weight
                }
                
                if let height = dict["height"] as? String{
                    self._height = height
                }
                
                if let attack = dict["attack"] as? Int{
                    self._attack = "\(attack)"
                }
                
                if let defense = dict["defense"] as? Int{
                    self._defense = "\(defense)"
                }
            }
            completed()
        }
        
        
    }
}
