//
//  ResultViewController.swift
//  Ziroriann
//
//  Created by so1425 on 2018/10/06.
//  Copyright © 2018年 so1425. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController, UITableViewDataSource, UITableViewDelegate   {
    
    @IBOutlet var topImageView: UIImageView!
    @IBOutlet var tenmeiLabel: UILabel!
    @IBOutlet var ekikaraLabel: UILabel!
    @IBOutlet var resultMenuTable: UITableView!
    @IBOutlet var resultCallTable: UITableView!
    
    // ThirdViewControllerから選択されたCell番号を受け取る変数
    var thirdGetCell: Int!
    var secondGetCell2: Int!
    var getCell3: Int!
    
    // メニューを入れるための配列
    var rRHMenuArray = [String]()
    
    // コールを入れるための配列
    var rRHCallArray = [String]()
    
    // 選択されたジャンルの配列の長さ変数
    var menuArrayLength: Int!
    var callArrayLength: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultMenuTable.dataSource = self
        resultMenuTable.delegate = self
        
        resultCallTable.dataSource = self
        resultCallTable.delegate = self
        
        // セルの高さの見積もり値
        self.resultMenuTable.estimatedRowHeight = 50
        
        // セルの制約を基に計算された高さを代入
        self.resultMenuTable.rowHeight = UITableView.automaticDimension
        
        rRHMenuArray = ["ラーメン", "豚ラーメン", "豚Wラーメン", "麺増し", "チェダーチーズ", "生卵", "キムチ", "a", "a", "a"]
        
        rRHCallArray = ["ニンニク", "ヤサイ", "アブラ", "カラメ"]
        
        if getCell3 == 3 {
            if secondGetCell2 == 3 {
                switch thirdGetCell {
                case 0:
                    self.title = "ラーメン荘 歴史を刻め 本店"
                    topImageView.image = UIImage(named: "歴史_本店_ramen.jpg")
                    tenmeiLabel.text = "ラーメン荘 歴史を刻め 本店"
                    ekikaraLabel.text = "阪急北千里線 下新庄駅から徒歩３分"
                    menuArrayLength = rRHMenuArray.count
                    callArrayLength = rRHCallArray.count
                default:
                    break
                }
            }
        }
    }
    
    // セルの数を指定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuArrayLength
    }
    
    // 各セルの要素を指定
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // UITableViewCellのインスタンスを生成
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell_04") as! ResultManuViewCell
        let cell2 = tableView.dequeueReusableCell(withIdentifier: "cell_05") as! ResultManuViewCell
        
        if getCell3 == 3 {
            if secondGetCell2 == 3 {
                switch thirdGetCell {
                case 0:
                    cell.menuLabel.text = rRHMenuArray[indexPath.row]
                    cell2.callLabel.text = rRHCallArray[indexPath.row]
                default:
                    break
                }
            }
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return .leastNormalMagnitude
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
