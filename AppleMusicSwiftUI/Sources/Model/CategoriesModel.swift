//
//  Model.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 18/12/2022.
//

import Foundation
import SwiftUI

struct CategoriesModel {
	var title: String
	var icon: String
	let id = UUID()
}

extension CategoriesModel {
	static var data = [
		CategoriesModel(
			title: "Playlists",
			icon: SFSymbols.playlists.string),
		CategoriesModel(
			title: "Artists",
			icon: SFSymbols.artists.string),
		CategoriesModel(
			title: "Albums",
			icon: SFSymbols.albums.string),
		CategoriesModel(
			title: "Songs",
			icon: SFSymbols.songs.string),
		CategoriesModel(
			title: "Show and films",
			icon: SFSymbols.films.string),
		CategoriesModel(
			title: "Videoclips",
			icon: SFSymbols.videoclips.string),
		CategoriesModel(
			title: "Genres",
			icon: SFSymbols.genres.string),
		CategoriesModel(
			title: "Collection",
			icon: SFSymbols.collection.string),
		CategoriesModel(
			title: "Authors",
			icon: SFSymbols.authors.string),
		CategoriesModel(
			title: "Downloads",
			icon: SFSymbols.downloads.string)
	]
}
