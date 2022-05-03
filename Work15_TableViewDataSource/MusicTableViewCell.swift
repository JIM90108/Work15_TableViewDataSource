//
//  MusicTableViewCell.swift
//  Work15_TableViewDataSource
//
//  Created by 彭有駿 on 2022/5/3.
//

import UIKit

class MusicTableViewCell: UITableViewCell {
    
    @IBOutlet weak var musicImageView: UIImageView!
    
    @IBOutlet weak var musicLabel: UILabel!
    
    @IBOutlet weak var singerLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
