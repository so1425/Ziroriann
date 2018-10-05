//
//  ViewController.swift
//  Ziroriann
//
//  Created by so1425 on 2018/09/30.
//  Copyright © 2018年 so1425. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var table: UITableView!
    
    //エリアを入れるための配列
    var ereaNameArray = [String]()
    
    // 選択されたセルを覚える変数
    var chosenCell: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "エリア"
        
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)

        table.dataSource = self
        
        table.delegate = self
        
        ereaNameArray = ["北海道・東北", "関東", "中部", "近畿", "中国", "四国", "九州・沖縄"]
    }
    
    // セルの数を指定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ereaNameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell_01")
        
        cell?.textLabel?.text = ereaNameArray[indexPath.row]
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return .leastNormalMagnitude
    }
    
    // セルが選択された時に呼ばれる
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(ereaNameArray[indexPath.row])が選ばれました")
        
        //セルの選択解除
        tableView.deselectRow(at: indexPath, animated: true)
        
        // 選択されたcellの番号を記憶
        chosenCell = indexPath.row
        print("chosenCellは\(String(describing: chosenCell))だよ")
        
        // 画面遷移の準備
        performSegue(withIdentifier: "toSecondViewController",sender: nil)
    }
    
    // Segue 準備
    override func prepare(for segue: UIStoryboardSegue, sender: Any!) {
        
        // 遷移先のViecControllerのインスタンスを生成
        let secVC: SecondViewController = (segue.destination as? SecondViewController)!
        
        // secondViewControllerのgetCellに選択された画像を設定する
        secVC.getCell = chosenCell
    }
    
}
