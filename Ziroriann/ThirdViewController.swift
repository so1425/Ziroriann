//
//  ThirdViewController.swift
//  Ziroriann
//
//  Created by so1425 on 2018/10/01.
//  Copyright © 2018年 so1425. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var thirdTable: UITableView!

    // SecondViewControllerから選択されたCell番号を受け取る変数
    var secondGetCell: Int!
    
    var hokkaidoArray = [String]()
    var aomoriArray = [String]()
    var iwateArray = [String]()
    var miyagiArray = [String]()
    var akitaArray = [String]()
    var yamagataArray = [String]()
    var fukushimaArray = [String]()
    var ibarakiArray = [String]()
    var tochigiArray = [String]()
    var gunmaArray = [String]()
    var saitamaArray = [String]()
    var chibaArray = [String]()
    var tokyoArray = [String]()
    var kanagawaArray = [String]()
    var niigataArray = [String]()
    var toyamaArray = [String]()
    var ishikawaArray = [String]()
    var fukuiArray = [String]()
    var yamanashiArray = [String]()
    var naganoArray = [String]()
    var gifuArray = [String]()
    var shizuokaArray = [String]()
    var aichiArray = [String]()
    var mieArray = [String]()
    var shigaArray = [String]()
    var kyotoArray = [String]()
    var osakaArray = [String]()
    var hyogoArray = [String]()
    var naraArray = [String]()
    var wakayamaArray = [String]()
    var tottoriArray = [String]()
    var shimaneArray = [String]()
    var okayamaArray = [String]()
    var hiroshimaArray = [String]()
    var yamaguchiArray = [String]()
    var tokushimaArray = [String]()
    var kagawaArray = [String]()
    var ehimeArray = [String]()
    var kochiArray = [String]()
    var fukuokaArray = [String]()
    var sagaArray = [String]()
    var nagasakiArray = [String]()
    var kumamotoArray = [String]()
    var oitaArray = [String]()
    var miyazakiArray = [String]()
    var kagoshimaArray = [String]()
    var okinawaArray = [String]()
    
    // 選択されたジャンルの配列の長さ変数
    var secondArrayLength: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        thirdTable.dataSource = self
        
        thirdTable.delegate = self

        hokkaidoArray = ["テスト", "テスト"]
        aomoriArray = ["テスト"]
        iwateArray = ["テスト"]
        miyagiArray = ["テスト"]
        akitaArray = ["テスト"]
        yamagataArray = ["テスト"]
        fukushimaArray = ["テスト"]
        ibarakiArray = ["テスト"]
        tochigiArray = ["テスト"]
        gunmaArray = ["テスト"]
        saitamaArray = ["テスト"]
        chibaArray = ["テスト"]
        tokyoArray = ["テスト"]
        kanagawaArray = ["テスト"]
        niigataArray = ["テスト"]
        toyamaArray = ["テスト"]
        ishikawaArray = ["テスト"]
        fukuiArray = ["テスト"]
        yamanashiArray = ["テスト"]
        naganoArray = ["テスト"]
        gifuArray = ["テスト"]
        shizuokaArray = ["テスト"]
        aichiArray = ["テスト"]
        mieArray = ["テスト"]
        shigaArray = ["テスト"]
        kyotoArray = ["テスト"]
        osakaArray = ["テスト"]
        hyogoArray = ["テスト"]
        naraArray = ["テスト"]
        wakayamaArray = ["テスト"]
        tottoriArray = ["テスト"]
        shimaneArray = ["テスト"]
        okayamaArray = ["テスト"]
        hiroshimaArray = ["テスト"]
        yamaguchiArray = ["テスト"]
        tokushimaArray = ["テスト"]
        kagawaArray = ["テスト"]
        ehimeArray = ["テスト"]
        kochiArray = ["テスト"]
        fukuokaArray = ["テスト"]
        sagaArray = ["テスト"]
        nagasakiArray = ["テスト"]
        kumamotoArray = ["テスト"]
        oitaArray = ["テスト"]
        miyazakiArray = ["テスト"]
        kagoshimaArray = ["テスト"]
        okinawaArray = ["テスト"]
        
        // 選択されたジャンルによってセルの数を変える
        // secondGetCellの中身が・・・
        switch secondGetCell {
        // 0のとき
        case 0:
            secondArrayLength = hokkaidoArray.count
            self.title = "北海道"
        // 1のとき
        case 1:
            secondArrayLength = aomoriArray.count
            self.title = "青森"
        // 2のとき
        case 2:
            secondArrayLength = iwateArray.count
            self.title = "岩手"
        // 3のとき
        case 3:
            secondArrayLength = miyagiArray.count
            self.title = "宮城"
        // 4のとき
        case 4:
            secondArrayLength = akitaArray.count
            self.title = "秋田"
        // 5のとき
        case 5:
            secondArrayLength = yamagataArray.count
            self.title = "山形"
        // 6のとき
        case 6:
            secondArrayLength = fukushimaArray.count
            self.title = "福島"
        default:
            break
        }
    }
    
    // セルの数を指定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return secondArrayLength
    }

    // 各セルの要素を指定
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // UITableViewCellのインスタンスを生成
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell_03")
        
        // 選択されたジャンルによってセルの中身を変える
        // secondGetCellの中身が・・・
        switch secondGetCell {
        // 0のとき
        case 0:
            // セルのUILabelに配列の中身を順に表示
            cell?.textLabel?.text = hokkaidoArray[indexPath.row]
        // 1のとき
        case 1:
            cell?.textLabel?.text = aomoriArray[indexPath.row]
        // 2のとき
        case 2:
            cell?.textLabel?.text = iwateArray[indexPath.row]
        // 3のとき
        case 3:
            cell?.textLabel?.text = miyagiArray[indexPath.row]
        // 4のとき
        case 4:
            cell?.textLabel?.text = akitaArray[indexPath.row]
        // 5のとき
        case 5:
            cell?.textLabel?.text = yamagataArray[indexPath.row]
        // 6のとき
        case 6:
            cell?.textLabel?.text = fukushimaArray[indexPath.row]
        default:
            break
        }
        
        return cell!
    }
}
