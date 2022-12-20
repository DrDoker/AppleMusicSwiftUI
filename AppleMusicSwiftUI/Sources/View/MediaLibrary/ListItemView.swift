//
//  ListItemView.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 18/12/2022.
//

import SwiftUI

struct ListItemView: View {
	var title: String
	var icon: String
	var isSelected: Bool

	var body: some View {
		HStack {
			Image(systemName: icon)
				.foregroundColor(.red)
			Text(title)
		}
	}
}

struct ListItemView_Previews: PreviewProvider {
    static var previews: some View {
        ListItemView(title: "Playlists", icon: Images.CategoriesIcons.playlists, isSelected: true)
    }
}
