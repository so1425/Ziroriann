//
//  SecondViewController.swift
//  Ziroriann
//
//  Created by so1425 on 2018/10/01.
//  Copyright © 2018年 so1425. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
    @IBOutlet var secondTable: UITableView!
    
    // ViewControllerから選択されたCell番号を受け取る変数
    var getCell: Int!
    
    var hokkaidoTohokuArray = [String]()
    var kantoArray = [String]()
    var chubuArray = [String]()
    var kinkiArray = [String]()
    var chugokuArray = [String]()
    var shikokuArray = [String]()
    var kyushuOkinawaArray = [String]()
    
    // 選択されたジャンルの配列の長さ変数
    var arrayLength: Int!
    
    // 選択されたセルを覚える変数
    var secondChosenCell: Int!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
        secondTable.dataSource = self
        
        secondTable.delegate = self
        
        hokkaidoTohokuArray = ["北海道", "青森", "岩手", "宮城", "秋田", "山形", "福島"]
        kantoArray = ["茨城", "栃木", "群馬", "埼玉", "千葉", "東京", "神奈川"]
        chubuArray = ["新潟", "富山", "石川", "福井", "山梨", "長野", "岐阜", "静岡", "愛知"]
        kinkiArray = ["三重", "滋賀", "京都", "大阪", "兵庫", "奈良", "和歌山"]
        chugokuArray = ["鳥取", "島根", "岡山", "広島", "山口"]
        shikokuArray = ["徳島", "香川", "愛媛", "高知"]
        kyushuOkinawaArray = ["福岡", "佐賀", "長崎", "熊本", "大分", "宮崎", "鹿児島", "沖縄"]

        // 選択されたジャンルによってセルの数を変える
        // getCellの中身が・・・
        switch getCell {
        // 0のとき
        case 0:
            arrayLength = hokkaidoTohokuArray.count
            self.title = "北海道・東北"
        // 1のとき
        case 1:
            arrayLength = kantoArray.count
            self.title = "関東"
        // 2のとき
        case 2:
            arrayLength = chubuArray.count
            self.title = "中部"
        // 3のとき
        case 3:
            arrayLength = kinkiArray.count
            self.title = "近畿"
        // 4のとき
        case 4:
            arrayLength = chugokuArray.count
            self.title = "中国"
        // 5のとき
        case 5:
            arrayLength = shikokuArray.count
            self.title = "四国"
        // 6のとき
        case 6:
            arrayLength = kyushuOkinawaArray.count
            self.title = "九州・沖縄"
        default:
            break
        }
    }

    // セルの数を指定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayLength
    }
    
    // 各セルの要素を指定
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // UITableViewCellのインスタンスを生成
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell_02")
        
        // 選択されたジャンルによってセルの中身を変える
        // getCellの中身が・・・
        switch getCell {
        // 0のとき
        case 0:
            // セルのUILabelに配列の中身を順に表示
            cell?.textLabel?.text = hokkaidoTohokuArray[indexPath.row]
        // 1のとき
        case 1:
            cell?.textLabel?.text = kantoArray[indexPath.row]
        // 2のとき
        case 2:
            cell?.textLabel?.text = chubuArray[indexPath.row]
        // 3のとき
        case 3:
            cell?.textLabel?.text = kinkiArray[indexPath.row]
        // 4のとき
        case 4:
            cell?.textLabel?.text = chugokuArray[indexPath.row]
        // 5のとき
        case 5:
            cell?.textLabel?.text = shikokuArray[indexPath.row]
        // 6のとき
        case 6:
            cell?.textLabel?.text = kyushuOkinawaArray[indexPath.row]
        default:
            break
        }
        
        return cell!
    }
    
    // セルが選択された時に呼ばれる
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(hokkaidoTohokuArray[indexPath.row])が選ばれました")
        print("\(kantoArray[indexPath.row])が選ばれました")
        print("\(chubuArray[indexPath.row])が選ばれました")
        print("\(kinkiArray[indexPath.row])が選ばれました")
        print("\(chugokuArray[indexPath.row])が選ばれました")
        print("\(shikokuArray[indexPath.row])が選ばれました")
        print("\(kyushuOkinawaArray[indexPath.row])が選ばれました")
        
        //セルの選択解除
        tableView.deselectRow(at: indexPath, animated: true)
        
        // 選択されたcellの番号を記憶
        secondChosenCell = indexPath.row
        print(secondChosenCell)
        
        // 画面遷移の準備
        performSegue(withIdentifier: "toThirdViewController",sender: nil)
    }
    
    // Segue 準備
    override func prepare(for segue: UIStoryboardSegue, sender: Any!) {
        
        // 遷移先のViecControllerのインスタンスを生成
        let thiVC: ThirdViewController = (segue.destination as? ThirdViewController)!
        
        // secondViewControllerのsecondGetCellに選択された画像を設定する
        thiVC.secondGetCell = secondChosenCell
    }
}
