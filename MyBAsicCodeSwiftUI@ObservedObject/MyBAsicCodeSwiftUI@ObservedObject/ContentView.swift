//
//  ContentView.swift
//  MyBAsicCodeSwiftUI@ObservedObject
//
//  Created by Al on 11/12/2020.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var profileOfBob = IndividualProfile(name: "Bob", age: 36)
    // attention ne peut être placé que ici, ni au top ni en local ! 
    var body: some View {
        HStack {
            VStack {
                Text("Openness: ")
                Text("\(profileOfBob.opennessScore)")
                Button("Augmenter"){
                    //profileOfBob.opennessScore += 1
                    profileOfBob.increaseOpennessScore() 
                }
            }
            VStack {
                Text("Conscientiousness: ")
                Text("\(profileOfBob.conscientiousnessScore)")
                Button("Augmenter"){
                    profileOfBob.conscientiousnessScore += 1
                    //profileOfBob.increaseOpennessScore() marche pas
                }
                Button(action: {}, label: {
                        /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                })
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

