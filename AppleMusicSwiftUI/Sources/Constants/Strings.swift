//
//  Strings.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 26/12/2022.
//

import Foundation

enum Strings {
	enum TabView {
		static let libraryTab = "Library"
		static let radioTab = "Radio"
		static let searchTab = "Search"
	}
	
	enum Player {
		static let artist = "Eminem"
		static let song = "Lost Yourself"

		static var songTitle: String {
			Strings.Player.artist + "-" + Strings.Player.song
		}
	}
	
	enum MenuPlayer {
		static let trash = "Trash"
		static let like = "Like"
	}

	enum MediaLibrary {
		static let navigationTitle = "Library"
		static let editButtonTitle = "Edit"
		static let doneButtonTitle = "Done"
		static let emptyLibraryTitle = "Search your music?"
		static let emptyLibrarySubtitle = "All your music which you buy in iTunes Store stores here."
	}
	
	enum Radio {
		static let navigationTitle = "Radio"
		static let stationsTitle = "Stations"
	}
	
	enum Search {
		static let navigationTitle = "Search"
		static let searchPlaceholder = "Search"
		static let categoriesTitle = "Browse Categories"
	}
	
}
