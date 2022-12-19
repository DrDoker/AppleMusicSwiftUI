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
					Label("Library", systemImage: "play.square.stack.fill")
				}
			RadioView()
				.tabItem {
					Label("Radio", systemImage: "dot.radiowaves.left.and.right")
				}
			SearchView()
				.tabItem {
					Label("Search", systemImage: "magnifyingglass")
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
