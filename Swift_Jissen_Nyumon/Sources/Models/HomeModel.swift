//
//  HomeModel.swift
//  Swift_Jissen_Nyumon
//
//  Created by MasayaNakakuki on 2024/10/31.
//

import Foundation

protocol Pokemon {
    var name: String { get }
    func attack()
}

struct Pikachu: Pokemon {
    let name = "Pikachu"

    func attack() {
        print("\(name) uses Thunderbolt!")
    }
}

struct Charmander: Pokemon {
    let name = "Charmander"

    func attack() {
        print("\(name) uses Flamethrower!")
    }
}

struct Pokeball<T: Pokemon> {
    var pokemon: T

    func release() {
        print("Go! \(pokemon.name)")
        pokemon.attack()
    }
}
