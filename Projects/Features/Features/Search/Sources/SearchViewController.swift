//
//  SearchViewController.swift
//  Search
//
//  Created by 김호세 on 2022/08/20.
//  Copyright © 2022 com.jstock. All rights reserved.
//

import Entity
import RxCocoa
import RxSwift
import SnapKit
import UIKit

public final class SearchViewController: UIViewController {

  private let searchController: UISearchController = {
    let searchController = UISearchController()
    return searchController
  }()

  private let collectionView: UICollectionView = {

    var config = UICollectionLayoutListConfiguration(appearance: .plain)
    config.showsSeparators = false

    let layout = UICollectionViewCompositionalLayout.list(using: config)
    let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)

    collectionView.backgroundColor = .white
    return collectionView
  }()

  private let disposeBag = DisposeBag()

  typealias DataSource = UICollectionViewDiffableDataSource<Section, Item>
  typealias SnapShot = NSDiffableDataSourceSnapshot<Section, Item>

  // MARK: - Data Source도 주입받을 수 있을까?
  private var dataSource: DataSource! = nil
  private var snapShot = SnapShot()

  public init() {
    super.init(nibName: nil, bundle: nil)
  }


  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  public override func viewDidLoad() {
    super.viewDidLoad()
    setupViews()
    configureDataSource()
  }

  public override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    navigationItem.searchController = searchController
  }

  public override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    applySnapShot(Item.generateItem())
  }

  private func configureDataSource() {
    let registeration = UICollectionView
      .CellRegistration<SearchCell, GithubEntity.GithubRepository> { cell , indexPath, item  in

        cell.configureCell(by: item)
    }

    dataSource = UICollectionViewDiffableDataSource<Section, Item>(
      collectionView: collectionView, cellProvider: { collectionView, indexPath, itemIdentifier in

        switch itemIdentifier {
        case .repository(repository: let repo):
          return collectionView.dequeueConfiguredReusableCell(
            using: registeration,
            for: indexPath,
            item: repo
          )
        }
      })
  }

  private func applySnapShot(_ items: [Item]) {
    guard let item = items.first else { return }

    switch item {
    case .repository:
      snapShot.appendSections([.main])
      snapShot.appendItems(items, toSection: .main)
    }

    dataSource.apply(snapShot, animatingDifferences: true)

  }

  private func bind() {
  }

  private func setupViews() {
    view.addSubview(collectionView)

    collectionView.snp.makeConstraints { make in
      make.leading.trailing.bottom.equalTo(view.safeAreaLayoutGuide)
      make.top.equalTo(view.safeAreaLayoutGuide)
    }
  }

}

