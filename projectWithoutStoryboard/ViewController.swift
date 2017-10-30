//
//  ViewController.swift
//  projectWithoutStoryboard
//
//  Created by Boominadha Prakash on 30/10/17.
//  Copyright © 2017 Boominadha Prakash. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let hiButton:UIButton = {
        let button = UIButton()
        button.setTitle("Hi", for: .normal)
        button.setTitleColor(UIColor.darkGray, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let detailButton:UIButton = {
        let button = UIButton()
        button.setTitle("I am an iOS developer", for: .normal)
        button.setTitleColor(UIColor.orange, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        addUIElements()
        setupConstraints()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addUIElements(){
        self.title = "Home"
        self.view.backgroundColor = .white
        self.view.addSubview(hiButton)
        self.view.addSubview(detailButton)
    }
    func setupConstraints(){
        //Setting constraints for hiButton
        hiButton.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        hiButton.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        hiButton.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 64).isActive = true
        hiButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //Setting constraints for detailButton
        detailButton.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        detailButton.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        detailButton.topAnchor.constraint(equalTo: hiButton.bottomAnchor, constant: 10).isActive = true
        detailButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }


}

