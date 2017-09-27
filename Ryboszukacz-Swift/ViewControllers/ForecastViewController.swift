//
//  ForecastViewController.swift
//  Ryboszukacz-Swift
//
//  Created by User  on 18.09.2017.
//  Copyright © 2017 J Apps!. All rights reserved.
//

import UIKit

class ForecastViewController: UIViewController, UITabBarDelegate, UITableViewDataSource, ObjectWithViewModel {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var nazwaLowiskaLabel: UILabel!
    
    lazy var viewModel: ForecastViewModel = {
        let model = ForecastViewModel()
        model.delegate = self

        return model
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ForecastTableViewCell.identifier, for: indexPath) as? ForecastTableViewCell else {
            return UITableViewCell()
        }
        
        cell.isCurrentWeather = indexPath.row == 0
        
        
        return cell
    }

    @IBAction func okTap(_ buttton: UIButton) {
        
    }

}
