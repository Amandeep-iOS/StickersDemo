//
//  NatureStickerBrowserViewController.swift
//  NatureStikers
//


import Foundation
import UIKit
import Messages



class NatureStickerBrowserViewController: MSStickerBrowserViewController {
    
    
    var stickers = [MSSticker]()
    override func numberOfStickers(in stickerBrowserView: MSStickerBrowserView) -> Int {
        
        return stickers.count
    }
    
    override func stickerBrowserView(_ stickerBrowserView: MSStickerBrowserView, stickerAt index: Int) -> MSSticker {
        
        return stickers[index]
    }

    func createSticker(asset: String, localizedDescription: String) {
        guard let stickerPath = Bundle.main.path(forResource: asset, ofType: "png", inDirectory: nil) else {
            print("couldn't create the sticker path for" , asset)
            return
        }
        let stickerURL = URL(fileURLWithPath: stickerPath)
        let sticker : MSSticker
        do {
            try sticker = MSSticker(contentsOfFileURL: stickerURL, localizedDescription: localizedDescription)
            stickers.append(sticker)
        } catch {
            print(error)
            return
        }
    }
    
    func loadStickers() {
        createSticker(asset: "canada", localizedDescription: "canada sticker")
        
    }
    
    func changeBrowserViewBackgroundColor(color: UIColor) {
        
        stickerBrowserView.backgroundColor = color
    }
}


