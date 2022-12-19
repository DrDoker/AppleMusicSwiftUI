//
//  VerticalGridView.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 18/12/2022.
//

import SwiftUI

struct StationsView: View {
	
	@State var stations = StationsModel.data
	var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 1)
	
	var body: some View {
		VStack(alignment: .leading, spacing: 10) {
			Text("Stations")
				.font(.system(size: 28))
				.fontWeight(.bold)
				.padding(.leading)
			
			LazyVGrid(columns: columns) {
				ForEach(stations, id: \.id) { item in
					StationsItemView(title: item.title, description: item.description, image: item.image)
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
