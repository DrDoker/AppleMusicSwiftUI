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
		HStack(spacing: 10) {
			Image(systemName: categori.icon)
				.resizable()
				.scaledToFit()
				.frame(width: 22, height: 22)
				
				.foregroundColor(.red)
				
			Text(categori.title)
				.font(Font.system(size: 18, weight: .regular))
		}
	}
}

struct ListItemView_Previews: PreviewProvider {
    static var previews: some View {
		ListItemView(categori: CategoriesModel(title: "Playlists", icon: SFSymbols.playlists.rawValue))
    }
}
