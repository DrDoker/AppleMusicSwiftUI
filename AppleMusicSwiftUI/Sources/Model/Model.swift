//
//  Model.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 18/12/2022.
//

import Foundation
import SwiftUI

struct Model {
	var title: String
	var icon: String
	let id = UUID()
}

extension Model {

	static let data = [
		Model(title: "Playlists", icon: "music.note.list"),
		Model(title: "Artists", icon: "music.mic"),
		Model(title: "Albums", icon: "doc.circle"),
		Model(title: "Songs", icon: "music.note"),
		Model(title: "Show and films", icon: "film"),
		Model(title: "Videoclips", icon: "video.bubble.left"),
		Model(title: "Genres", icon: "tag"),
		Model(title: "Collection", icon: "tray.full"),
		Model(title: "Authors", icon: "person.circle"),
		Model(title: "Downloads", icon: "arrow.down.circle")
	]
}
