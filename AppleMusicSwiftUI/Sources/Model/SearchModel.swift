//
//  SearchModel.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 25/12/2022.
//

import Foundation

struct SearchModel {
	let id = UUID()
	var title: String
	var image: String
}

extension SearchModel {
	static var data = [
		SearchModel(title: "Spatial Audio", image: "spatial"),
		SearchModel(title: "Christmas", image: "christmas"),
		SearchModel(title: "Replay'22", image: "replay"),
		SearchModel(title: "Apple Music Live", image: "live"),
		SearchModel(title: "Hits", image: "hits"),
		SearchModel(title: "Acoustic", image: "acoustic"),
		SearchModel(title: "Alternative", image: "alternative"),
		SearchModel(title: "Classical", image: "classical"),
		SearchModel(title: "Classic Rock", image: "classicRock"),
		SearchModel(title: "Hard Rock", image: "hardRock"),
		SearchModel(title: "Hip-Hop", image: "hipHop"),
		SearchModel(title: "Metal", image: "metal"),
		SearchModel(title: "Pop", image: "pop"),
		SearchModel(title: "Reggae", image: "reggae"),
		SearchModel(title: "Rock", image: "rock"),
		SearchModel(title: "R&B/Soul", image: "soul")
	]
}
