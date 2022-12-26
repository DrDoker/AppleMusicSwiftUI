//
//  SFSymbols.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 26/12/2022.
//

import SwiftUI

enum SFSymbols: String {
	case play = "play.fill"
	case forward = "forward.fill"
	
	case library = "play.square.stack.fill"
	case radio = "dot.radiowaves.left.and.right"
	case search = "magnifyingglass"
	
	case playlists = "music.note.list"
	case artists = "music.mic"
	case albums = "square.stack"
	case songs = "music.note"
	case films = "tv"
	case videoclips = "music.note.tv"
	case genres = "guitars"
	case collection = "person.2.crop.square.stack"
	case authors = "music.quarternote.3"
	case downloads = "arrow.down.circle"
	
	var string: String {
		rawValue
	}
}

extension Image {
	init(with symbols: SFSymbols) {
		self.init(systemName: symbols.rawValue)
	}
}

