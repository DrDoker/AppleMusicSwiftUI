//
//  SearchModel.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 25/12/2022.
//

import Foundation

struct MusicCategories {
	let id = UUID()
	var title: String
	var image: String
}

extension MusicCategories {
	static var data = [
		MusicCategories(
			title: "Spatial Audio",
			image: AssetsImages.spatial.string),
		MusicCategories(
			title: "Christmas",
			image: AssetsImages.christmas.string),
		MusicCategories(
			title: "Replay'22",
			image: AssetsImages.replay.string),
		MusicCategories(
			title: "Apple Music Live",
			image: AssetsImages.live.string),
		MusicCategories(
			title: "Hits",
			image: AssetsImages.hits.string),
		MusicCategories(
			title: "Acoustic",
			image: AssetsImages.acoustic.string),
		MusicCategories(
			title: "Alternative",
			image: AssetsImages.alternative.string),
		MusicCategories(
			title: "Classical",
			image: AssetsImages.classical.string),
		MusicCategories(
			title: "Classic Rock",
			image: AssetsImages.classicRock.string),
		MusicCategories(
			title: "Hard Rock",
			image: AssetsImages.hardRock.string),
		MusicCategories(
			title: "Hip-Hop",
			image: AssetsImages.hipHop.string),
		MusicCategories(
			title: "Metal",
			image: AssetsImages.metal.string),
		MusicCategories(
			title: "Pop",
			image: AssetsImages.pop.string),
		MusicCategories(
			title: "Reggae",
			image: AssetsImages.reggae.string),
		MusicCategories(
			title: "Rock",
			image: AssetsImages.rock.string),
		MusicCategories(
			title: "R&B/Soul",
			image: AssetsImages.soul.string)
	]
}
