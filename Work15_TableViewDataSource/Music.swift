//
//  Music.swift
//  Work15_TableViewDataSource
//
//  Created by 彭有駿 on 2022/5/3.
//

import Foundation

//歌曲類型
enum MusicType:String{
    case lyrical = "抒情"
    case lovelorn = "失戀"
    case rock = "搖滾"
    case highMusic = "快歌"
    case englishMusic = "英文"
    
}


struct Music{
    //歌手
    var singerID:String
    //歌曲
    var musicID:String
    //歌曲圖片
    var musicImage:String
    //歌曲類型
    var musicType:String
    //歌曲連結YT
    var musicURL:String
    
}
var musicMessage = [
    [
    Music(singerID: "季彥霖", musicID: "恍如昨天", musicImage: "恍如昨天", musicType: MusicType.lyrical.rawValue, musicURL: "https://www.youtube.com/watch?v=yXf-jDrzQh8"),
    Music(singerID: "賀一航", musicID: "請先說你好", musicImage: "請先說你好", musicType: MusicType.lyrical.rawValue, musicURL: "https://www.youtube.com/watch?v=ssdFRk-wY0A"),
    Music(singerID: "司南", musicID: "冬眠", musicImage: "冬眠", musicType: MusicType.lyrical.rawValue, musicURL: "https://www.youtube.com/watch?v=cxBZzf8lzqo")
    ],
    
    
    [
    
        Music(singerID: "傅又宣", musicID: "愛．這件事情", musicImage: "愛這件事情", musicType: MusicType.lovelorn.rawValue, musicURL: "https://www.youtube.com/watch?v=EQOVBqFnTbE"),
        Music(singerID: "林芯儀", musicID: "道聽塗說", musicImage: "道聽塗說", musicType: MusicType.lovelorn.rawValue, musicURL: "https://www.youtube.com/watch?v=Rk2MW6L89mY"),
        Music(singerID: "汪蘇瀧", musicID: "追光者", musicImage: "追光者", musicType: MusicType.lovelorn.rawValue, musicURL: "https://www.youtube.com/watch?v=F5RE_S8aIF8")
    
    ],
    
    [
        
        Music(singerID: "五月天", musicID: "將軍令", musicImage: "將軍令", musicType: MusicType.rock.rawValue, musicURL: "https://www.youtube.com/watch?v=83I_5lq5MwI&list=PLvcEJFRLyZhfbXVEyAPC9n1l44twMAYuJ"),
        Music(singerID: "兄弟本色", musicID: "FLYOUT", musicImage: "FLYOUT", musicType: MusicType.rock.rawValue, musicURL: "https://www.youtube.com/watch?v=-sM8SynMM5I&list=PLvcEJFRLyZhfbXVEyAPC9n1l44twMAYuJ&index=21"),
        Music(singerID: "魔幻力量", musicID: "射手", musicImage: "射手", musicType: MusicType.rock.rawValue, musicURL: "https://www.youtube.com/watch?v=0QTV0RAfHho")
        
        
    ],
    
    [
        Music(singerID: "By2", musicID: "沒理由", musicImage: "沒理由", musicType: MusicType.highMusic.rawValue, musicURL: "https://www.youtube.com/watch?v=DG660Jijr1A&list=PLJq5gWE5PzSq5DkhVJle8zfz3wMCfvOC0&index=2"),
        Music(singerID: "大嘴巴", musicID: "Funky那個女孩", musicImage: "Funky那個女孩", musicType: MusicType.highMusic.rawValue, musicURL: "https://www.youtube.com/watch?v=vOZRT3aF_4M&list=PLJq5gWE5PzSq5DkhVJle8zfz3wMCfvOC0&index=35"),
        Music(singerID: "王心凌", musicID: "BabyBoy", musicImage: "BabyBoy", musicType: MusicType.highMusic.rawValue, musicURL: "https://www.youtube.com/watch?v=sjrEFcC28Tg&list=PLJq5gWE5PzSq5DkhVJle8zfz3wMCfvOC0&index=30")
    
    
    
    ],
    [
    
        Music(singerID: "Justin Bieber", musicID: "Baby", musicImage: "baby", musicType: MusicType.englishMusic.rawValue, musicURL: "https://www.youtube.com/watch?v=kffacxfA7G4"),
        Music(singerID: "阿福", musicID: "Nothing on you", musicImage: "Nothing on you", musicType: MusicType.englishMusic.rawValue, musicURL: "https://www.youtube.com/watch?v=kffacxfA7G4"),
        Music(singerID: "Alan Walker", musicID: "All Falls Down", musicImage: "All Falls Down", musicType: MusicType.englishMusic.rawValue, musicURL: "https://www.youtube.com/watch?v=F-Y86dlubEkˊ")
    
    
    ]
   
]
