//
//  Model.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 18/12/2022.
//

import Foundation
import SwiftUI

struct LibraryCategories {
	var title: String
	var icon: String
	let id = UUID()
}

extension LibraryCategories {
	static var data = [
		LibraryCategories(
			title: "Playlists",
			icon: SFSymbols.playlists.string),
		LibraryCategories(
			title: "Artists",
			icon: SFSymbols.artists.string),
		LibraryCategories(
			title: "Albums",
			icon: SFSymbols.albums.string),
		LibraryCategories(
			title: "Songs",
			icon: SFSymbols.songs.string),
		LibraryCategories(
			title: "Show and films",
			icon: SFSymbols.films.string),
		LibraryCategories(
			title: "Videoclips",
			icon: SFSymbols.videoclips.string),
		LibraryCategories(
			title: "Genres",
			icon: SFSymbols.genres.string),
		LibraryCategories(
			title: "Collection",
			icon: SFSymbols.collection.string),
		LibraryCategories(
			title: "Authors",
			icon: SFSymbols.authors.string),
		LibraryCategories(
			title: "Downloads",
			icon: SFSymbols.downloads.string)
	]
}
