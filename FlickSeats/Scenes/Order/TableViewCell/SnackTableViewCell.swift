//
//  SnackTableViewCell.swift
//  FlickSeats
//
//  Created by Brian Suárez Santiago on 28/08/24.
//

import UIKit

class SnackTableViewCell: UITableViewCell {

    // MARK: - Properties
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }()

    private let priceLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .lightGray
        label.textAlignment = .right
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }()

    private let foodImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 8
        imageView.contentMode = .scaleAspectFill
        imageView.layer.masksToBounds = true

        return imageView
    }()

    private let sizeLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = .lightGray
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }()

    private lazy var foodStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [nameLabel, sizeLabel])
        stackView.axis = .vertical
        stackView.spacing = 8
        stackView.translatesAutoresizingMaskIntoConstraints = false

        return stackView
    }()

    private lazy var mainStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [foodImageView, foodStackView, priceLabel])
        stackView.axis = .horizontal
        stackView.spacing = 8
        stackView.translatesAutoresizingMaskIntoConstraints = false

        return stackView
    }()

    // MARK: - Init
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubviews()
        setupConstraints()
        configureAppearance()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Private Methods
    private func addSubviews() {
        contentView.addSubview(mainStackView)
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            mainStackView.topAnchor.constraint(greaterThanOrEqualTo: contentView.topAnchor, constant: 8),
            mainStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            mainStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            mainStackView.bottomAnchor.constraint(lessThanOrEqualTo: contentView.bottomAnchor, constant: -8),
            mainStackView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),

            foodImageView.widthAnchor.constraint(equalToConstant: 40),
            foodImageView.heightAnchor.constraint(equalToConstant: 40),
        ])
    }

    private func configureAppearance() {
        layer.borderColor = UIColor.gray.withAlphaComponent(0.1).cgColor
        layer.borderWidth = 1.0
        layer.cornerRadius = 12

        contentView.layer.cornerRadius = layer.cornerRadius
        contentView.layer.masksToBounds = true
        contentView.backgroundColor = .clear
        backgroundColor = .clear

        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 4)
        layer.shadowRadius = 6.0
        layer.shadowOpacity = 0.1
        layer.masksToBounds = false
    }

    func configure(with snack: Food, size: FoodSize, price: Double, quantity: Int, imageName: String) {
        nameLabel.text = snack.name
        sizeLabel.text = size.name
        priceLabel.text = String(format: "$%.2f X %d", price, quantity)
        foodImageView.image = UIImage(named: imageName)
    }
}
