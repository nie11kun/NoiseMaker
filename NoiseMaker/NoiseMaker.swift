//
//  NoiseMaker.swift
//  NoiseMaker
//
//  Created by Marco Nie on 17/05/2017.
//  Copyright © 2017 Marco Nie. All rights reserved.
//

import AVFoundation

class NoiseMaker {
    let audioFileNames = ["guitar", "applause", "monster", "bubbles"]
    var players: [AVAudioPlayer?]
    
    init() {
        players = audioFileNames.map { fileName in
            if let url = Bundle.main.url(forResource: fileName, withExtension: "wav") {
                return try? AVAudioPlayer.init(contentsOf: url)
            } else {
                return nil
            }
        }
    }
    
    func play(index: Int) {
        if !players.isEmpty && index >= 0 && index < players.count {
            players[index]?.play()
        }
    }
}
