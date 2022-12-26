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
		SearchModel(
			title: "Spatial Audio",
			image: AssetsImages.spatial.string),
		SearchModel(
			title: "Christmas",
			image: AssetsImages.christmas.string),
		SearchModel(
			title: "Replay'22",
			image: AssetsImages.replay.string),
		SearchModel(
			title: "Apple Music Live",
			image: AssetsImages.live.string),
		SearchModel(
			title: "Hits",
			image: AssetsImages.hits.string),
		SearchModel(
			title: "Acoustic",
			image: AssetsImages.acoustic.string),
		SearchModel(
			title: "Alternative",
			image: AssetsImages.alternative.string),
		SearchModel(
			title: "Classical",
			image: AssetsImages.classical.string),
		SearchModel(
			title: "Classic Rock",
			image: AssetsImages.classicRock.string),
		SearchModel(
			title: "Hard Rock",
			image: AssetsImages.hardRock.string),
		SearchModel(
			title: "Hip-Hop",
			image: AssetsImages.hipHop.string),
		SearchModel(
			title: "Metal",
			image: AssetsImages.metal.string),
		SearchModel(
			title: "Pop",
			image: AssetsImages.pop.string),
		SearchModel(
			title: "Reggae",
			image: AssetsImages.reggae.string),
		SearchModel(
			title: "Rock",
			image: AssetsImages.rock.string),
		SearchModel(
			title: "R&B/Soul",
			image: AssetsImages.soul.string)
	]
}
