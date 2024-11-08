//
//  PrimaryTableViewCell.swift
//  movie segue
//
//  Created by Алмагуль Абдыгали on 07.11.2024.
//

import UIKit

class PrimaryTableViewCell: UITableViewCell {

    @IBOutlet private weak var coverImage: UIImageView!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var yearLabel: UILabel!
    @IBOutlet private weak var genreLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func configure(_ model: Movie) {
        titleLabel.text = model.title
        coverImage.image = model.image
        yearLabel.text = model.year
        genreLabel.text = model.genre
    }

}
