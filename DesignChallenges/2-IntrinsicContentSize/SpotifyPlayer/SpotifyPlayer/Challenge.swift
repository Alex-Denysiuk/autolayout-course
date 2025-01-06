//
//  Challenge.swift
//  SpotifyPlayer
//
//  Created by Jonathan Rasmusson (Contractor) on 2019-08-26.
//  Copyright © 2019 Jonathan Rasmusson. All rights reserved.
//

import UIKit

class Challenge: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

    func setupViews() {

        // Comment in incrementally...
        let albumImage = makeImageView(named: "rush")
        let trackLabel = makeTrackLabel(withText: "Tom Sawyer")
        let albumLabel = makeAlbumLabel(withText: "Rush • Moving Pictures (2011 Remaster)")

        let playButton = makePlayButton()
        let previewStartLabel = makePreviewLabel(withText: "0:00")
        let previewEndLabel = makePreviewLabel(withText: "0:30")
        let progressView = makeProgressView()

        let spotifyButton = makeSpotifyButton(withText: "PLAY ON SPOTIFY")

        view.addSubview(albumImage)
        view.addSubview(trackLabel)
        view.addSubview(albumLabel)

        view.addSubview(playButton)
        view.addSubview(previewStartLabel)
        view.addSubview(progressView)
        view.addSubview(previewEndLabel)

        view.addSubview(spotifyButton)

        // Start your layout here...
        
        NSLayoutConstraint.activate([
            albumImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            albumImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            albumImage.heightAnchor.constraint(equalTo: albumImage.widthAnchor, multiplier: 1),
            albumImage.widthAnchor.constraint(equalToConstant: view.bounds.width),
            
            trackLabel.topAnchor.constraint(equalToSystemSpacingBelow: albumImage.bottomAnchor, multiplier: 1),
            trackLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 8),
            trackLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -8),
            
            albumLabel.topAnchor.constraint(equalToSystemSpacingBelow: trackLabel.bottomAnchor, multiplier: 1),
            albumLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 8),
            albumLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -8),
            
            playButton.topAnchor.constraint(equalTo: albumLabel.bottomAnchor, constant: 8),
            playButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 8),
            playButton.heightAnchor.constraint(equalToConstant: buttonHeight),
            playButton.widthAnchor.constraint(equalToConstant: buttonHeight),

            previewStartLabel.centerYAnchor.constraint(equalTo: playButton.centerYAnchor),
            previewStartLabel.leadingAnchor.constraint(equalTo: playButton.trailingAnchor, constant: 8),

            progressView.centerYAnchor.constraint(equalTo: playButton.centerYAnchor),
            progressView.leadingAnchor.constraint(equalTo: previewStartLabel.trailingAnchor, constant: 8),

            previewEndLabel.centerYAnchor.constraint(equalTo: playButton.centerYAnchor),
            previewEndLabel.leadingAnchor.constraint(equalTo: progressView.trailingAnchor, constant: 8),
            previewEndLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            
            spotifyButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            spotifyButton.topAnchor.constraint(equalTo: progressView.bottomAnchor, constant: 32),
            spotifyButton.heightAnchor.constraint(equalToConstant: buttonHeight),
        ])

    }
}
