//
//  CategorieFavorites.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 26/12/2022.
//

import Foundation

struct FavoriteCategories {
	let id = UUID()
	var subtitle: String
	var firstTitle: String
	var secondTitle: String
	var description: String
	var image: String
}

extension FavoriteCategories {
	static var appleMusicLive = [
		FavoriteCategories(
			subtitle: "Watch Now",
			firstTitle: "Alicia Keys: Apple Music Live",
			secondTitle: "Apple Music Live",
			description: "Apple Music's live series continues with Alicia Keys in New York City.",
			image: "alicia"),
		FavoriteCategories(
			subtitle: "Watch Now",
			firstTitle: "Alicia Keys: Apple Music Live",
			secondTitle: "Apple Music Live",
			description: "Apple Music's live series continues with Alicia Keys in New York City.",
			image: "alicia1"),
		FavoriteCategories(
			subtitle: "Watch Now",
			firstTitle: "Alicia Keys: Apple Music Live",
			secondTitle: "Apple Music Live",
			description: "Apple Music's live series continues with Alicia Keys in New York City.",
			image: "alicia2"),
		FavoriteCategories(
			subtitle: "Watch Now",
			firstTitle: "Alicia Keys: Apple Music Live",
			secondTitle: "Apple Music Live",
			description: "Apple Music's live series continues with Alicia Keys in New York City.",
			image: "alicia3"),
		FavoriteCategories(
			subtitle: "Watch Now",
			firstTitle: "Alicia Keys: Apple Music Live",
			secondTitle: "Apple Music Live",
			description: "Apple Music's live series continues with Alicia Keys in New York City.",
			image: "alicia4"),
	]
}
