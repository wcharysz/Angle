//
//  ForecastTableViewCell.swift
//  Ryboszukacz-Swift
//
//  Created by User  on 19.09.2017.
//  Copyright © 2017 J Apps!. All rights reserved.
//

import UIKit

class ForecastTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageViewIcon: UIImageView!
    @IBOutlet weak var labelWeather: UILabel!
    @IBOutlet weak var labelTemp: UILabel!
    @IBOutlet weak var labelWindKph: UILabel!
    @IBOutlet weak var labelWindDir: UILabel!
    @IBOutlet weak var labelRain: UILabel!
    @IBOutlet weak var labelHumidity: UILabel!
    @IBOutlet weak var labelSnow: UILabel!
    @IBOutlet weak var textSunRise: UILabel!
    @IBOutlet weak var textSunSet: UILabel!
    
    static let identifier = "ForecastTableViewCell"
    
    var isCurrentWeather = false {
        didSet {
            textSunRise.isHidden = !isCurrentWeather
            textSunSet.isHidden = !isCurrentWeather
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        textSunRise.isHidden = !isCurrentWeather
        textSunSet.isHidden = !isCurrentWeather
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
