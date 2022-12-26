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
		StationsModel(
			title: "Apple Music 1",
			description: "The new music that matters.",
			image: AssetsImages.oneMusic.string),
		StationsModel(
			title: "The Country Chart Show",
			description: "Gentle indie pop and rock melodies that make moments better.",
			image: AssetsImages.country.string),
		StationsModel(
			title: "The Dotty Show",
			description: "Festive classics and new favourites.",
			image: AssetsImages.dotty.string),
		StationsModel(
			title: "Jayde Donovan",
			description: "Keeping your workout honest as we ramp up to the holidays.",
			image: AssetsImages.jayde.string),
		StationsModel(
			title: "Tokyo Highway Radio",
			description: "Tokyo Highway: 2022.",
			image: AssetsImages.tokyo.string),
		StationsModel(
			title: "The Rebecca Judd Show",
			description: "Rebecca introduces Manchester producer [ K S R ].",
			image: AssetsImages.rebecco.string),
		StationsModel(
			title: "Hit FM",
			description: "Radio Station.",
			image: AssetsImages.hitfm.string),
		StationsModel(
			title: "Rock Classics Radio",
			description: "Jenn is joined by Gavin Rossdale of Bush.",
			image: AssetsImages.rockClassic.string)
	]
}
