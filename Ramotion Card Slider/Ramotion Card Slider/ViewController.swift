//
//  ViewController.swift
//  Ramotion Card Slider
//
//  Created by Vignesh Nayak P on 8/3/20.
//  Copyright © 2020 Vignesh Nayak P. All rights reserved.
//

import UIKit
import CardSlider

struct Item:CardSliderItem{
    var image: UIImage
    var rating: Int?
    var title: String
    var subtitle: String?
    var description: String?
}

class ViewController: UIViewController, CardSliderDataSource {
    
    var cardItem = [Item]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        cardItem.append(Item(image: UIImage(named: "dog")!,
                             rating: nil,
                             title: "Bookmarks",
                             subtitle: "Get excited about bookmarks",
                             description: "Tap to know more about bookmarks")
        )
        cardItem.append(Item(image: UIImage(named: "dog")!,
                             rating: nil,
                             title: "Bookmarks",
                             subtitle: "Get excited about bookmarks",
                             description: "Tap to know more about bookmarks")
        )
        cardItem.append(Item(image: UIImage(named: "dog")!,
                             rating: nil,
                             title: "Bookmarks",
                             subtitle: "Get excited about bookmarks",
                             description: "Tap to know more about bookmarks")
        )
        cardItem.append(Item(image: UIImage(named: "dog")!,
                             rating: nil,
                             title: "Bookmarks",
                             subtitle: "Get excited about bookmarks",
                             description: "Tap to know more about bookmarks")
        )
        
    }
    
    @IBAction func showSlider(_ sender: Any) {
        
        let vc = CardSliderViewController.with(dataSource: self)
//        vc.title = "Welcome"
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    func item(for index: Int) -> CardSliderItem {
        return cardItem[index]
    }
    
    func numberOfItems() -> Int {
        return cardItem.count
    }
    
}

