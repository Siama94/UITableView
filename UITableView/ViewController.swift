//
//  ViewController.swift
//  UITableView
//
//  Created by Анастасия on 23.07.2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // MARK: - Elements
    
    private lazy var myTableView: UITableView = {
        var table = UITableView(frame: view.bounds, style: .plain)
        table.delegate = self // подписка на делегат
        table.dataSource = self //подписка на датусорс
        table.register(UITableViewCell.self, forCellReuseIdentifier: indentifire) // регистер для ячейки
        table.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        return table
    }()
    
    private lazy var indentifire = "MyCell" // регистер для ячейки
    private lazy var array = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
    
    //MARK: - Private func

    
    //MARK: - Private func DATA SOURCE
//    func numberOfSections(in tableView: UITableView) -> Int { // 3 секции
//        return 3
//    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { // количество ячеек в секции
//        switch section {
//        case 0:
//            return 3
//        case 1:
//            return 5
//        case 2:
//            return 8
//        default:
//            break
//        }
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell { //создание ячейки
        let cell = tableView.dequeueReusableCell(withIdentifier: indentifire, for: indexPath)
        let number = array[indexPath.row] // сколько ячеек столько и будет итераций
        cell.textLabel?.text = number
        
//        cell.textLabel?.text = "Sections: \(indexPath.section); Cell: \(indexPath.row)"
//        cell.accessoryType = .detailButton  //detailDisclosureButton i с переходом
//
//        switch indexPath.section {
//        case 0:
//            cell.backgroundColor = UIColor.systemIndigo
//        case 1:
//            cell.backgroundColor = UIColor.systemFill
//        case 2:
//            cell.backgroundColor = UIColor.systemOrange
//        default:
//            break
//        }
        
        return cell
    }
    
    //MARK: - Private func DELEGATE
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat { // высота ячйеки
        return 70.0
    }
    
//    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) { // вывод в консоли
//        print("Accessory path =", indexPath)
//        let ounerCell = tableView.cellForRow(at: indexPath)
//        print("Cell title=", ounerCell?.textLabel?.text ?? "nil")
//    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       // print(indexPath.row) // передает контроллеру (консоли) номер нажатой ячейки
        let number = array[indexPath.row]
        print(number)
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //setupVew()
        setupHierarchy()
        //setupLayout()
    }

    // MARK: - Settings
    
    private func setupHierarchy() {
        
        view.addSubview(myTableView)
    }

    
}

