//
//  StudentTableViewCell.swift
//  CoreDataSaveFetch
//
//  Created by Rabin on 22/03/23.
//

import UIKit

class StudentTableViewCell: UITableViewCell {

    @IBOutlet weak var labelSubject: UILabel!
    @IBOutlet weak var labelName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
