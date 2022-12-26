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
					Label(Strings.TabView.libraryTab, systemImage: SFSymbols.library.string)
				}
			RadioView()
				.tabItem {
					Label(Strings.TabView.radioTab, systemImage: SFSymbols.radio.string)
				}
			SearchView()
				.tabItem {
					Label(Strings.TabView.searchTab, systemImage: SFSymbols.search.string)
				}
		}
		.tint(Colors.main)		
	}
}

struct MainTabView_Previews: PreviewProvider {
	static var previews: some View {
		MainTabView()
	}
}
