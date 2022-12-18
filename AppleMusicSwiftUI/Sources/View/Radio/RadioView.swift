//
//  RadioView.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 18/12/2022.
//

import SwiftUI

struct RadioView: View {

	var body: some View {
		NavigationStack {
			ScrollView {
				Divider()
				HorizontalGridView()
					.frame(height: 300)
				Divider()
				VerticalGridView()
			}
			.navigationTitle("Radio")
		}
	}
}

struct RadioView_Previews: PreviewProvider {
	static var previews: some View {
		RadioView()
	}
}

struct VerticalGridView: View {
	var columns: [GridItem] =
	Array(repeating: .init(.flexible()), count: 1)
	
	var body: some View {
		ScrollView(.vertical) {
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

struct HorizontalGridView: View {
	var rows: [GridItem] =
	Array(repeating: .init(.flexible()), count: 1)
	
	var body: some View {
		ScrollView(.horizontal) {
			LazyHGrid(rows: rows) {
				ForEach((1...18), id: \.self) { number in
					VStack {
						Text("Text")
						Image("cover")
							.resizable()
							.cornerRadius(24)
							.scaledToFit()
							.shadow(radius: 5)
					}
					.padding()
				}
			}
		}
	}
	
}
