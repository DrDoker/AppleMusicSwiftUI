//
//  VerticalGridItemView.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 18/12/2022.
//

import SwiftUI

struct StationsItemView: View {
    var body: some View {
		HStack {
			Image("cover")
				.resizable()
				.cornerRadius(4)
				.scaledToFit()
				.shadow(radius: 6)
				.frame(height: 120)
			
			VStack(alignment: .leading) {
				Text("Text")
				Text("Text")
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
        StationsItemView()
    }
}
