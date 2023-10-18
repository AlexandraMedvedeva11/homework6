//
//  ViewController.swift
//  Homework6
//
//  Created by  Medvedeva Alexandra on 17.10.23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var string: Array <String> = ["abc", "abc dyf", "abc dyf ghi", "abc dyf ghi jkl", "abc dyf ghi jkl mno", "abc dyf ghi jkl mno pqr", "abc dyf ghi jkl mno pqr stu" ]
        
        var MyString = string.map{Int($0)}
        
        
        //1
        var string1 = string [0]
        var string2 = string [1]
        var string3 = string [2]
        var string4 = string [3]
        var string5 = string [4]
        var string6 = string [5]
        var string7 = string [6]
        var SumSymbols = string1.count + string2.count + string3.count + string4.count + string5.count + string6.count + string7.count
        
        //2
        
        var StringCount = [string1.count, string2.count, string3.count, string4.count, string5.count, string6.count, string7.count]
        
        for i in StringCount {
            if i < 5 {
                break
            }
        }
        
        //3
        
        
        while StringCount > 10 {
            print (StringCount)
        }

        //4
        func getMyString (_ array: [Int], _ closure: (Int, Int?) -> Bool) -> Int {
            var optValue: Int? = nil
            for value in MyString {
                if closure(value!, optValue) {
                    optValue = value
                }
            }
            return optValue!
        }

        print("max: \(MyString.reduce(MyString[0]){$0! < $1! ? $1 : $0})")

        //5
        extension Collection where Iterator.Element == String {
            func stringSort() -> [String] {
                return.self.sorted {$0.count > $1.count}
            }
        }
        
        string.stringSort()
        
        //6
        print (string.trimmingCharacters(in: .whitespaces))
    }


}

