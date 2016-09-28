//
//  MessagesViewController.swift
//  MessagesExtension
//


import UIKit
import Messages

class MessagesViewController: MSMessagesAppViewController {
    
    
    var browserViewController : NatureStickerBrowserViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        browserViewController = NatureStickerBrowserViewController(stickerSize: .regular)
        browserViewController.view.frame = self.view.frame
        
        self.addChildViewController(browserViewController)
        browserViewController.didMove(toParentViewController: self)
        self.view.addSubview(browserViewController.view)
        
        browserViewController.loadStickers()
        browserViewController.stickerBrowserView.reloadData()
        
        browserViewController.changeBrowserViewBackgroundColor(color: UIColor.init(red: 1.0, green: 0.58, blue: 0.68, alpha: 1))
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
