//
//  EmptyLibraryView.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 18/12/2022.
//

import SwiftUI

struct CategoriesListView: View {
	
	@Binding var multiSelection: Set<UUID>
	@Binding var listData: [CategoriesModel]
	
	var body: some View {
		CategoriesList
	}
	
	@ViewBuilder var CategoriesList: some View {
		if multiSelection.isEmpty {
			VStack {
				Text(Strings.MediaLibrary.emptyLibraryTitle)
					.font(.title2)
					.fontWeight(.bold)
					.padding(.bottom, 1.0)
				
				Text(Strings.MediaLibrary.emptyLibrarySubtitle)
					.foregroundColor(Colors.subtitle)
				
			}
			.padding(.horizontal, 40)
			.multilineTextAlignment(.center)
		} else {
			List {
				ForEach(listData, id: \.id) { item in
					if multiSelection.contains(item.id) {
						ListItemView(categori: item)
					}
					
				}
			}
			.listStyle(.inset)
		}
	}
}

//struct CategoriesListView_Previews: PreviewProvider {
//    static var previews: some View {
//        EmptyLibraryView()
//    }
//}
