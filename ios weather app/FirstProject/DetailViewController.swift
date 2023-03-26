//
//  DetailViewController.swift
//  ios weather app
//
//  Created by Koinworks_MBP on 26/03/23.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var selectedImage: String?
    var currentIndex: Int?
    var totalItems: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let currentIndex = currentIndex else { return }
        guard let totalItems = totalItems else { return }
        title = "Picture \(currentIndex) of \(totalItems)"
        
        navigationItem.largeTitleDisplayMode = .never
        
        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }

}
