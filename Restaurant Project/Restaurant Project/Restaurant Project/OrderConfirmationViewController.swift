//
//  OrderConfirmationViewController.swift
//  Restaurant Project
//
//  Created by Hager on 10/08/2023.
//

import UIKit

class OrderConfirmationViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        confirmationLabel.text = "Thank you for your order! Your wait time is approximately \(minutesToPrepare) minutes."
    }
    
    @IBOutlet weak var confirmationLabel: UILabel!
    let minutesToPrepare: Int

    init?(coder: NSCoder, minutesToPrepare: Int) {
        self.minutesToPrepare = minutesToPrepare
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
