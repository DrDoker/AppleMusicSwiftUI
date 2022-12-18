//
//  VerticalGridView.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 18/12/2022.
//

import SwiftUI

struct VerticalGridView: View {
	var columns: [GridItem] =
	Array(repeating: .init(.flexible()), count: 1)
	
	var body: some View {
		VStack {
			Text("Stations")
			LazyVGrid(columns: columns) {
				ForEach((1...18), id: \.self) { number in
					HStack {
						Image("cover")
							.resizable()
							.cornerRadius(24)
							.scaledToFit()
							.shadow(radius: 5)
						Text("Text")
						Spacer()
					}
					.frame(height: 100)
					.padding()
				}
			}
		}
	}
}

struct VerticalGridView_Previews: PreviewProvider {
	static var previews: some View {
		VerticalGridView()
	}
}
