//
//  FavoriteCategoriesItemView.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 26/12/2022.
//

import SwiftUI

struct FavoriteCategoriesItemView: View {
	
	var item: FavoriteCategories
	
	var body: some View {
		VStack(alignment: .leading, spacing: 2) {
			Text(item.subtitle.uppercased())
				.font(.system(size: 10, weight: .semibold))
				.foregroundColor(Colors.subtitle)
			
			Text(item.firstTitle)
				.font(.system(size: 18))
				.lineLimit(1)
			
			Text(item.secondTitle)
				.font(.system(size: 18))
				.lineLimit(1)
				.padding(.bottom, 8)
				.foregroundColor(Colors.subtitle)
			
			Image(item.image)
				.resizable()
				.scaledToFill()
				.frame(minWidth: 0, maxWidth: .infinity)
				.frame(height: 230)
				.clipped()
				.cornerRadius(8)
				.shadow(radius: 5)
				.overlay(alignment: .bottomLeading)  {
					Text(item.description)
						.font(.system(size: 13, weight: .regular))
						.foregroundColor(Colors.imageDescription)
						.padding(.vertical, 10)
						.padding(.horizontal, 15)
				}
		}
		.frame(width: 360)
	}
}

struct FavoriteCategoriesItemView_Previews: PreviewProvider {
	static var previews: some View {
		FavoriteCategoriesItemView(item: FavoriteCategories.appleMusicLive.first!)
	}
}
