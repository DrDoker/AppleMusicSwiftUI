//
//  FavoriteCategoriesViewView.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 26/12/2022.
//

import SwiftUI

struct FavoriteCategoriesView: View {
	var favorites: [FavoriteCategories]
	var rows: [GridItem] = Array(repeating: .init(.flexible()), count: 1)
	
	var body: some View {
		ScrollView(.horizontal, showsIndicators: false) {
			LazyHGrid(rows: rows) {
					ForEach(favorites, id: \.id) { item in
						FavoriteCategoriesItemView(item: item)
				}
			}
			.padding(.horizontal)
		}
	}
}

struct FavoriteCategoriesView_Previews: PreviewProvider {
	static var previews: some View {
		FavoriteCategoriesView(favorites: FavoriteCategories.appleMusicLive)
	}
}
