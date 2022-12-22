//
//  EditListView.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 18/12/2022.
//

import SwiftUI

struct CategoriesListView: View {
	
	@State private var listData = CategoriesModel.data
	@State private var selectionItems: [String] = []
	@State private var multiSelection = Set<UUID>()
	
	var body: some View {
		List(selection: $multiSelection) {
			ForEach(listData, id: \.id) { item in
				ListItemView(categori: item)
			}
			.onMove(perform: moveItem)
		}
		.listStyle(.plain)
	}
	
	func moveItem(from sourcePosition: IndexSet, to destinationPosition: Int) {
		self.listData.move(
			fromOffsets: sourcePosition,
			toOffset: destinationPosition
		)
		CategoriesModel.data = listData
	}
}

struct EditListView_Previews: PreviewProvider {
	static var previews: some View {
		CategoriesListView()
	}
}
