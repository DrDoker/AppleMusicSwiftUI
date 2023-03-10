//
//  SearchViewController.swift
//  AppleMusicSwiftUI
//
//  Created by Serhii  on 28/12/2022.
//

import UIKit
import SnapKit

class SearchViewController: UIViewController {
	
	let model = MusicCategories.data
	
	// MARK: - Outlets
	
	private lazy var searchController: UISearchController = {
		let search = UISearchController()
		search.searchBar.placeholder = "Search"
		search.searchBar.delegate = self
		return search
	}()
	
	private lazy var collectionView: UICollectionView = {
		let layout = UICollectionViewFlowLayout()
		let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
		collectionView.register(
			SearchCollectionViewCell.self,
			forCellWithReuseIdentifier: SearchCollectionViewCell.identifier)
		collectionView.register(
			SearchCellHeader.self,
			forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
			withReuseIdentifier: SearchCellHeader.identifier)
		collectionView.delegate = self
		collectionView.dataSource = self
		collectionView.showsVerticalScrollIndicator = false
		return collectionView
	}()
	
	// MARK: - Lifecycle
	
	override func viewDidLoad() {
		super.viewDidLoad()
		setupNavigatonBar()
		setupHierarchy()
		setupLayout()
	}
	
	// MARK: - Setup
	
	private func setupNavigatonBar() {
		title = "Search"
		navigationController?.navigationBar.prefersLargeTitles = true
		navigationItem.searchController = searchController
		navigationItem.hidesSearchBarWhenScrolling = false
	}
	
	private func setupHierarchy() {
		view.addSubview(collectionView)
	}
	
	private func setupLayout() {
		collectionView.snp.makeConstraints { make in
			make.top.equalTo(view)
			make.bottom.equalTo(view).offset(-65)
			make.leading.equalTo(view).offset(16)
			make.trailing.equalTo(view).offset(-16)
		}
	}
}

extension SearchViewController: UISearchBarDelegate {
	
}

extension SearchViewController: UICollectionViewDelegate, UICollectionViewDataSource {
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		model.count
	}
	
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SearchCollectionViewCell.identifier, for: indexPath) as? SearchCollectionViewCell
		
		guard let cell = cell else { return UICollectionViewCell() }
		
		cell.categoriImage.image = UIImage(named: model[indexPath.item].image)
		cell.categoriTitle.text = model[indexPath.item].title
		
		cell.layer.shadowColor = UIColor.black.cgColor
		cell.layer.shadowOpacity = 0.3
		cell.layer.shadowOffset = .zero
		cell.layer.shadowRadius = 3
		cell.layer.shouldRasterize = true
		cell.layer.rasterizationScale = UIScreen.main.scale
		
		return cell
	}
	
	func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
		let header = collectionView.dequeueReusableSupplementaryView(
			ofKind: kind,
			withReuseIdentifier: SearchCellHeader.identifier,
			for: indexPath) as? SearchCellHeader
		guard let header = header else { return SearchCellHeader() }
		header.headerTitle.text = Strings.Search.categoriesTitle
		return header
	}
}

extension SearchViewController: UICollectionViewDelegateFlowLayout {
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
		CGSize(
			width: (view.frame.width / 2) - 20,
			height: 120)
	}
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
		2
	}
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
		8
	}
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
		CGSize(width: collectionView.frame.width, height: 34)
	}
}
