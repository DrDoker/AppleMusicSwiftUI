//
//  Model.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 18/12/2022.
//

import Foundation
import SwiftUI

struct Categories {
	var title: String
	var icon: String
	let id = UUID()
}

extension Categories {
	static var data = [
		Categories(
			title: "Playlists",
			icon: SFSymbols.playlists.string),
		Categories(
			title: "Artists",
			icon: SFSymbols.artists.string),
		Categories(
			title: "Albums",
			icon: SFSymbols.albums.string),
		Categories(
			title: "Songs",
			icon: SFSymbols.songs.string),
		Categories(
			title: "Show and films",
			icon: SFSymbols.films.string),
		Categories(
			title: "Videoclips",
			icon: SFSymbols.videoclips.string),
		Categories(
			title: "Genres",
			icon: SFSymbols.genres.string),
		Categories(
			title: "Collection",
			icon: SFSymbols.collection.string),
		Categories(
			title: "Authors",
			icon: SFSymbols.authors.string),
		Categories(
			title: "Downloads",
			icon: SFSymbols.downloads.string)
	]
}
