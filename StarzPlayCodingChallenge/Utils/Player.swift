//
//  Player.swift
//  StarzPlayCodingChallenge
//
//  Created by Ahmad on 30/03/2024.
//

import UIKit
import AVKit

class Player: UIViewController {

    private var playerViewController: AVPlayerViewController!

    init(videoURL: URL) {
        super.init(nibName: nil, bundle: nil)
        setupPlayer(videoURL: videoURL)
        setupCloseButton()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    private func setupPlayer(videoURL: URL) {
        let player = AVPlayer(url: videoURL)
        playerViewController = AVPlayerViewController()
        playerViewController.player = player

        addChild(playerViewController)
        view.addSubview(playerViewController.view)

        // Adjust the frame of the player view
        playerViewController.view.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height - 20)

        playerViewController.didMove(toParent: self)

        // Play the video automatically
        player.play()
    }

    private func setupCloseButton() {
        let closeButton = UIButton(type: .system)
        closeButton.setTitle("Close", for: .normal)
        closeButton.addTarget(self, action: #selector(closeButtonTapped), for: .touchUpInside)

        view.addSubview(closeButton)

        closeButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            closeButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            closeButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }

    @objc private func closeButtonTapped() {
        playerViewController.player?.pause()
        playerViewController.willMove(toParent: nil)
        playerViewController.view.removeFromSuperview()
        playerViewController.removeFromParent()
        dismiss(animated: true, completion: nil)
    }
}
