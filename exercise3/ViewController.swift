//
//  ViewController.swift
//  exercise3
//
//  Created by thanh tien on 8/14/20.
//  Copyright © 2020 thanh tien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var historyButton: UIButton!
    @IBOutlet weak var recentTabsButton: UIButton!
    @IBOutlet weak var readingListButton: UIButton!
    @IBOutlet weak var bookmarksButton: UIButton!
    @IBOutlet weak var newTabView: UIView!
    @IBOutlet weak var numberOfTabView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareUI()
    }

    private func prepareUI() {
        configTextField()
        cornerRadius()
    }
    
    private func configTextField() {
        let imageView = UIImageView(image: UIImage(named: "location_bar_voice_Normal")?.withRenderingMode(.alwaysTemplate))
        imageView.frame = CGRect(x: 0, y: 0, width: 25, height: 25)
        imageView.tintColor = .lightGray
        let rightView = UIView(frame: CGRect(x: 0, y: 0, width: 40, height: searchTextField.bounds.height))
        rightView.addSubview(imageView)
        imageView.center = rightView.center
        searchTextField.rightView = rightView
        searchTextField.rightViewMode = .always
    }
    
    private func cornerRadius() {
        avatarImageView.layer.cornerRadius = avatarImageView.bounds.height/2
        searchTextField.layer.cornerRadius = searchTextField.bounds.height/2
        historyButton.layer.cornerRadius = 12
        recentTabsButton.layer.cornerRadius = 12
        readingListButton.layer.cornerRadius = 12
        bookmarksButton.layer.cornerRadius = 12
        newTabView.layer.cornerRadius = newTabView.bounds.height/2
        numberOfTabView.layer.cornerRadius = 5
        numberOfTabView.layer.borderColor = UIColor.systemGray.cgColor
        numberOfTabView.layer.borderWidth = 2
    }
}

