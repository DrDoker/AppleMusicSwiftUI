//
//  SearchView.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 18/12/2022.
//

import SwiftUI

struct SearchView: View {
	@State private var text = ""
	
	var body: some View {
		NavigationStack {
			ScrollView(.vertical, showsIndicators: false) {
				Divider()
				FavoritesView()
				Divider()
				StationsView()
			}
			.padding(.bottom, 70)
			.searchable(text: $text, placement: .navigationBarDrawer(displayMode: .always), prompt: "Search")
			.navigationBarTitle("Search")
		}
	}
	
}

struct SearchView_Previews: PreviewProvider {
	static var previews: some View {
		SearchView()
	}
}
