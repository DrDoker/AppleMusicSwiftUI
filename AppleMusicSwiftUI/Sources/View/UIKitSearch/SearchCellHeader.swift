//
//  SearchCellHeader.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 30/12/2022.
//

import UIKit

class SearchCellHeader: UICollectionReusableView {
	static let identifier = "SearchHeader"
	
	// MARK: - Outlets
		
	lazy var headerTitle: UILabel = {
		let label = UILabel()
	//	label.textColor = .white
		label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
		label.textAlignment = .left
		return label
	}()
	
	// MARK: - init
	
	override init(frame: CGRect) {
		super.init(frame: frame)

		setupHierarchy()
		setupLayout()
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	// MARK: - Setup
	
	private func setupHierarchy() {
		addSubview(headerTitle)
	}
	
	private func setupLayout() {
		headerTitle.snp.makeConstraints { make in
			make.left.equalTo(self)
			make.bottom.equalTo(self).offset(-10)
		}
	}
	
	override func prepareForReuse() {
		super.prepareForReuse()
		headerTitle.text = nil
	}
}
