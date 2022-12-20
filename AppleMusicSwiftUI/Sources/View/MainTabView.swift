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
					Label("Library", systemImage: Images.TabViewIcons.library)
				}
			RadioView()
				.tabItem {
					Label("Radio", systemImage: Images.TabViewIcons.radio)
				}
			SearchView()
				.tabItem {
					Label("Search", systemImage: Images.TabViewIcons.search)
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
