//
//  NewsViewCell.swift
//  NewsDemo
//
//  Created by Abdulkadir AKTAŞ on 19.02.2022.
//

import UIKit

class NewsViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var storyLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }

}
