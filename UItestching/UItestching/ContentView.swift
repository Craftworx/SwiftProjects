//
//  ContentView.swift
//  UItestching
//
//  Created by Al on 04/12/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Text(/*@START_MENU_TOKEN@*/"Salut !"/*@END_MENU_TOKEN@*/)
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .foregroundColor(Color.white)
            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.orange/*@END_MENU_TOKEN@*/)
            .blur(radius: 1.0)
            
          
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()

        }
    }
}
