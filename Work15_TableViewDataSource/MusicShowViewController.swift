//
//  MusicShowViewController.swift
//  Work15_TableViewDataSource
//
//  Created by 彭有駿 on 2022/5/3.
//

import UIKit
import WebKit

class MusicShowViewController: UIViewController {
    
    
    @IBOutlet weak var musicNameLabel: UILabel!
    
    @IBOutlet weak var singerLabel: UILabel!

    @IBOutlet weak var MVWebView: WKWebView!

    
    
    let music : Music
    
    init?(coder: NSCoder, music: Music) {
        self.music = music
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        musicNameLabel.text = music.musicID
        singerLabel.text  = music.singerID
        
        let url = URLRequest(url:URL (string:self.music.musicURL)!)
        MVWebView.load(url)
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
