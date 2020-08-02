//
//  DetailViewController.swift
//  CoreDataSample
//
//  Created by TTOzzi on 2020/08/02.
//  Copyright © 2020 TTOzzi. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!


    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let label = detailDescriptionLabel {
                label.text = detail.birth!.description
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureView()
    }

    var detailItem: Person? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

