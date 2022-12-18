//
//  HorizontalGridView.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 18/12/2022.
//

import SwiftUI

struct HorizontalGridView: View {
	var rows: [GridItem] =
	Array(repeating: .init(.flexible()), count: 1)
	
	var body: some View {
		ScrollView(.horizontal, showsIndicators: false) {
			LazyHGrid(rows: rows) {
				ForEach((1...18), id: \.self) { number in
					VStack {
						Text("Text")
						Image("cover")
							.resizable()
							.cornerRadius(8)
							.shadow(radius: 5)
					}
					.frame(width: 300)
				}
			}
			.padding(.horizontal)
			
		}
		.frame(height: 250)
	}
}

struct HorizontalGridView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalGridView()
    }
}
