//
//  MediaLibraryView.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 18/12/2022.
//

import SwiftUI

struct MediaLibraryView: View {
	@State private var listData = CategoriesModel.data
	@State private var isEdit = false
	@State private var multiSelection = Set<UUID>()
	
	var body : some View {
		NavigationStack {
			LibraryView
				.navigationTitle("Library")
				.toolbar {
					Button {
						isEdit.toggle()
					} label: {
						Text(isEdit ? "Done" : "Edit")
					}
				}
		}
	}
	
	@ViewBuilder var LibraryView: some View {
		if isEdit {
			EditCategoriesListView(multiSelection: $multiSelection, listData: $listData)
		} else {
			CategoriesListView(multiSelection: $multiSelection, listData: $listData)
		}
	}
}

struct MediaLibraryView_Previews: PreviewProvider {
	static var previews: some View {
		MediaLibraryView()
	}
}
