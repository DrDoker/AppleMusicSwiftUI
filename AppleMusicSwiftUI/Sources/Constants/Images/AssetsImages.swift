//
//  Images+Extensions.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 19/12/2022.
//

import SwiftUI

enum AssetsImages: String {
	case cover = "cover"
	
	case indie = "indie"
	case episode = "episode576"
	case iconic = "iconic"
	case relax = "relax"
	
	case oneMusic = "1music"
	case country = "country"
	case dotty = "dotty"
	case jayde = "jayde"
	case tokyo = "tokyo"
	case rebecco = "rebecco"
	case hitfm = "hitfm"
	case rockClassic = "rockClassic"
	
	case spatial = "spatial"
	case christmas = "christmas"
	case replay = "replay"
	case live = "live"
	case hits = "hits"
	case acoustic = "acoustic"
	case alternative = "alternative"
	case classical = "classical"
	case classicRock = "classicRock"
	case hardRock = "hardRock"
	case hipHop = "hipHop"
	case metal = "metal"
	case pop = "pop"
	case reggae = "reggae"
	case rock = "rock"
	case soul = "soul"
	
	var string: String {
		rawValue
	}
}

extension Image {
	init(with assetsImages: AssetsImages) {
		self.init(assetsImages.rawValue)
	}
}
