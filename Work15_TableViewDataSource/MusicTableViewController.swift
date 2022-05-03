//
//  MusicTableTableViewController.swift
//  Work15_TableViewDataSource
//
//  Created by 彭有駿 on 2022/5/2.
//

import UIKit

class MusicTableViewController: UITableViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()


    }

   //設定表格有幾個section section有幾個取決於Music裡設定的資料
    override func numberOfSections(in tableView: UITableView) -> Int {
        return musicMessage.count
    }
    
    
    //可以針對不同Section來控制裡面要顯示幾個cell
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //設定tableView的寬
        tableView.rowHeight = 118
        return musicMessage[section].count
    }
    
    
    //取的MusicTableViewCell裡的資料，並設定Cell裡的內容
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "musicCell", for: indexPath) as! MusicTableViewCell
        
        let music = musicMessage[indexPath.section][indexPath.row]
        cell.singerLabel.text = music.singerID
        cell.musicLabel.text = music.musicID
        cell.musicImageView.image = UIImage(named: music.musicImage)
        cell.accessoryType = .disclosureIndicator

        
        return cell
    }
    //設定table的標題
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let header : String
        switch section {
        case 0:
            header = MusicType.lyrical.rawValue
        case 1:
            header = MusicType.lovelorn.rawValue
        case 2:
            header = MusicType.rock.rawValue
        case 3:
            header = MusicType.highMusic.rawValue
        case 4:
            header = MusicType.englishMusic.rawValue
        default:
            header = ""
        }
        return header
    }
    
    //音樂類型標題的距離
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20
    }

    @IBSegueAction func showMusic(_ coder: NSCoder) -> MusicShowViewController? {
        guard let section = tableView.indexPathForSelectedRow?.section else{
            return nil
        }
        guard let row = tableView.indexPathForSelectedRow?.row else{
            return nil
        }
        return MusicShowViewController(coder: coder,music: musicMessage[section][row])
    }
    

}
