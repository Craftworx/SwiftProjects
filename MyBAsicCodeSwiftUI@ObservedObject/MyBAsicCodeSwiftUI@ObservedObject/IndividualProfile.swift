//
//  IndividualProfile.swift
//  MyBAsicCodeSwiftUI@ObservedObject
//
//  Created by Al on 13/12/2020.
//

import Foundation
import Combine

class IndividualProfile: ObservableObject {
    
    @Published var name = ""
    @Published var age = 0
    @Published var opennessScore = 0
    @Published var conscientiousnessScore = 0
    @Published var extraversionScore = 0
    @Published var agreablenessScore = 0
    @Published var neuroticismScore = 0
   
    init(name: String, age: Int) {
        self.age = age
        self.name = name
    }
    func increaseOpennessScore() {
            self.opennessScore += 1
    }
}
