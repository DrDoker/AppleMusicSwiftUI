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
		
		LibraryList
		
	}
	
	@ViewBuilder var LibraryList: some View {
		if multiSelection.isEmpty {
			VStack {
				Text("Search your music?")
					.font(.title2)
					.fontWeight(.bold)
					.padding(.bottom, 1.0)
				
				Text("All your music which you buy in iTunes Store stores here.")
					.foregroundColor(Color.gray)
				
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
