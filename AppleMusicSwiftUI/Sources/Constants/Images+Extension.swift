//
//  Images+Extensions.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 19/12/2022.
//

import SwiftUI

enum AssetsImages: String {
	case cover = "cover"
	
	case indie = "indie"
	case episode = "episode576"
	case iconic = "iconic"
	case relax = "relax"
	
	case oneMusic = "1music"
	case country = "country"
	case dotty = "dotty"
	case jayde = "jayde"
	case tokyo = "tokyo"
	case rebecco = "rebecco"
	case hitfm = "hitfm"
	case rock = "rock"
}

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
}

extension Image {
	init(with assetsImages: AssetsImages) {
		self.init(assetsImages.rawValue)
	}
	
	init(with symbols: SFSymbols) {
		self.init(systemName: symbols.rawValue)
	}
}
