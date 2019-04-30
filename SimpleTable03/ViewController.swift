//
//  ViewController.swift
//  SimpleTable03
//
//  Created by D7703_24 on 2019. 4. 30..
//  Copyright © 2019년 D7703_24. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    //UITableViewDataSource 추가해준거

    
    @IBOutlet weak var myTableView: UITableView!
    var animal = ["cat" ,"dog", "cow", "bird", "penguin", "monkey"]
    var detailAnimal = ["고양이", "강아지", "소", "새", "펭귄", "원숭이"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //델리게이트 객체와 뷰 컨트롤러 연결
        myTableView.dataSource = self
    }
    //    row를 몇개할건가
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return animal.count
    }
    //    셀을 만드는거(할당)(row의 개수만큼)
    //myTableView.dequeueReusableCell -> 재활용 가능한 셀을 만드는거
    //IndexPath -> 세션하고 row 다 가지는거
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        //cell 재활용 위해
        let myCell = myTableView.dequeueReusableCell(withIdentifier: "RE", for: indexPath)
        let myRow = indexPath.row
        myCell.textLabel?.text = animal[myRow]
        myCell.detailTextLabel?.text = detailAnimal[myRow]
        
        //이미지 넣기
        myCell.imageView?.image = UIImage(named: animal[myRow])
        return myCell
    }

}

