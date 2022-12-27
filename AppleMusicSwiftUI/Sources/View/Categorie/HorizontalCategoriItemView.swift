//
//  HorizontalCategoriItemView.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 26/12/2022.
//

import SwiftUI

struct HorizontalCategoriItemView: View {
	var item: HorizontalCategoriList
	
    var body: some View {
		VStack(alignment: .leading, spacing: 3) {
			Image(item.image)
				.resizable()
				.scaledToFill()
				.frame(minWidth: 0, maxWidth: .infinity)
				.frame(width: 180, height: 180)
				.clipped()
				.cornerRadius(8)
				.shadow(radius: 2)
				.padding(.bottom, 5)
			
			Text(item.title)
				.font(.system(size: 14))
				.lineLimit(1)
			
			Text(item.subtitle)
				.font(.system(size: 14))
				.lineLimit(1)
				.foregroundColor(Colors.subtitle)
		}
		.frame(width: 180)
    }
}

struct HorizontalCategoriItemView_Previews: PreviewProvider {
    static var previews: some View {
		HorizontalCategoriItemView(item: HorizontalCategori.watch.list.first!)
    }
}
