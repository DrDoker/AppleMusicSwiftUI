//
//  VerticalGridItemView.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 18/12/2022.
//

import SwiftUI

struct StationsItemView: View {
	var title: String
	var description: String
	var image: String
	
    var body: some View {
		HStack {
			Image(image)
				.resizable()
				.cornerRadius(4)
//				.scaledToFit()
				.shadow(radius: 6)
				.frame(width: 120, height: 120)
			
			VStack(alignment: .leading) {
				Text(title)
					.font(.system(size: 18))
					.fontWeight(.medium)
				Text(description)
					.foregroundColor(Color.gray)
			}
			.padding(.leading)
			
			Spacer()
			
		}
		.padding(.horizontal)
		.padding(.bottom, 10)
		.overlay(Divider(), alignment: .bottom)
		
    }
}

struct VerticalGridItemView_Previews: PreviewProvider {
    static var previews: some View {
        StationsItemView(title: "Text", description: "Description Text", image: "hitfm")
    }
}
