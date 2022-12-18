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
			ScrollView(.vertical, showsIndicators: false) {
				Divider()
				HorizontalGridView()
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
