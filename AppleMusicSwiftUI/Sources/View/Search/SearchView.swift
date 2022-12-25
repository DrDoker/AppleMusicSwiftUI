//
//  SearchView.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 18/12/2022.
//

import SwiftUI

struct SearchView: View {
	@State private var searchText = String()
	@State private var stations = SearchModel.data
	var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
	
	var body: some View {
		NavigationStack {
			ScrollView(.vertical, showsIndicators: false) {
				
				VStack(alignment: .leading, spacing: 10) {
					Text("Browse Categories")
						.font(.system(size: 22, weight: .bold))
						.padding(.leading)
					
					LazyVGrid(columns: columns) {
						ForEach(stations, id: \.id) { item in
							SearchItemView(title: item.title, image: item.image)
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
				prompt: "Search"
			)
			.navigationBarTitle("Search")
		}
	}
}

struct SearchView_Previews: PreviewProvider {
	static var previews: some View {
		SearchView()
	}
}
