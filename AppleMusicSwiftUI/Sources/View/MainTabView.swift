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
					Label("Медиатека", systemImage: "play.square.stack.fill")
				}
			RadioView()
				.tabItem {
					Label("Радио", systemImage: "dot.radiowaves.left.and.right")
				}
			SearchView()
				.tabItem {
					Label("Поиск", systemImage: "magnifyingglass")
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
