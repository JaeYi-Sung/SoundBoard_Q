//
//  ViewController.swift
//  SoundBoard_Q
//
//  Created by Jae Yi Sung on 2023/05/08.
//

import UIKit
import AVFoundation
import MediaPlayer

class ViewController: UIViewController {
    
    private var springImg: UIImageView!
    //private var Btn: UIButton!
    //private let summerImg: UIImageView! = nil
    //private let autumnImg: UIImageView! = nil
    //private let let winterImg: UIImageView!
    
    var audioPlayer : AVAudioPlayer?  //optional로 선언
    var isPlay : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        audiosessionInit()
    }
    
    func backImg() {
        
        springImg = UIImageView(frame: CGRect(x: 0.0, y: 0.0, width: view.frame.width * 0.5, height: view.frame.height*0.5 ))
        springImg.image = UIImage(named: "Q - 민들레.png")
        springImg.contentMode = .scaleAspectFill
        view.addSubview(springImg)
        
//        springBtn = UIButton(frame: CGRect(x: Int(0.5*springImg.frame.maxX), y: Int(0.5*springImg.frame.maxY), width: springImg.frame.width*0.8, height: springImg.frame.height * 0.2))
//        springBtn.backgroundColor = .blue
        
    }
    
    func audiosessionInit() {
        //Audio Session 설정
        let audiosession = AVAudioSession.sharedInstance()
        do {
            try audiosession.setCategory(.playback, mode: .default, options: [])
            
        } catch let error as NSError {
            print("audioSession 오류 : \(error.localizedDescription)")
        }
    }
    
    
    @IBAction func pauseAction(_ sender: Any) {
        
        if isPlay == 1 {
            audioPlayer?.pause()
            isPlay = 0
        }

        else {
            audioPlayer?.play()
            isPlay = 1
        }
        
        //audioPlayer?.pause()
    }
    
    
    @IBAction func Spring(_ sender: Any) {
        
        //target membership에 있는 audio 파일 가져오기
        //forResource : 파일명 , withExtension : 확장자
        let url = Bundle.main.url(forResource: "Q - 민들레", withExtension: "mp3")
       
        //url이 nil이면 패스
        guard url != nil else {
            return
        }
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url!)
            audioPlayer?.play()
            isPlay = 1
        }
        catch {
            print("error")
        }
    }
    
    @IBAction func Summer(_ sender: Any) {
        
        //target membership에 있는 audio 파일 가져오기
        //forResource : 파일명 , withExtension : 확장자
        let url = Bundle.main.url(forResource: "Q - 여름밤", withExtension: "mp3")
       
        //url이 nil이면 패스
        guard url != nil else {
            return
        }
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url!)
            audioPlayer?.play()
            isPlay = 1
        }
        catch {
            print("error")
        }
    }
    
    @IBAction func Autumn(_ sender: Any) {
        
        //target membership에 있는 audio 파일 가져오기
        //forResource : 파일명 , withExtension : 확장자
        let url = Bundle.main.url(forResource: "Q - 안녕 가을아", withExtension: "mp3")
       
        //url이 nil이면 패스
        guard url != nil else {
            return
        }
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url!)
            audioPlayer?.play()
            isPlay = 1
        }
        catch {
            print("error")
        }
    }
    
    @IBAction func Winter(_ sender: Any) {
        
        //target membership에 있는 audio 파일 가져오기
        //forResource : 파일명 , withExtension : 확장자
        let url = Bundle.main.url(forResource: "Q - Youth", withExtension: "mp3")
       
        //url이 nil이면 패스
        guard url != nil else {
            return
        }
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url!)
            audioPlayer?.play()
            isPlay = 1
        }
        catch {
            print("error")
        }
    }
    

}

