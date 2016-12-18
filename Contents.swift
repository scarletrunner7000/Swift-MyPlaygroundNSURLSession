//: Playground - noun: a place where people can play

import UIKit

// 非同期処理用のフレームワーク
import XCPlayground

// 非同期処理を許可
XCPlaygroundPage.currentPage.needsIndefiniteExecution = true

// セッションの取り出し
let session = NSURLSession.sharedSession()

// URLオブジェクトを作成
let url = NSURL(string: "http://www.yahoo.co.jp")

// リクエストオブジェクトを生成
let request = NSMutableURLRequest(URL: url!)

// 処理タスクを作成
let task = session.dataTaskWithRequest(request, completionHandler: {
    (data: NSData?, response: NSURLResponse?, error: NSError?) -> Void in
    // データ取得後の処理
    let value = NSString(data: data!, encoding: NSUTF8StringEncoding)
    print(value)
})

// 処理開始
task.resume()




