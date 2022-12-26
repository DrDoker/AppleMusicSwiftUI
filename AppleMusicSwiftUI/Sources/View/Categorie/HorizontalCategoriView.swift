//
//  HorizontalCategoriView.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 26/12/2022.
//

import SwiftUI

struct HorizontalCategoriView: View {
	var items: HorizontalCategori
	var rows: [GridItem] = Array(repeating: .init(.flexible()), count: 1)
	
	var body: some View {
		VStack(alignment: .leading, spacing: 2) {
			HStack {
				Text(items.title)
				Image(systemName: "chevron.right")
					.foregroundColor(.gray)
			}
			.font(.system(size: 22))
			.fontWeight(.bold)
			.padding(.leading)

			ScrollView(.horizontal, showsIndicators: false) {
				LazyHGrid(rows: rows) {
					ForEach(items.list, id: \.id) { item in
						HorizontalCategoriItemView(item: item)
					}
				}
				.padding(.horizontal)
				.frame(height: 250)
			}
		}
	}
}

struct HorizontalCategoriView_Previews: PreviewProvider {
	static var previews: some View {
		HorizontalCategoriView(items: HorizontalCategori.watch)
	}
}
