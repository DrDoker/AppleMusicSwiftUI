//
//  ListItemView.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 18/12/2022.
//

import SwiftUI

struct ListItemView: View {
	
	var categori: CategoriesModel

	var body: some View {
		HStack {
			Image(systemName: categori.icon)
				.foregroundColor(.red)
			Text(categori.title)
		}
	}
}

struct ListItemView_Previews: PreviewProvider {
    static var previews: some View {
		ListItemView(categori: CategoriesModel(title: "Playlists", icon: SFSymbols.playlists.rawValue))
    }
}
