//
//  ViewController.swift
//  DiceWithQuotes
//
//  Created by Дмитрий Волков on 26.05.2024.
//

import UIKit



class ViewController: UIViewController {
    
    // quotes array
    let quotesArray = [
    "I learned you can't control everything. You've got to roll with the dice sometimes.",
    "God's dice always have a lucky roll.",
    "Imposing democracy through force is a roll of the dice.",
    "One who doesn't throw the dice can never expect to score a six."
    ]
    
    // app's background
    let backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "bg")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    // the right dice
    let diceOneImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "dice")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    // the left dice
    let diceTwoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "dice")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    // the quote
    let quoteLabel: UILabel = {
        let quote = UILabel()
        quote.text = "One who doesn't throw the dice can never expect to score a six."
        quote.textColor = .white
        quote.font = UIFont.systemFont(ofSize: 30)
        //quote.lineBreakMode = .byWordWrapping
        quote.numberOfLines = 0
        quote.textAlignment = .center
        quote.translatesAutoresizingMaskIntoConstraints = false
        return quote
    }()
    
    // the roll button
    lazy var rollButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Roll", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20)
        button.tintColor = .white
        button.backgroundColor = UIColor(red: 219/255, green: 52/255, blue: 56/225, alpha: 1)
        button.layer.cornerRadius = 12
        button.addTarget(self, action: #selector(rollButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    // button handler
    @objc func rollButtonTapped(){
        let diceArray = [UIImage(named: "dice"),UIImage(named: "dice-2"),UIImage(named: "dice-3"),UIImage(named: "dice-4"),UIImage(named: "dice-5"),UIImage(named: "dice-6")]
        diceOneImageView.image = diceArray.randomElement()!!
        diceTwoImageView.image = diceArray.randomElement()!!
        quoteLabel.text = quotesArray.randomElement()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(backgroundImageView)
        backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        view.addSubview(diceOneImageView)
        diceOneImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        diceOneImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        diceOneImageView.heightAnchor.constraint(equalToConstant: 120).isActive = true
        diceOneImageView.widthAnchor.constraint(equalToConstant: 120).isActive = true
        
        view.addSubview(diceTwoImageView)
        diceTwoImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        diceTwoImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        diceTwoImageView.heightAnchor.constraint(equalToConstant: 120).isActive = true
        diceTwoImageView.widthAnchor.constraint(equalToConstant: 120).isActive = true
        
        view.addSubview(rollButton)
        rollButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        rollButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100).isActive = true
        rollButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        rollButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        view.addSubview(quoteLabel)
        quoteLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        quoteLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10).isActive = true
        quoteLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10).isActive = true
        
    }


}

