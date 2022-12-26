//
//  ListItemView.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 18/12/2022.
//

import SwiftUI

struct ListItemView: View {
	
	var categori: Categories
	
	var body: some View {
		HStack(spacing: 10) {
			Image(systemName: categori.icon)
				.resizable()
				.scaledToFit()
				.frame(width: 22, height: 22)
			
				.foregroundColor(Colors.main)
			
			Text(categori.title)
				.font(Font.system(size: 18, weight: .regular))
		}
	}
}

struct ListItemView_Previews: PreviewProvider {
	static var previews: some View {
		ListItemView(categori: Categories(title: "Playlists", icon: SFSymbols.playlists.string))
	}
}
