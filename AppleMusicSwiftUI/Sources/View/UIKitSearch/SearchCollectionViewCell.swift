//
//  SearchCollectionViewCell.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 29/12/2022.
//

import UIKit

class SearchCollectionViewCell: UICollectionViewCell {
	static let identifier = "SearchCell"
	
	// MARK: - Outlets
	
	lazy var categoriImage: UIImageView = {
		let imageView = UIImageView()
		imageView.contentMode = .scaleAspectFill
		imageView.clipsToBounds = true
		imageView.layer.cornerRadius = 10
		return imageView
	}()
	
	lazy var categoriTitle: UILabel = {
		let label = UILabel()
		label.textColor = .white
		label.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
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
		contentView.addSubview(categoriImage)
		contentView.addSubview(categoriTitle)
	}
	
	private func setupLayout() {
		categoriImage.snp.makeConstraints { make in
			make.top.leading.trailing.bottom.equalTo(contentView)
		}
		
		categoriTitle.snp.makeConstraints { make in
			make.leading.equalTo(categoriImage.snp.leading).offset(15)
			make.trailing.equalTo(categoriImage.snp.trailing).offset(-15)
			make.bottom.equalTo(categoriImage.snp.bottom).offset(-10)
		}
	}
}
