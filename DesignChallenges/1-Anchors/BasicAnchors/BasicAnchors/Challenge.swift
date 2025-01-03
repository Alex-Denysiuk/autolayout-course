//
//  Challenge.swift
//  BasicAnchors
//
//  Created by Jonathan Rasmusson (Contractor) on 2019-08-26.
//  Copyright © 2019 Jonathan Rasmusson. All rights reserved.
//

import UIKit

class Challenge: UIViewController {

    let margin: CGFloat = 20
    let spacing: CGFloat = 32

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        setupViews()
    }

    func setupNavigationBar() {
        navigationItem.title = "Playback"
    }

    func setupViews() {

        // Comment in incrementally ...
        let offlineLabel = makeLabel(withText: "Offline")
        let offlineSwitch = makeSwitch(isOn: false)
        let offlineSublabel = makeSubLabel(withText: "When you go offline, you'll only be able to play the music and podcasts you've downloaded.")

        let crossfadeLabel = makeBoldLabel(withText: "Crossfade")
        let crossfadeMinLabel = makeSubLabel(withText: "0s")
        let crossfadeMaxLabel = makeSubLabel(withText: "12s")
        let crossfadeProgressView = makeProgressView()

        let gaplessPlaybackLabel = makeLabel(withText: "Gapless Playback")
        let gaplessPlaybackSwitch = makeSwitch(isOn: true)

        let hideSongsLabel = makeLabel(withText: "Hide Unplayable Songs")
        let hideSongsSwitch = makeSwitch(isOn: true)

        let enableNormalizationLabel = makeLabel(withText: "Enable Audio Normalization")
        let enableNormalizationSwitch = makeSwitch(isOn: true)

        view.addSubview(offlineLabel)
        view.addSubview(offlineSwitch)
        view.addSubview(offlineSublabel)

        view.addSubview(crossfadeLabel)
        view.addSubview(crossfadeMinLabel)
        view.addSubview(crossfadeProgressView)
        view.addSubview(crossfadeMaxLabel)

        view.addSubview(gaplessPlaybackLabel)
        view.addSubview(gaplessPlaybackSwitch)

        view.addSubview(hideSongsLabel)
        view.addSubview(hideSongsSwitch)

        view.addSubview(enableNormalizationLabel)
        view.addSubview(enableNormalizationSwitch)

        // Start your layout here...
        
        NSLayoutConstraint.activate([
            offlineLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: margin),
            offlineLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: margin),
            
            offlineSwitch.centerYAnchor.constraint(equalTo: offlineLabel.centerYAnchor),
            offlineSwitch.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -margin),
            
            offlineSublabel.topAnchor.constraint(equalTo: offlineLabel.bottomAnchor, constant: margin),
            offlineSublabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin),
            offlineSublabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin),

            crossfadeLabel.topAnchor.constraint(equalTo: offlineSublabel.bottomAnchor, constant: spacing),
            crossfadeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),

            crossfadeMinLabel.topAnchor.constraint(equalTo: crossfadeLabel.bottomAnchor, constant: spacing),
            crossfadeMinLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin),

            crossfadeProgressView.centerYAnchor.constraint(equalTo: crossfadeMinLabel.centerYAnchor),
            crossfadeProgressView.leadingAnchor.constraint(equalTo: crossfadeMinLabel.trailingAnchor, constant: 4),
            crossfadeProgressView.trailingAnchor.constraint(equalTo: crossfadeMaxLabel.leadingAnchor, constant: -4),

            crossfadeMaxLabel.centerYAnchor.constraint(equalTo: crossfadeMinLabel.centerYAnchor),
            crossfadeMaxLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin),

            gaplessPlaybackLabel.topAnchor.constraint(equalTo: crossfadeMinLabel.bottomAnchor, constant: spacing),
            gaplessPlaybackLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin),

            gaplessPlaybackSwitch.centerYAnchor.constraint(equalTo: gaplessPlaybackLabel.centerYAnchor),
            gaplessPlaybackSwitch.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin),

            hideSongsLabel.topAnchor.constraint(equalTo: gaplessPlaybackLabel.bottomAnchor, constant: spacing),
            hideSongsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin),

            hideSongsSwitch.centerYAnchor.constraint(equalTo: hideSongsLabel.centerYAnchor),
            hideSongsSwitch.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin),

            enableNormalizationLabel.topAnchor.constraint(equalTo: hideSongsLabel.bottomAnchor, constant: spacing),
            enableNormalizationLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin),

            enableNormalizationSwitch.centerYAnchor.constraint(equalTo: enableNormalizationLabel.centerYAnchor),
            enableNormalizationSwitch.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin)
        ])
    }
}

