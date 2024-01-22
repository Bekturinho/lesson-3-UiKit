//
//  ViewController.swift
//  lesson 3 UiKit
//
//  Created by fortune cookie on 1/20/24.
//

import UIKit

class ViewController: UIViewController {
    
  
    private var arrowImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "downArrow")
        return image
    }()
    private var womanImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "profile")
        return image
    }()
    private var musicPlaylistView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "playlist")
        return image
    }()
    private var headlessTextLabel: UILabel = {
        let label = UILabel()
        label.text = "Calming  Playlist"
        return label
        
    }()
    private var mainImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "illustration")
        return image
    }()

    private var musicNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Rain On Glass"
        return label
        
    }()
    private var autorNameLAbel: UILabel = {
        let label = UILabel()
        label.text = "By: Painting with Passion"
        return label
    }()
    private var playButtonView: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "pause"), for: .normal)
        button.addTarget(self, action: #selector(showPlayResultButton), for: .touchUpInside)
        return button
    }()
    private var forwardButtonView: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "forward"), for: .normal)
        button.addTarget(self, action: #selector(playForward), for: .touchUpInside)
        return button
    }()
    private var backButtonView: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "back"), for: .normal)
        button.addTarget(self, action: #selector(playBack), for: .touchUpInside)
        return button
    }()
    private var repeatButtonView: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "repeat"), for: .normal)
        button.addTarget(self, action: #selector(playRepeat), for: .touchUpInside)
        return button
    }()
    private var shakeButtonView: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "shake"), for: .normal)
        button.addTarget(self, action: #selector(playShake), for: .touchUpInside)
        return button
    }()
    private var lastLabelView: UILabel = {
        let label = UILabel()
        label.text = "PsychologiOS 2024"
        return label
        
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
   setUpSubviews()
      
    }

    func setUpSubviews(){
        view.addSubview(arrowImage)
        view.addSubview(womanImageView)
        view.addSubview(musicPlaylistView)
        view.addSubview(headlessTextLabel)
        view.addSubview(mainImageView)
        view.addSubview(musicNameLabel)
        view.addSubview(autorNameLAbel)
        view.addSubview(playButtonView)
        view.addSubview(forwardButtonView)
        view.addSubview(backButtonView)
        view.addSubview(shakeButtonView)
        view.addSubview(repeatButtonView)
        view.addSubview(lastLabelView)
        arrowImage.translatesAutoresizingMaskIntoConstraints  = false
        womanImageView.translatesAutoresizingMaskIntoConstraints = false
        musicPlaylistView.translatesAutoresizingMaskIntoConstraints = false
        headlessTextLabel.translatesAutoresizingMaskIntoConstraints = false
        mainImageView.translatesAutoresizingMaskIntoConstraints = false
        musicNameLabel.translatesAutoresizingMaskIntoConstraints = false
        autorNameLAbel.translatesAutoresizingMaskIntoConstraints = false
        playButtonView.translatesAutoresizingMaskIntoConstraints = false
        forwardButtonView.translatesAutoresizingMaskIntoConstraints = false
        backButtonView.translatesAutoresizingMaskIntoConstraints = false
        repeatButtonView.translatesAutoresizingMaskIntoConstraints = false
        shakeButtonView.translatesAutoresizingMaskIntoConstraints = false
        lastLabelView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            arrowImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 70),
            arrowImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            womanImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 70),
            womanImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 295),
            musicPlaylistView.topAnchor.constraint(equalTo: view.topAnchor, constant: 75),
            musicPlaylistView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            headlessTextLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 145),
            headlessTextLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            mainImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mainImageView.topAnchor.constraint(equalTo: headlessTextLabel.bottomAnchor, constant: 20),
            musicNameLabel.topAnchor.constraint(equalTo: mainImageView.bottomAnchor, constant: 20),
            musicNameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            autorNameLAbel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            autorNameLAbel.topAnchor.constraint(equalTo: musicNameLabel.bottomAnchor, constant: 10),
            playButtonView.topAnchor.constraint(equalTo: autorNameLAbel.bottomAnchor, constant: 40),
            playButtonView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            forwardButtonView.trailingAnchor.constraint(equalTo: playButtonView.trailingAnchor, constant: 55),
            forwardButtonView.topAnchor.constraint(equalTo: autorNameLAbel.bottomAnchor, constant: 70),
            backButtonView.leadingAnchor.constraint(equalTo: playButtonView.leadingAnchor, constant: -55),
            backButtonView.topAnchor.constraint(equalTo: autorNameLAbel.bottomAnchor, constant: 70),
            shakeButtonView.topAnchor.constraint(equalTo: autorNameLAbel.bottomAnchor, constant: 70),
            repeatButtonView.topAnchor.constraint(equalTo: autorNameLAbel.bottomAnchor, constant: 70),
            shakeButtonView.trailingAnchor.constraint(equalTo: backButtonView.leadingAnchor, constant: -10),
            repeatButtonView.leadingAnchor.constraint(equalTo: forwardButtonView.trailingAnchor, constant: 10),
            lastLabelView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            lastLabelView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30)
        ])
       
        
        
        
        arrowImage.widthAnchor.constraint(equalToConstant: 24).isActive = true
        arrowImage.heightAnchor.constraint(equalToConstant: 24).isActive = true
        womanImageView.widthAnchor.constraint(equalToConstant: 35).isActive = true
        womanImageView.heightAnchor.constraint(equalToConstant: 35).isActive = true
        musicPlaylistView.widthAnchor.constraint(equalToConstant: 24).isActive = true
        musicPlaylistView.heightAnchor.constraint(equalToConstant: 24).isActive = true
        headlessTextLabel.widthAnchor.constraint(equalToConstant: 220).isActive = true
        headlessTextLabel.heightAnchor.constraint(equalToConstant: 41).isActive = true
        headlessTextLabel.font = UIFont.systemFont(ofSize: 30)
        mainImageView.widthAnchor.constraint(equalToConstant: 300).isActive = true
        mainImageView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        musicNameLabel.widthAnchor.constraint(equalToConstant: 211).isActive = true
        musicNameLabel.heightAnchor.constraint(equalToConstant: 48).isActive = true
        musicNameLabel.font = UIFont.systemFont(ofSize: 35)
        autorNameLAbel.widthAnchor.constraint(equalToConstant: 190).isActive = true
        autorNameLAbel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        autorNameLAbel.font = UIFont.systemFont(ofSize: 16)
        playButtonView.widthAnchor.constraint(equalToConstant: 75).isActive = true
        playButtonView.heightAnchor.constraint(equalToConstant: 75).isActive = true
        playButtonView.layer.cornerRadius = 35
        playButtonView.layer.borderWidth = 3
        playButtonView.layer.borderColor = UIColor.purple.cgColor
        forwardButtonView.widthAnchor.constraint(equalToConstant: 24).isActive = true
        forwardButtonView.heightAnchor.constraint(equalToConstant: 24).isActive = true
        backButtonView.widthAnchor.constraint(equalToConstant: 24).isActive = true
        backButtonView.heightAnchor.constraint(equalToConstant: 24).isActive = true
        shakeButtonView.widthAnchor.constraint(equalToConstant: 24).isActive = true
        shakeButtonView.heightAnchor.constraint(equalToConstant: 24).isActive = true
        repeatButtonView.widthAnchor.constraint(equalToConstant: 24).isActive = true
        repeatButtonView.heightAnchor.constraint(equalToConstant: 24).isActive = true
        lastLabelView.widthAnchor.constraint(equalToConstant: 150).isActive = true
        lastLabelView.heightAnchor.constraint(equalToConstant: 19).isActive = true
        lastLabelView.font = UIFont.systemFont(ofSize: 16)
        
       
    }
    @objc func showPlayResultButton(){
        print("Play Button tapped")
    }
    @objc func playForward(){
        print("Forward Button tapped")
    }
    @objc func playBack(){
        print("Back Button tapped")
    }
    @objc func playShake(){
        print("Shake Button tapped")
    }
    @objc func playRepeat(){
        print("Repeat Button tapped")
    }
}

