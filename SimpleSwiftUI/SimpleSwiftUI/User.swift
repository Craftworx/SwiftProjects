//
//  User.swift
//  SimpleSwiftUI
//
//  Created by Guillaume Gekière on 06/12/2020.
//

import SwiftUI
import Combine
import CoreLocation


class User: ObservableObject {
	@Published var id: Int = 0
	@Published var name: String = ""
	@Published var age: Int = 0
	@Published var description: String = ""
	@Published var imageName: String = ""
	
//	var image: Image {
//		ImageStore.shared.image(name: imageName)
//	}
}
