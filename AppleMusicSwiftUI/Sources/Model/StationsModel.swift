//
//  StationsModel.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 19/12/2022.
//

import Foundation

struct StationsModel {
	let id = UUID()
	var title: String
	var description: String
	var image: String
}

extension StationsModel {

	static var data = [
		StationsModel(title: "indie + chill", description: "Gentle indie pop and rock melodies that make moments better.", image: "1music"),
		StationsModel(title: "Episode 576", description: "Music from Wizkid, Kobe JT, and Cajmere.", image: "rebecco"),
		StationsModel(title: "Iconic Duets with Sabi", description: "Iconic Duets to celebrate Apple Music Sing.", image: "hitfm"),
		StationsModel(title: "In My Room", description: "Close the door, find a comfy corner, and get in your feelings.", image: "rock"),
		
		StationsModel(title: "indie + chill", description: "Gentle indie pop and rock melodies that make moments better.", image: "1music"),
		StationsModel(title: "Episode 576", description: "Music from Wizkid, Kobe JT, and Cajmere.", image: "rebecco"),
		StationsModel(title: "Iconic Duets with Sabi", description: "Iconic Duets to celebrate Apple Music Sing.", image: "hitfm"),
		StationsModel(title: "In My Room", description: "Close the door, find a comfy corner, and get in your feelings.", image: "rock")
	]
}
