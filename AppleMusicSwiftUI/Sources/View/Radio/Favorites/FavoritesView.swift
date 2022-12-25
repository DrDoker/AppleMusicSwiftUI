//
//  HorizontalGridView.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 18/12/2022.
//

import SwiftUI

struct FavoritesView: View {
	
	@State private var favorites = FavoritesModel.data
	var rows: [GridItem] = Array(repeating: .init(.flexible()), count: 1)
	
	var body: some View {
		ScrollView(.horizontal, showsIndicators: false) {
			LazyHGrid(rows: rows) {
				ForEach(favorites, id: \.id) { item in
					FavoritesItemView(title: item.title, description: item.description, image: item.image)
				}
			}
			.padding(.horizontal)
		}
	}
}

struct HorizontalGridView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
