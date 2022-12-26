//
//  HorizontalGridItemView.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 18/12/2022.
//

import SwiftUI

struct FavoritesItemView: View {
	var title: String
	var description: String
	var image: String
	
	var body: some View {
		VStack(alignment: .leading, spacing: 1.0) {
			Text(title)
				.font(.system(size: 16))
				.foregroundColor(Colors.subtitle)
				.padding(.bottom, 0.0)
			
			Text(description)
				.frame(height: 40)
				.multilineTextAlignment(.leading)
				.font(.system(size: 16))
				.fontWeight(.semibold)
				.lineLimit(2)
				.padding(.trailing, 5)
				.padding(.bottom, 10)
			
			Image(image)
				.resizable()
				.cornerRadius(8)
				.shadow(radius: 5)
				.frame(height: 200)
		}
		.frame(width: 300)
	}
}

struct HorizontalGridItemView_Previews: PreviewProvider {
	static var previews: some View {
		FavoritesItemView(
			title: "Title",
			description: "Gentle indie pop and rock melodies that make moments better.",
			image: AssetsImages.indie.string)
	}
}
