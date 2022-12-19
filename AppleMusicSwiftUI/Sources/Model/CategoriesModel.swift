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
		CategoriesModel(title: "Playlists", icon: "music.note.list"),
		CategoriesModel(title: "Artists", icon: "music.mic"),
		CategoriesModel(title: "Albums", icon: "doc.circle"),
		CategoriesModel(title: "Songs", icon: "music.note"),
		CategoriesModel(title: "Show and films", icon: "film"),
		CategoriesModel(title: "Videoclips", icon: "video.bubble.left"),
		CategoriesModel(title: "Genres", icon: "tag"),
		CategoriesModel(title: "Collection", icon: "tray.full"),
		CategoriesModel(title: "Authors", icon: "person.circle"),
		CategoriesModel(title: "Downloads", icon: "arrow.down.circle")
	]
}
