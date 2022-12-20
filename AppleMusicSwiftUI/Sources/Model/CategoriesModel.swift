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
		CategoriesModel(title: "Playlists", icon: Images.CategoriesIcons.playlists),
		CategoriesModel(title: "Artists", icon: Images.CategoriesIcons.artists),
		CategoriesModel(title: "Albums", icon: Images.CategoriesIcons.albums),
		CategoriesModel(title: "Songs", icon: Images.CategoriesIcons.songs),
		CategoriesModel(title: "Show and films", icon: Images.CategoriesIcons.films),
		CategoriesModel(title: "Videoclips", icon: Images.CategoriesIcons.videoclips),
		CategoriesModel(title: "Genres", icon: Images.CategoriesIcons.genres),
		CategoriesModel(title: "Collection", icon: Images.CategoriesIcons.collection),
		CategoriesModel(title: "Authors", icon: Images.CategoriesIcons.authors),
		CategoriesModel(title: "Downloads", icon: Images.CategoriesIcons.downloads)
	]
}
