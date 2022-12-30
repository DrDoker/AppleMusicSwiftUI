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
				FavoritesView()
				Divider()
				StationsView()
			}
			.padding(.bottom, 65)
			.navigationTitle(Strings.Radio.navigationTitle)
		}
	}
}

struct RadioView_Previews: PreviewProvider {
	static var previews: some View {
		RadioView()
	}
}
