//
//  TableViewCell.swift
//  coredataara
//
//  Created by apple on 14/11/1942 Saka.
//

import UIKit

class TableViewCell: UITableViewCell
{

    @IBOutlet weak var lable1: UILabel!
    override func awakeFromNib()
    {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
