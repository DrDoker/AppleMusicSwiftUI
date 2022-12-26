//
//  EditListView.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 18/12/2022.
//

import SwiftUI

struct EditCategoriesListView: View {
	
	@State private var editMode: EditMode = .active
	@Binding var multiSelection: Set<UUID>
	@Binding var listData: [Categories]
	
	var body: some View {
		List(selection: $multiSelection) {
			ForEach(listData, id: \.id) { item in
				ListItemView(categori: item)
			}
			.onMove(perform: moveItem)
			.listRowBackground(Color.clear)
		}
		.environment(\.editMode, $editMode)
		.listStyle(.inset)
	}
	
	func moveItem(from sourcePosition: IndexSet, to destinationPosition: Int) {
		self.listData.move(
			fromOffsets: sourcePosition,
			toOffset: destinationPosition
		)
		Categories.data = listData
	}
}

//struct EditCategoriesListView_Previews: PreviewProvider {
//	static var previews: some View {
//		EditCategoriesListView()
//	}
//}
