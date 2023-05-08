//
//  ViewController.swift
//  SoundBoard_Q
//
//  Created by Jae Yi Sung on 2023/05/08.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer : AVAudioPlayer?  //optional로 선언
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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
        }
        catch {
            print("error")
        }
    }
    

}

