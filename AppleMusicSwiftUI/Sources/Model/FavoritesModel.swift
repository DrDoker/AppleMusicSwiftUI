//
//  FavoritesModel.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 18/12/2022.
//

import Foundation

struct FavoritesModel {
	let id = UUID()
	var title: String
	var description: String
	var image: String
}

extension FavoritesModel {

	static var data = [
		FavoritesModel(title: "indie + chill", description: "Gentle indie pop and rock melodies that make moments better.", image: AssetsImages.indie.rawValue),
		FavoritesModel(title: "Episode 576", description: "Music from Wizkid, Kobe JT, and Cajmere.", image: AssetsImages.episode.rawValue),
		FavoritesModel(title: "Iconic Duets with Sabi", description: "Iconic Duets to celebrate Apple Music Sing.", image: AssetsImages.iconic.rawValue),
		FavoritesModel(title: "In My Room", description: "Close the door, find a comfy corner, and get in your feelings.", image: AssetsImages.relax.rawValue)
	]
}
