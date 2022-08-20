//
//  SearchCell.swift
//  Search
//
//  Created by 김호세 on 2022/08/20.
//  Copyright © 2022 com.jstock. All rights reserved.
//

import Entity
import SnapKit
import UIKit

final class SearchCell: UICollectionViewCell {

  private let stackView: UIStackView = {
    let stackView = UIStackView()
    stackView.axis = .horizontal
    stackView.alignment = .center
    stackView.distribution = .equalSpacing
    stackView.spacing = 8

    return stackView
  }()

  private let imageView: UIImageView = {
    let imageView = UIImageView()
    imageView.backgroundColor = .blue
    return imageView
  }()

  private let nameLabel: UILabel = {
    let label = UILabel()
    label.text = "nameLabel"
    label.font = .systemFont(ofSize: 16, weight: .medium)
    label.textColor = .black
    return label
  }()

  override init(frame: CGRect) {
    super.init(frame: frame)

    setupViews()
  }

  var id: Int = .zero
  var homePageURL: String?

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  func configureCell(by model: GithubEntity.GithubRepository) {
    nameLabel.text = model.name
    id = model.id
    homePageURL = model.url

  }

  private func setupViews() {
    contentView.addSubview(stackView)

    stackView.addArrangedSubview(imageView)
    stackView.addArrangedSubview(nameLabel)

    stackView.snp.makeConstraints { make in
      make.top.leading.bottom.equalToSuperview()
    }

    imageView.snp.makeConstraints { make in
      make.width.height.equalTo(40)
    }
  }
}



extension UIImageView {
  func load(url: String) {

    guard let url = URL(string: url) else { return }

    DispatchQueue.global().async { [weak self] in
      if let data = try? Data(contentsOf: url) {
        if let image = UIImage(data: data) {
          DispatchQueue.main.async {
            self?.image = image
          }
        }
      }
    }
  }
}
