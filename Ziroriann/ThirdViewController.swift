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
    
    var getCell2: Int!
    
    // 店名の配列
    var tenmeiHokkaidoArray = [String]()
    var tenmeiAomoriArray = [String]()
    var tenmeiIwateArray = [String]()
    var tenmeiMiyagiArray = [String]()
    var tenmeiAkitaArray = [String]()
    var tenmeiYamagataArray = [String]()
    var tenmeiFukushimaArray = [String]()
    var tenmeiIbarakiArray = [String]()
    var tenmeiTochigiArray = [String]()
    var tenmeiGunmaArray = [String]()
    var tenmeiSaitamaArray = [String]()
    var tenmeiChibaArray = [String]()
    var tenmeiTokyoArray = [String]()
    var tenmeiKanagawaArray = [String]()
    var tenmeiNiigataArray = [String]()
    var tenmeiToyamaArray = [String]()
    var tenmeiIshikawaArray = [String]()
    var tenmeiFukuiArray = [String]()
    var tenmeiYamanashiArray = [String]()
    var tenmeiNaganoArray = [String]()
    var tenmeiGifuArray = [String]()
    var tenmeiShizuokaArray = [String]()
    var tenmeiAichiArray = [String]()
    var tenmeiMieArray = [String]()
    var tenmeiShigaArray = [String]()
    var tenmeiKyotoArray = [String]()
    var tenmeiOsakaArray = [String]()
    var tenmeiHyogoArray = [String]()
    var tenmeiNaraArray = [String]()
    var tenmeiWakayamaArray = [String]()
    var tenmeiTottoriArray = [String]()
    var tenmeiShimaneArray = [String]()
    var tenmeiOkayamaArray = [String]()
    var tenmeiHiroshimaArray = [String]()
    var tenmeiYamaguchiArray = [String]()
    var tenmeiTokushimaArray = [String]()
    var tenmeiKagawaArray = [String]()
    var tenmeiEhimeArray = [String]()
    var tenmeiKochiArray = [String]()
    var tenmeiFukuokaArray = [String]()
    var tenmeiSagaArray = [String]()
    var tenmeiNagasakiArray = [String]()
    var tenmeiKumamotoArray = [String]()
    var tenmeiOitaArray = [String]()
    var tenmeiMiyazakiArray = [String]()
    var tenmeiKagoshimaArray = [String]()
    var tenmeiOkinawaArray = [String]()
    
    // ラーメン画像の配列
    var ramenImageHokkaidoArray = [String]()
    var ramenImageAomoriArray = [String]()
    var ramenImageIwateArray = [String]()
    var ramenImageMiyagiArray = [String]()
    var ramenImageAkitaArray = [String]()
    var ramenImageYamagataArray = [String]()
    var ramenImageFukushimaArray = [String]()
    var ramenImageIbarakiArray = [String]()
    var ramenImageTochigiArray = [String]()
    var ramenImageGunmaArray = [String]()
    var ramenImageSaitamaArray = [String]()
    var ramenImageChibaArray = [String]()
    var ramenImageTokyoArray = [String]()
    var ramenImageKanagawaArray = [String]()
    var ramenImageNiigataArray = [String]()
    var ramenImageToyamaArray = [String]()
    var ramenImageIshikawaArray = [String]()
    var ramenImageFukuiArray = [String]()
    var ramenImageYamanashiArray = [String]()
    var ramenImageNaganoArray = [String]()
    var ramenImageGifuArray = [String]()
    var ramenImageShizuokaArray = [String]()
    var ramenImageAichiArray = [String]()
    var ramenImageMieArray = [String]()
    var ramenImageShigaArray = [String]()
    var ramenImageKyotoArray = [String]()
    var ramenImageOsakaArray = [String]()
    var ramenImageHyogoArray = [String]()
    var ramenImageNaraArray = [String]()
    var ramenImageWakayamaArray = [String]()
    var ramenImageTottoriArray = [String]()
    var ramenImageShimaneArray = [String]()
    var ramenImageOkayamaArray = [String]()
    var ramenImageHiroshimaArray = [String]()
    var ramenImageYamaguchiArray = [String]()
    var ramenImageTokushimaArray = [String]()
    var ramenImageKagawaArray = [String]()
    var ramenImageEhimeArray = [String]()
    var ramenImageKochiArray = [String]()
    var ramenImageFukuokaArray = [String]()
    var ramenImageSagaArray = [String]()
    var ramenImageNagasakiArray = [String]()
    var ramenImageKumamotoArray = [String]()
    var ramenImageOitaArray = [String]()
    var ramenImageMiyazakiArray = [String]()
    var ramenImageKagoshimaArray = [String]()
    var ramenImageOkinawaArray = [String]()
    
    // 選択されたジャンルの配列の長さ変数
    var secondArrayLength: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        thirdTable.dataSource = self
        
        thirdTable.delegate = self
        
        // 各Arrayに店名を入れていく
        tenmeiHokkaidoArray = ["テスト"]
        tenmeiAomoriArray = ["テスト"]
        tenmeiIwateArray = ["テスト"]
        tenmeiMiyagiArray = ["テスト"]
        tenmeiAkitaArray = ["テスト"]
        tenmeiYamagataArray = ["テスト"]
        tenmeiFukushimaArray = ["テスト"]
        tenmeiIbarakiArray = ["テスト"]
        tenmeiTochigiArray = ["テスト"]
        tenmeiGunmaArray = ["テスト"]
        tenmeiSaitamaArray = ["テスト"]
        tenmeiChibaArray = ["テスト"]
        tenmeiTokyoArray = ["テスト"]
        tenmeiKanagawaArray = ["テスト"]
        tenmeiNiigataArray = ["テスト"]
        tenmeiToyamaArray = ["テスト"]
        tenmeiIshikawaArray = ["テスト"]
        tenmeiFukuiArray = ["テスト"]
        tenmeiYamanashiArray = ["テスト"]
        tenmeiNaganoArray = ["テスト"]
        tenmeiGifuArray = ["テスト"]
        tenmeiShizuokaArray = ["テスト"]
        tenmeiAichiArray = ["テスト"]
        tenmeiMieArray = ["テスト"]
        tenmeiShigaArray = ["テスト"]
        tenmeiKyotoArray = ["テスト"]
        tenmeiOsakaArray = ["ラーメン荘 歴史を刻め 本店", "ラーメン荘 歴史を刻め     寺田町", "ラーメン荘 歴史を刻め 枚方", "ラーメン荘 歴史を刻め         なかもず", "ラーメン荘 おもしろい方へ", "ラーメン荘 地球規模で考えろ 〜未来へ〜"]
        tenmeiHyogoArray = ["テスト"]
        tenmeiNaraArray = ["テスト"]
        tenmeiWakayamaArray = ["テスト"]
        tenmeiTottoriArray = ["テスト"]
        tenmeiShimaneArray = ["テスト"]
        tenmeiOkayamaArray = ["テスト"]
        tenmeiHiroshimaArray = ["テスト"]
        tenmeiYamaguchiArray = ["テスト"]
        tenmeiTokushimaArray = ["テスト"]
        tenmeiKagawaArray = ["テスト"]
        tenmeiEhimeArray = ["テスト"]
        tenmeiKochiArray = ["テスト"]
        tenmeiFukuokaArray = ["テスト"]
        tenmeiSagaArray = ["テスト"]
        tenmeiNagasakiArray = ["テスト"]
        tenmeiKumamotoArray = ["テスト"]
        tenmeiOitaArray = ["テスト"]
        tenmeiMiyazakiArray = ["テスト"]
        tenmeiKagoshimaArray = ["テスト"]
        tenmeiOkinawaArray = ["テスト"]
        
        // 各Arrayにラーメン画像を入れていく
        ramenImageHokkaidoArray = [""]
        ramenImageAomoriArray = [""]
        ramenImageIwateArray = [""]
        ramenImageMiyagiArray = [""]
        ramenImageAkitaArray = [""]
        ramenImageYamagataArray = [""]
        ramenImageFukushimaArray = [""]
        ramenImageIbarakiArray = [""]
        ramenImageTochigiArray = [""]
        ramenImageGunmaArray = [""]
        ramenImageSaitamaArray = [""]
        ramenImageChibaArray = [""]
        ramenImageTokyoArray = [""]
        ramenImageKanagawaArray = [""]
        ramenImageNiigataArray = [""]
        ramenImageToyamaArray = [""]
        ramenImageIshikawaArray = [""]
        ramenImageFukuiArray = [""]
        ramenImageYamanashiArray = [""]
        ramenImageNaganoArray = [""]
        ramenImageGifuArray = [""]
        ramenImageShizuokaArray = [""]
        ramenImageAichiArray = [""]
        ramenImageMieArray = [""]
        ramenImageShigaArray = [""]
        ramenImageKyotoArray = [""]
        ramenImageOsakaArray = ["歴史を刻め_汁なし.jpg", "", "", "", "", "歴史を刻め_汁なし.jpg"]
        ramenImageHyogoArray = [""]
        ramenImageNaraArray = [""]
        ramenImageWakayamaArray = [""]
        ramenImageTottoriArray = [""]
        ramenImageShimaneArray = [""]
        ramenImageOkayamaArray = [""]
        ramenImageHiroshimaArray = [""]
        ramenImageYamaguchiArray = [""]
        ramenImageTokushimaArray = [""]
        ramenImageKagawaArray = [""]
        ramenImageEhimeArray = [""]
        ramenImageKochiArray = [""]
        ramenImageFukuokaArray = [""]
        ramenImageSagaArray = [""]
        ramenImageNagasakiArray = [""]
        ramenImageKumamotoArray = [""]
        ramenImageOitaArray = [""]
        ramenImageMiyazakiArray = [""]
        ramenImageKagoshimaArray = [""]
        ramenImageOkinawaArray = [""]
        
        // 選択されたジャンルによってセルの数を変える
        if getCell2 == 0 {
            // 北海道・東北
            // secondGetCellの中身が・・・
            switch secondGetCell {
            // 0のとき
            case 0:
                secondArrayLength = tenmeiHokkaidoArray.count
                self.title = "北海道"
            // 1のとき
            case 1:
                secondArrayLength = tenmeiAomoriArray.count
                self.title = "青森"
            // 2のとき
            case 2:
                secondArrayLength = tenmeiIwateArray.count
                self.title = "岩手"
            // 3のとき
            case 3:
                secondArrayLength = tenmeiMiyagiArray.count
                self.title = "宮城"
            // 4のとき
            case 4:
                secondArrayLength = tenmeiAkitaArray.count
                self.title = "秋田"
            // 5のとき
            case 5:
                secondArrayLength = tenmeiYamagataArray.count
                self.title = "山形"
            // 6のとき
            case 6:
                secondArrayLength = tenmeiFukushimaArray.count
                self.title = "福島"
            default:
                break
            }
        } else if getCell2 == 1 {
            // 関東
            // secondGetCellの中身が・・・
            switch secondGetCell {
            // 0のとき
            case 0:
                secondArrayLength = tenmeiIbarakiArray.count
                self.title = "茨城"
            // 1のとき
            case 1:
                secondArrayLength = tenmeiTochigiArray.count
                self.title = "栃木"
            // 2のとき
            case 2:
                secondArrayLength = tenmeiGunmaArray.count
                self.title = "群馬"
            // 3のとき
            case 3:
                secondArrayLength = tenmeiSaitamaArray.count
                self.title = "埼玉"
            // 4のとき
            case 4:
                secondArrayLength = tenmeiChibaArray.count
                self.title = "千葉"
            // 5のとき
            case 5:
                secondArrayLength = tenmeiTokyoArray.count
                self.title = "東京"
            // 6のとき
            case 6:
                secondArrayLength = tenmeiKanagawaArray.count
                self.title = "神奈川"
            default:
                break
            }
        } else if getCell2 == 2 {
            // 中部
            // secondGetCellの中身が・・・
            switch secondGetCell {
            // 0のとき
            case 0:
                secondArrayLength = tenmeiNiigataArray.count
                self.title = "新潟"
            // 1のとき
            case 1:
                secondArrayLength = tenmeiToyamaArray.count
                self.title = "富山"
            // 2のとき
            case 2:
                secondArrayLength = tenmeiIshikawaArray.count
                self.title = "石川"
            // 3のとき
            case 3:
                secondArrayLength = tenmeiFukuiArray.count
                self.title = "福井"
            // 4のとき
            case 4:
                secondArrayLength = tenmeiYamanashiArray.count
                self.title = "山梨"
            // 5のとき
            case 5:
                secondArrayLength = tenmeiNaganoArray.count
                self.title = "長野"
            // 6のとき
            case 6:
                secondArrayLength = tenmeiGifuArray.count
                self.title = "岐阜"
            // 7のとき
            case 7:
                secondArrayLength = tenmeiShizuokaArray.count
                self.title = "静岡"
            // 8のとき
            case 8:
                secondArrayLength = tenmeiAichiArray.count
                self.title = "愛知"
            default:
                break
            }
        } else if getCell2 == 3 {
            // 近畿
            // secondGetCellの中身が・・・
            switch secondGetCell {
            // 0のとき
            case 0:
                secondArrayLength = tenmeiMieArray.count
                self.title = "三重"
            // 1のとき
            case 1:
                secondArrayLength = tenmeiShigaArray.count
                self.title = "滋賀"
            // 2のとき
            case 2:
                secondArrayLength = tenmeiKyotoArray.count
                self.title = "京都"
            // 3のとき
            case 3:
                secondArrayLength = tenmeiOsakaArray.count
                self.title = "大阪"
            // 4のとき
            case 4:
                secondArrayLength = tenmeiHyogoArray.count
                self.title = "兵庫"
            // 5のとき
            case 5:
                secondArrayLength = tenmeiNaraArray.count
                self.title = "奈良"
            // 6のとき
            case 6:
                secondArrayLength = tenmeiWakayamaArray.count
                self.title = "和歌山"
            default:
                break
            }
        } else if getCell2 == 4 {
            // 中国
            // secondGetCellの中身が・・・
            switch secondGetCell {
            // 0のとき
            case 0:
                secondArrayLength = tenmeiTottoriArray.count
                self.title = "鳥取"
            // 1のとき
            case 1:
                secondArrayLength = tenmeiShimaneArray.count
                self.title = "島根"
            // 2のとき
            case 2:
                secondArrayLength = tenmeiOkayamaArray.count
                self.title = "岡山"
            // 3のとき
            case 3:
                secondArrayLength = tenmeiHiroshimaArray.count
                self.title = "広島"
            // 4のとき
            case 4:
                secondArrayLength = tenmeiYamaguchiArray.count
                self.title = "山口"
            default:
                break
            }
        } else if getCell2 == 5 {
            // 四国
            // secondGetCellの中身が・・・
            switch secondGetCell {
            // 0のとき
            case 0:
                secondArrayLength = tenmeiTokushimaArray.count
                self.title = "徳島"
            // 1のとき
            case 1:
                secondArrayLength = tenmeiKagawaArray.count
                self.title = "香川"
            // 2のとき
            case 2:
                secondArrayLength = tenmeiEhimeArray.count
                self.title = "愛媛"
            // 3のとき
            case 3:
                secondArrayLength = tenmeiKochiArray.count
                self.title = "高知"
            default:
                break
            }
        } else {
            // 九州・沖縄
            // secondGetCellの中身が・・・
            switch secondGetCell {
            // 0のとき
            case 0:
                secondArrayLength = tenmeiFukuokaArray.count
                self.title = "福岡"
            // 1のとき
            case 1:
                secondArrayLength = tenmeiSagaArray.count
                self.title = "佐賀"
            // 2のとき
            case 2:
                secondArrayLength = tenmeiNagasakiArray.count
                self.title = "長崎"
            // 3のとき
            case 3:
                secondArrayLength = tenmeiKumamotoArray.count
                self.title = "熊本"
            // 4のとき
            case 4:
                secondArrayLength = tenmeiOitaArray.count
                self.title = "大分"
            // 5のとき
            case 5:
                secondArrayLength = tenmeiMiyazakiArray.count
                self.title = "宮崎"
            // 6のとき
            case 6:
                secondArrayLength = tenmeiKagoshimaArray.count
                self.title = "鹿児島"
            // 7のとき
            case 7:
                secondArrayLength = tenmeiOkinawaArray.count
                self.title = "沖縄"
            default:
                break
            }
        }
        
    }
    
    // セルの数を指定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return secondArrayLength
    }

    // 各セルの要素を指定
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // UITableViewCellのインスタンスを生成
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell_03") as! ThirdViewCell
        
        // 選択されたジャンルによってセルの中身を変える
        if getCell2 == 0 {
            // 北海道・東北
            // secondGetCellの中身が・・・
            switch secondGetCell {
            // 0のとき
            case 0:
                // セルのUILabelに配列の中身を順に表示
                cell.tenmeiLabel.text = tenmeiHokkaidoArray[indexPath.row]
                cell.ramenImageView.image = UIImage(named: ramenImageHokkaidoArray[indexPath.row])
            // 1のとき
            case 1:
                cell.tenmeiLabel.text = tenmeiAomoriArray[indexPath.row]
                cell.ramenImageView.image = UIImage(named: ramenImageAomoriArray[indexPath.row])
            // 2のとき
            case 2:
                cell.tenmeiLabel.text = tenmeiIwateArray[indexPath.row]
                cell.ramenImageView.image = UIImage(named: ramenImageIwateArray[indexPath.row])
            // 3のとき
            case 3:
                cell.tenmeiLabel.text = tenmeiMiyagiArray[indexPath.row]
                cell.ramenImageView.image = UIImage(named: ramenImageMiyagiArray[indexPath.row])
            // 4のとき
            case 4:
                cell.tenmeiLabel.text = tenmeiAkitaArray[indexPath.row]
                cell.ramenImageView.image = UIImage(named: ramenImageAkitaArray[indexPath.row])
            // 5のとき
            case 5:
                cell.tenmeiLabel.text = tenmeiYamagataArray[indexPath.row]
                cell.ramenImageView.image = UIImage(named: ramenImageYamagataArray[indexPath.row])
            // 6のとき
            case 6:
                cell.tenmeiLabel.text = tenmeiFukushimaArray[indexPath.row]
                cell.ramenImageView.image = UIImage(named: ramenImageFukushimaArray[indexPath.row])
            default:
                break
            }
        } else if getCell2 == 1 {
            // 関東
            // secondGetCellの中身が・・・
            switch secondGetCell {
            // 0のとき
            case 0:
                // セルのUILabelに配列の中身を順に表示
                cell.tenmeiLabel.text = tenmeiIbarakiArray[indexPath.row]
                cell.ramenImageView.image = UIImage(named: ramenImageIbarakiArray[indexPath.row])
            // 1のとき
            case 1:
                cell.tenmeiLabel.text = tenmeiTochigiArray[indexPath.row]
                cell.ramenImageView.image = UIImage(named: ramenImageTochigiArray[indexPath.row])
            // 2のとき
            case 2:
                cell.tenmeiLabel.text = tenmeiGunmaArray[indexPath.row]
                cell.ramenImageView.image = UIImage(named: ramenImageGunmaArray[indexPath.row])
            // 3のとき
            case 3:
                cell.tenmeiLabel.text = tenmeiSaitamaArray[indexPath.row]
                cell.ramenImageView.image = UIImage(named: ramenImageSaitamaArray[indexPath.row])
            // 4のとき
            case 4:
                cell.tenmeiLabel.text = tenmeiChibaArray[indexPath.row]
                cell.ramenImageView.image = UIImage(named: ramenImageChibaArray[indexPath.row])
            // 5のとき
            case 5:
                cell.tenmeiLabel.text = tenmeiTokyoArray[indexPath.row]
                cell.ramenImageView.image = UIImage(named: ramenImageTokyoArray[indexPath.row])
            // 6のとき
            case 6:
                cell.tenmeiLabel.text = tenmeiKanagawaArray[indexPath.row]
                cell.ramenImageView.image = UIImage(named: ramenImageKanagawaArray[indexPath.row])
            default:
                break
            }
        } else if getCell2 == 2 {
            // 中部
            // secondGetCellの中身が・・・
            switch secondGetCell {
            // 0のとき
            case 0:
                // セルのUILabelに配列の中身を順に表示
                cell.tenmeiLabel.text = tenmeiNiigataArray[indexPath.row]
                cell.ramenImageView.image = UIImage(named: ramenImageNiigataArray[indexPath.row])
            // 1のとき
            case 1:
                cell.tenmeiLabel.text = tenmeiToyamaArray[indexPath.row]
                cell.ramenImageView.image = UIImage(named: ramenImageToyamaArray[indexPath.row])
            // 2のとき
            case 2:
                cell.tenmeiLabel.text = tenmeiIshikawaArray[indexPath.row]
                cell.ramenImageView.image = UIImage(named: ramenImageIshikawaArray[indexPath.row])
            // 3のとき
            case 3:
                cell.tenmeiLabel.text = tenmeiFukuiArray[indexPath.row]
                cell.ramenImageView.image = UIImage(named: ramenImageFukuiArray[indexPath.row])
            // 4のとき
            case 4:
                cell.tenmeiLabel.text = tenmeiYamanashiArray[indexPath.row]
                cell.ramenImageView.image = UIImage(named: ramenImageYamanashiArray[indexPath.row])
            // 5のとき
            case 5:
                cell.tenmeiLabel.text = tenmeiNaganoArray[indexPath.row]
                cell.ramenImageView.image = UIImage(named: ramenImageNaganoArray[indexPath.row])
            // 6のとき
            case 6:
                cell.tenmeiLabel.text = tenmeiGifuArray[indexPath.row]
                cell.ramenImageView.image = UIImage(named: ramenImageGifuArray[indexPath.row])
            // 7のとき
            case 7:
                cell.tenmeiLabel.text = tenmeiShizuokaArray[indexPath.row]
                cell.ramenImageView.image = UIImage(named: ramenImageShizuokaArray[indexPath.row])
            // 8のとき
            case 8:
                cell.tenmeiLabel.text = tenmeiAichiArray[indexPath.row]
                cell.ramenImageView.image = UIImage(named: ramenImageAichiArray[indexPath.row])
            default:
                break
            }
        } else if getCell2 == 3 {
            // 近畿
            // secondGetCellの中身が・・・
            switch secondGetCell {
            // 0のとき
            case 0:
                // セルのUILabelに配列の中身を順に表示
                cell.tenmeiLabel.text = tenmeiMieArray[indexPath.row]
                cell.ramenImageView.image = UIImage(named: ramenImageMieArray[indexPath.row])
            // 1のとき
            case 1:
                cell.tenmeiLabel.text = tenmeiShigaArray[indexPath.row]
                cell.ramenImageView.image = UIImage(named: ramenImageShigaArray[indexPath.row])
            // 2のとき
            case 2:
                cell.tenmeiLabel.text = tenmeiKyotoArray[indexPath.row]
                cell.ramenImageView.image = UIImage(named: ramenImageKyotoArray[indexPath.row])
            // 3のとき
            case 3:
                cell.tenmeiLabel.text = tenmeiOsakaArray[indexPath.row]
                cell.ramenImageView.image = UIImage(named: ramenImageOsakaArray[indexPath.row])
            // 4のとき
            case 4:
                cell.tenmeiLabel.text = tenmeiHyogoArray[indexPath.row]
                cell.ramenImageView.image = UIImage(named: ramenImageHyogoArray[indexPath.row])
            // 5のとき
            case 5:
                cell.tenmeiLabel.text = tenmeiNaraArray[indexPath.row]
                cell.ramenImageView.image = UIImage(named: ramenImageNaraArray[indexPath.row])
            // 6のとき
            case 6:
                cell.tenmeiLabel.text = tenmeiWakayamaArray[indexPath.row]
                cell.ramenImageView.image = UIImage(named: ramenImageWakayamaArray[indexPath.row])
            default:
                break
            }
        } else if getCell2 == 4 {
            // 中国
            // secondGetCellの中身が・・・
            switch secondGetCell {
            // 0のとき
            case 0:
                // セルのUILabelに配列の中身を順に表示
                cell.tenmeiLabel.text = tenmeiTottoriArray[indexPath.row]
                cell.ramenImageView.image = UIImage(named: ramenImageTottoriArray[indexPath.row])
            // 1のとき
            case 1:
                cell.tenmeiLabel.text = tenmeiShimaneArray[indexPath.row]
                cell.ramenImageView.image = UIImage(named: ramenImageShimaneArray[indexPath.row])
            // 2のとき
            case 2:
                cell.tenmeiLabel.text = tenmeiOkayamaArray[indexPath.row]
                cell.ramenImageView.image = UIImage(named: ramenImageOkayamaArray[indexPath.row])
            // 3のとき
            case 3:
                cell.tenmeiLabel.text = tenmeiHiroshimaArray[indexPath.row]
                cell.ramenImageView.image = UIImage(named: ramenImageHiroshimaArray[indexPath.row])
            // 4のとき
            case 4:
                cell.tenmeiLabel.text = tenmeiYamaguchiArray[indexPath.row]
                cell.ramenImageView.image = UIImage(named: ramenImageYamaguchiArray[indexPath.row])
            default:
                break
            }
        } else if getCell2 == 5 {
            // 四国
            // secondGetCellの中身が・・・
            switch secondGetCell {
            // 0のとき
            case 0:
                // セルのUILabelに配列の中身を順に表示
                cell.tenmeiLabel.text = tenmeiTokushimaArray[indexPath.row]
                cell.ramenImageView.image = UIImage(named: ramenImageTokushimaArray[indexPath.row])
            // 1のとき
            case 1:
                cell.tenmeiLabel.text = tenmeiKagawaArray[indexPath.row]
                cell.ramenImageView.image = UIImage(named: ramenImageKagawaArray[indexPath.row])
            // 2のとき
            case 2:
                cell.tenmeiLabel.text = tenmeiEhimeArray[indexPath.row]
                cell.ramenImageView.image = UIImage(named: ramenImageEhimeArray[indexPath.row])
            // 3のとき
            case 3:
                cell.tenmeiLabel.text = tenmeiKochiArray[indexPath.row]
                cell.ramenImageView.image = UIImage(named: ramenImageKochiArray[indexPath.row])
            default:
                break
            }
        } else {
            // 九州・沖縄
            // secondGetCellの中身が・・・
            switch secondGetCell {
            // 0のとき
            case 0:
                // セルのUILabelに配列の中身を順に表示
                cell.tenmeiLabel.text = tenmeiFukuokaArray[indexPath.row]
                cell.ramenImageView.image = UIImage(named: ramenImageFukuokaArray[indexPath.row])
            // 1のとき
            case 1:
                cell.tenmeiLabel.text = tenmeiSagaArray[indexPath.row]
                cell.ramenImageView.image = UIImage(named: ramenImageSagaArray[indexPath.row])
            // 2のとき
            case 2:
                cell.tenmeiLabel.text = tenmeiNagasakiArray[indexPath.row]
                cell.ramenImageView.image = UIImage(named: ramenImageNagasakiArray[indexPath.row])
            // 3のとき
            case 3:
                cell.tenmeiLabel.text = tenmeiKumamotoArray[indexPath.row]
                cell.ramenImageView.image = UIImage(named: ramenImageKumamotoArray[indexPath.row])
            // 4のとき
            case 4:
                cell.tenmeiLabel.text = tenmeiOitaArray[indexPath.row]
                cell.ramenImageView.image = UIImage(named: ramenImageOitaArray[indexPath.row])
            // 5のとき
            case 5:
                cell.tenmeiLabel.text = tenmeiMiyazakiArray[indexPath.row]
                cell.ramenImageView.image = UIImage(named: ramenImageMiyazakiArray[indexPath.row])
            // 6のとき
            case 6:
                cell.tenmeiLabel.text = tenmeiKagoshimaArray[indexPath.row]
                cell.ramenImageView.image = UIImage(named: ramenImageKagoshimaArray[indexPath.row])
            // 7のとき
            case 7:
                cell.tenmeiLabel.text = tenmeiOkinawaArray[indexPath.row]
                cell.ramenImageView.image = UIImage(named: ramenImageOkinawaArray[indexPath.row])
            default:
                break
            }
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return .leastNormalMagnitude
    }
    
}
