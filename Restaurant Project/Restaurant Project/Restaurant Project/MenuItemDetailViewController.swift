//
//  MenuItemDetailViewController.swift
//  Project
//
//  Created by Hager on 08/08/2023.
//

import UIKit

class MenuItemDetailViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var detailTextLabel: UILabel!
    @IBOutlet weak var addToOrderButton: UIButton!
    let menuItem: MenuItem
    
        init?(coder: NSCoder, menuItem: MenuItem) {
            self.menuItem = menuItem
            super.init(coder: coder)
        }

    required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    func updateUI() {
        nameLabel.text = menuItem.name
        priceLabel.text = menuItem.price.formatted(.currency(code: "usd"))
        detailTextLabel.text = menuItem.detailText
        
        Task.init {
            if let image = try? await
               MenuController.shared.fetchImage(from: URL(string: "http://127.0.0.1:8080/images/1.png")!/*menuItem.imageURL*/) {
                imageView.image = image
            }
        }
    }

    @IBAction func orderButtonTapped(_ sender: Any) {
        UIView.animate(withDuration: 0.5, delay: 0,
               usingSpringWithDamping: 0.7, initialSpringVelocity: 0.1,
               options: [], animations: {
                self.addToOrderButton.transform =
                   CGAffineTransform(scaleX: 2.0, y: 2.0)
                self.addToOrderButton.transform =
                   CGAffineTransform(scaleX: 1.0, y: 1.0)
            }, completion: nil)
        MenuController.shared.order.menuItems.append(menuItem)
    }
}
