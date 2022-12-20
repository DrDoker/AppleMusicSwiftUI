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
		CategoriesModel(title: "Playlists", icon: SFSymbols.playlists.rawValue),
		CategoriesModel(title: "Artists", icon: SFSymbols.artists.rawValue),
		CategoriesModel(title: "Albums", icon: SFSymbols.albums.rawValue),
		CategoriesModel(title: "Songs", icon: SFSymbols.songs.rawValue),
		CategoriesModel(title: "Show and films", icon: SFSymbols.films.rawValue),
		CategoriesModel(title: "Videoclips", icon: SFSymbols.videoclips.rawValue),
		CategoriesModel(title: "Genres", icon: SFSymbols.genres.rawValue),
		CategoriesModel(title: "Collection", icon: SFSymbols.collection.rawValue),
		CategoriesModel(title: "Authors", icon: SFSymbols.authors.rawValue),
		CategoriesModel(title: "Downloads", icon: SFSymbols.downloads.rawValue)
	]
}
