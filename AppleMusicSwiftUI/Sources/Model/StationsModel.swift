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
		StationsModel(title: "Apple Music 1", description: "The new music that matters.", image: "1music"),
		StationsModel(title: "The Country Chart Show", description: "Gentle indie pop and rock melodies that make moments better.", image: "country"),
		StationsModel(title: "The Dotty Show", description: "Festive classics and new favourites.", image: "dotty"),
		StationsModel(title: "Jayde Donovan", description: "Keeping your workout honest as we ramp up to the holidays.", image: "jayde"),
		StationsModel(title: "Tokyo Highway Radio", description: "プレイリスト『Tokyo Highway：2022年』と共に、今年を振り返る.", image: "tokyo"),
		StationsModel(title: "The Rebecca Judd Show", description: "Rebecca introduces Manchester producer [ K S R ].", image: "rebecco"),
		StationsModel(title: "Hit FM", description: "Radio Station.", image: "hitfm"),
		StationsModel(title: "Rock Classics Radio", description: "Jenn is joined by Gavin Rossdale of Bush.", image: "rock")
	]
}
