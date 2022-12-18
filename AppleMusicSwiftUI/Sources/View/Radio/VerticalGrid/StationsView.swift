//
//  VerticalGridView.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 18/12/2022.
//

import SwiftUI

struct StationsView: View {
	var columns: [GridItem] =
	Array(repeating: .init(.flexible()), count: 1)
	
	var body: some View {
		VStack(alignment: .leading, spacing: 10) {
			Text("Stations")
				.font(.system(size: 30))
				.fontWeight(.bold)
				.padding(.leading)
			
			LazyVGrid(columns: columns) {
				ForEach((1...4), id: \.self) { number in
					StationsItemView()
				}
			}
		}
	}
}

struct VerticalGridView_Previews: PreviewProvider {
	static var previews: some View {
		StationsView()
	}
}
