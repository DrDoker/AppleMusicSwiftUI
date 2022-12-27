//
//  SearchView.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 18/12/2022.
//

import SwiftUI

struct SearchView: View {
	@State private var searchText = String()
	private var musicCategories = MusicCategories.data
	
	var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
	
	var searchResults: [MusicCategories] {
		if searchText.isEmpty {
			return musicCategories
		} else {
			return musicCategories.filter { $0.title.localizedCaseInsensitiveContains(searchText) }
		}
	}
	
	var body: some View {
		NavigationStack {
			ScrollView(.vertical, showsIndicators: false) {
				
				VStack(alignment: .leading, spacing: 10) {
					Text(Strings.Search.categoriesTitle)
						.font(.system(size: 20, weight: .bold))
						.padding(.leading)
					
					LazyVGrid(columns: columns) {
						ForEach(searchResults, id: \.id) { item in
							
							NavigationLink(destination: CategorieDetailView(musicCategories: item)) {
								SearchItemView(title: item.title, image: item.image)
							}
						}
					}
					.padding(.horizontal)
					.padding(.bottom, 10)
				}
			}
			.padding(.bottom, 65)
			.searchable(
				text: $searchText,
				placement: .navigationBarDrawer(displayMode: .always),
				prompt: Strings.Search.searchPlaceholder
			) {
				ForEach(searchResults, id: \.id) { item in
					SearchItemView(title: item.title, image: item.image).searchCompletion(item.title)
				}
			}
			.navigationBarTitle(Strings.Search.navigationTitle)
		}
	}
}

struct SearchView_Previews: PreviewProvider {
	static var previews: some View {
		SearchView()
	}
}



