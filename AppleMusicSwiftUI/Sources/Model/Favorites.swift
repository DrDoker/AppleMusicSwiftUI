//
//  FavoritesModel.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 18/12/2022.
//

import Foundation

struct Favorites {
	let id = UUID()
	var title: String
	var description: String
	var image: String
}

extension Favorites {
	static var data = [
		Favorites(
			title: "indie + chill",
			description: "Gentle indie pop and rock melodies that make moments better.",
			image: AssetsImages.indie.string),
		Favorites(
			title: "Episode 576",
			description: "Music from Wizkid, Kobe JT, and Cajmere.",
			image: AssetsImages.episode.string),
		Favorites(
			title: "Iconic Duets with Sabi",
			description: "Iconic Duets to celebrate Apple Music Sing.",
			image: AssetsImages.iconic.string),
		Favorites(
			title: "In My Room",
			description: "Close the door, find a comfy corner, and get in your feelings.",
			image: AssetsImages.relax.string)
	]
}
