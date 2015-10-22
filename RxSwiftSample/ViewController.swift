//
//  ViewController.swift
//  RxSwiftSample
//
//  Created by nakazy on 2015/10/22.
//  Copyright © 2015年 nakazy. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {
    @IBOutlet weak var button: UIButton!
    let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        button.rx_tap
            .subscribeNext {
                print("hello")
            }
            .addDisposableTo(disposeBag)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

