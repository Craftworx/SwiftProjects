//
//  User.swift
//  SwiftUIPremierPas
//
//  Created by Al on 06/12/2020.
//

import SwiftUI
import Combine

//ObservableObject --> protocol
// RAPPEL: un protocole définit un certain nombre de variables ou méthodes à implementer dans la classe qui implémente le procotole (ici: User)
class User: ObservableObject {
    @Published var id: Int = 0
    @Published var name: String = ""
    @Published var age: Int = 0
    @Published var description: String = ""
    @Published var imageName: String = ""
    
    init(name: String, age: Int) {
        self.age = age
        self.name = name
    }
}
