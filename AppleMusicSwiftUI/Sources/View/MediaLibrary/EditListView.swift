//
//  EditListView.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 18/12/2022.
//

import SwiftUI

struct EditListView: View {
	
	@State var listData = Model.data
	@State var selectionItems: [String] = []
	@State private var multiSelection = Set<UUID>()
	
	var body: some View {
		List(selection: $multiSelection) {
			ForEach(listData, id: \.id) { item in
				ListItemView(title: item.title, icon: item.icon, isSelected: false)
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
		Model.data = listData
	}
}

struct EditListView_Previews: PreviewProvider {
	static var previews: some View {
		EditListView()
	}
}
