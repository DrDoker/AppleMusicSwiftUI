//
//  SearchItemView.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 26/12/2022.
//

import SwiftUI

struct SearchItemView: View {
	var title: String
	var image: String
	
	var body: some View {
		Image(image)
			.resizable()
			.scaledToFill()
			.frame(minWidth: 0, maxWidth: .infinity)
			.frame(height: 120)
			.clipped()
			.cornerRadius(10)
			.shadow(radius: 3)
			.overlay(alignment: .bottomLeading)  {
				Text(title)
					.font(.system(size: 16, weight: .semibold))
					.foregroundColor(Colors.searchItemTitle)
					.padding(.vertical, 10)
					.padding(.horizontal, 15)
			}
	}
}

struct SearchItemView_Previews: PreviewProvider {
	static var previews: some View {
		SearchItemView(title: "Spatial Audio", image: "spatial")
	}
}
