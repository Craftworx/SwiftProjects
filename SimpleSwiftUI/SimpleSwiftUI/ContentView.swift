//
//  ContentView.swift
//  SimpleSwiftUI
//
//  Created by Guillaume Gekière on 06/12/2020.
//  var hanzi: String = “吃饭” "πολυπηονι"

import SwiftUI

// CaseIterable est un protocole, il permet d'iterer entre les différents cas, il ajoute aussi de nouvelles méthodes à l'enum (entre autre "allCases")

enum AvailableImageMap: String, CaseIterable {
    
	case Gk_G5 = "Gk_G5"
	case Gk_F5 = "Gk_F5"
	case Gk_E5 = "Gk_E5"
	case Gk_D5 = "Gk_D5"
	case Gk_C5 = "Gk_C5"
	case Gk_B4 = "Gk_B4"
	case Gk_A4 = "Gk_A4"
	case Gk_G4 = "Gk_G4"
	case Gk_F4 = "Gk_F4"
	case Gk_E4 = "Gk_E4"
	case Gk_D4 = "Gk_D4"
	
	static func randomImageName() -> String {
		return AvailableImageMap.randomImage().rawValue
	}
	
	static func randomImage() -> AvailableImageMap {
		let randomIndex = Int(arc4random_uniform(UInt32(AvailableImageMap.allCases.count)))
		return AvailableImageMap.allCases[randomIndex]
	}
}

struct ContentView: View {
	
	@State var imgMap = AvailableImageMap.randomImage()
	
	func nextImage(currentImage: AvailableImageMap) -> AvailableImageMap {
		var result = currentImage
		//tirage au hasard tant que l'image est égale à l'image actuelle.
		if AvailableImageMap.allCases.count > 1 {
			repeat {
				result = AvailableImageMap.randomImage()
			} while result == currentImage
		} else {
			result = AvailableImageMap.randomImage()
		}
		
		/*
		Int 	--> nombre entier positif ou négatif de -x à x
		UInt	--> nombre entier positif (U = Unsigned) de 0 à x
		
		où
		*/
	
		return result
	}
	
    var body: some View {
		VStack {
			//Image Structure Swift UI
			Image(nsImage: NSImage(named: self.imgMap.rawValue)!)
				.scaledToFit()
				.background(
					Color.white)
			//String --> nom de l'asset
			//Image("")
			Button("Change Image") {
				self.imgMap = self.nextImage(currentImage: self.imgMap)
			}
		}.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
