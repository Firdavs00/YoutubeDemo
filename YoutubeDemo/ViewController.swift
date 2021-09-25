//
//  ViewController.swift
//  YoutubeDemo
//
//  Created by MacBook Pro on 22/09/21.
//
import youtube_ios_player_helper
import UIKit

class ViewController: UIViewController, YTPlayerViewDelegate {

    @IBOutlet weak var playerView: YTPlayerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        let otherPlayer = YTPlayerView()
//        view.addSubview(otherPlayer2)
        playerView.delegate = self
        playerView.load(withVideoId: "bsM1qdGAVbU",
                        playerVars: ["playsinline": 1])
    }
    func playerViewDidBecomeReady(_ playerView: YTPlayerView) {
        playerView.playVideo()
    }
    
}



//videoView.loadHTMLString("<iframe width=\"\(videoView.frame.width)\" height=\"\(videoView.frame.height)\" src=\"https://www.youtube.com/embed/0gdUvWumfpk?&playsinline=1\" frameborder=\"0\" allowfullscreen></iframe>", baseURL: nil)
    
//videoView.loadHTMLString("<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/0gdUvWumfpk\" frameborder=\"0\" allowfullscreen></iframe>", baseURL: nil)
