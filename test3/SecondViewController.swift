//
//  SecondTableViewCell.swift
//  movie segue
//
//  Created by Алмагуль Абдыгали on 07.11.2024.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var descriptionLabel: UILabel!
    @IBOutlet private weak var coverImage: UIImageView!
    @IBOutlet private weak var yearLabel: UILabel!
    @IBOutlet private weak var genreLabel: UILabel!

    private var inputModel: Movie?

    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = inputModel?.title
        descriptionLabel.text = inputModel?.description
        coverImage.image = inputModel?.image
        yearLabel.text = inputModel?.year
        genreLabel.text = inputModel?.genre
        
    }

    func configure(with model: Movie?) {
        self.inputModel = model
    }
 }
