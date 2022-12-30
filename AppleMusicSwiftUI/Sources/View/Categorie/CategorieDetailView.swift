//
//  CategorieDetail.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 26/12/2022.
//

import SwiftUI

struct CategorieDetailView: View {
	
	var musicCategories: MusicCategories
	
    var body: some View {
		NavigationStack {
			ScrollView(.vertical, showsIndicators: false) {
				VStack(spacing: 15) {
					if let favorites = musicCategories.favorites {
						Divider()
						FavoriteCategoriesView(favorites: favorites)
						Divider()
					}
					
					if let first = musicCategories.first {
						HorizontalCategoriView(items: first)
					}
					
					if let second = musicCategories.second {
						HorizontalCategoriView(items: second)
					}
				}
			}
			.padding(.bottom, 65)
			.navigationTitle(musicCategories.title)
		}
    }
}

struct CategorieDetailView_Previews: PreviewProvider {
    static var previews: some View {
		CategorieDetailView(musicCategories: MusicCategories.data.first!)
    }
}
