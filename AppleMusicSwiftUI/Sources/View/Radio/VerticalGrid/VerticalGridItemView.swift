//
//  VerticalGridItemView.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 18/12/2022.
//

import SwiftUI

struct VerticalGridItemView: View {
    var body: some View {
		HStack {
			Image("cover")
				.resizable()
				.cornerRadius(8)
				.scaledToFit()
				.shadow(radius: 5)
			Text("Text")
			Spacer()
		}
		.frame(height: 100)
		.padding()
    }
}

struct VerticalGridItemView_Previews: PreviewProvider {
    static var previews: some View {
        VerticalGridItemView()
    }
}
