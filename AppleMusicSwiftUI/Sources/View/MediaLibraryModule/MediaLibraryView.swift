//
//  MediaLibraryView.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 18/12/2022.
//

import SwiftUI

struct MediaLibraryView: View {
	
		struct Ocean: Identifiable, Hashable {
			let id = UUID()
			let name: String
		}
	
		private var oceans = [
			Ocean(name: "Pacific"),
			Ocean(name: "Atlantic"),
			Ocean(name: "Indian"),
			Ocean(name: "Southern"),
			Ocean(name: "Arctic")
		]
	
	@State private var multiSelection = Set<UUID>()
	
	var body : some View {
		NavigationView {
			List(selection: $multiSelection) {
				ForEach(oceans) { ocean in
					Text(ocean.name)
				}
				.onMove(perform: move)
			}
			.listStyle(.plain)
			.navigationTitle("Медиатека")
			.toolbar {
				EditButton()
			}
		}
	}
	
	func move(from source: IndexSet, to destination: Int) {
		
	}

}

struct MediaLibraryView_Previews: PreviewProvider {
	static var previews: some View {
		MediaLibraryView()
	}
}
