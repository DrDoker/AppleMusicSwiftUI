//
//  MainTabView.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 18/12/2022.
//

import SwiftUI

struct MainTabView: View {
	var body: some View {
		TabView {
			MediaLibraryView()
				.tabItem {
					Label("Library", systemImage: SFSymbols.library.rawValue)
				}
			RadioView()
				.tabItem {
					Label("Radio", systemImage: SFSymbols.radio.rawValue)
				}
			SearchView()
				.tabItem {
					Label("Search", systemImage: SFSymbols.radio.rawValue)
				}
		}
		.tint(.red)		
	}
}

struct MainTabView_Previews: PreviewProvider {
	static var previews: some View {
		MainTabView()
	}
}
