//
//  LetterTypeViewController.swift
//  Dobermann
//
//  Created by 丹羽雄一朗
//  Copyright © 2020 Niwa Yuichirou. All rights reserved.
//

import UIKit

class LetterTypeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let userDefaults = UserDefaults.standard
    
    let configTitle = [""]
    let configContent0 = [NSLocalizedString("A-Z 英字(大文字)", comment: ""),NSLocalizedString("a-z 英字(小文字)", comment: ""),NSLocalizedString("1-9 数字", comment: ""),NSLocalizedString("@ 記号", comment: "")]

    @IBOutlet weak var letterTypeTableView: UITableView!
    @IBOutlet weak var navigationBar: UINavigationItem!
    @IBOutlet weak var navigationBarButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationBar.title = NSLocalizedString("使用する文字の設定", comment: "")
        navigationBarButton.title = NSLocalizedString("完了", comment: "")
        
        letterTypeTableView.delegate = self
        letterTypeTableView.dataSource = self
        
    }
    
    // セクション数を指定
    func numberOfSections(in tableView: UITableView) -> Int {

        return 1

    }
    
    // セクションタイトルを指定
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return configTitle[section] as String

    }
    
    // セル数を指定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return configContent0.count
        } else {
            return 0
        }
        
    }
    
    // セルを生成
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // セルを指定する
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "letterType", for: indexPath)
        // データのないセルを非表示
        letterTypeTableView.tableFooterView = UIView(frame: .zero)
        // セルのステータスを決定
        if cell.accessoryView == nil {
            
        }
        // チェックマーク描画
        if indexPath.section == 0 {
            if indexPath.row == 0 && userDefaults.object(forKey: "letterType0DataStore") as! Bool == true {
                    cell.accessoryType = .checkmark
            } else if indexPath.row == 1 && userDefaults.object(forKey: "letterType1DataStore") as! Bool == true {
                cell.accessoryType = .checkmark
            } else if indexPath.row == 2 && userDefaults.object(forKey: "letterType2DataStore") as! Bool == true {
                cell.accessoryType = .checkmark
            } else if indexPath.row == 3 && userDefaults.object(forKey: "letterType3DataStore") as! Bool == true {
                cell.accessoryType = .checkmark
            }
        }
        // セルの値を設定する
        if indexPath.section == 0 {
            cell.textLabel!.text = configContent0[indexPath.row]
            return cell
        } else {
            return cell
        }
        
    }
    
    // 選択したセルの情報を取得
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // セルを取得する
        let cell = tableView.cellForRow(at:indexPath)
        // タップ後に灰色を消す
        tableView.deselectRow(at: indexPath, animated: true)
        // タップで文字数設定
        if indexPath.section == 0 {
            if indexPath.row == 0 {
                if userDefaults.object(forKey: "letterType0DataStore") as! Bool == false {
                    cell?.accessoryType = .checkmark
                    userDefaults.set(true, forKey: "letterType0DataStore")
                } else {
                    userDefaults.set(false, forKey: "letterType0DataStore")
                    cell?.accessoryType = .none
                }
            } else if indexPath.row == 1 {
                if userDefaults.object(forKey: "letterType1DataStore") as! Bool == false {
                    cell?.accessoryType = .checkmark
                    userDefaults.set(true, forKey: "letterType1DataStore")
                } else {
                    userDefaults.set(false, forKey: "letterType1DataStore")
                    cell?.accessoryType = .none
                }
            } else if indexPath.row == 2 {
                if userDefaults.object(forKey: "letterType2DataStore") as! Bool  == false {
                    cell?.accessoryType = .checkmark
                    userDefaults.set(true, forKey: "letterType2DataStore")
                } else {
                    userDefaults.set(false, forKey: "letterType2DataStore")
                    cell?.accessoryType = .none
                }
            } else if indexPath.row == 3 {
                if userDefaults.object(forKey: "letterType3DataStore") as! Bool  == false {
                    cell?.accessoryType = .checkmark
                    userDefaults.set(true, forKey: "letterType3DataStore")
                } else {
                    userDefaults.set(false, forKey: "letterType3DataStore")
                    cell?.accessoryType = .none
                }
            }
        }
        
    }
    
    // 設定画面に戻る
    @IBAction func gotoConfigPage(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)

    }
    
}
