//: Playground - noun: a place where people can play

import UIKit

//异步请求网络数据
NSURLConnection.sendAsynchronousRequest(NSURLRequest(URL: NSURL(string: "http://api.q-brickchinese.com/api/user?filter=%7B%22where%22%3A%7B%22Email%22%3A%2228206254%40qq.com%22%7D%7D")!), queue: NSOperationQueue()) { (res:NSURLResponse?, data:NSData?, err:NSError?) -> Void in
    //print(data)
    let arrdata:AnyObject?
    do{
        try arrdata = NSJSONSerialization.JSONObjectWithData(NSData(data: data!), options: NSJSONReadingOptions.AllowFragments)
        print(arrdata)
        if let jsonData : NSArray = arrdata! as! NSArray {
            print(jsonData)
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
//                self.lblNickName.text = String(jsonData[0].valueForKey("NickName")!)
//                self.lblEmail.text = String(jsonData[0].valueForKey("Email")!)
            })
            
            NSLog("ok1")
        }
        
        
    }catch{
        print("没有获取到网络数据")
    }
    
}


//使用NSString请求网络数据
var dataFromNSString = try! NSString(contentsOfURL: NSURL(string: "http://www.baidu.com")!, encoding: NSUTF8StringEncoding)

//使用NSData请求网络数据
var dataFromNSData = try! NSData(contentsOfURL: NSURL(string: "http://www.baidu.com")!)

//将NSData二进制数据转换成NSString字符串
print(NSString(data: dataFromNSData!, encoding: NSUTF8StringEncoding))


//设置一个天气预报的地址
var urlOfWeather = NSURL(string: "http://www.weather.com.cn/data/sk/101010100.html")
//使用NSData从网络获取天气预报信息
var weatherData = NSData(contentsOfURL: urlOfWeather!)
//使用NSString将获取到的天气预报信息转换成NSString类型的数据
var weatherString = NSString(data: weatherData!, encoding: NSUTF8StringEncoding)
//解析json格式的天气数据
var jsonWeather : AnyObject!  = try! NSJSONSerialization.JSONObjectWithData(weatherData!, options: NSJSONReadingOptions.AllowFragments)
var weatherInfo = jsonWeather.objectForKey("weatherinfo")
var weatherInfo_temp = weatherInfo?.objectForKey("temp")
var weatherInfo_time = weatherInfo?.objectForKey("time")






//测试账号密码验证
print("测试账号密码验证")
var uid = "28206254@qq.com"
var pwd = "1"
let url = NSURL(string: "http://api.q-brickchinese.com/api/user?filter=%7B%22where%22%3A%7B%22Email%22%3A%22\(uid)%22%2C%22PWD%22%3A%22\(pwd)%22%7D%7D")
let userdata = try! NSData(contentsOfURL: url!)
let hasValue = userdata
let userJson = try!NSJSONSerialization.JSONObjectWithData(userdata!, options: NSJSONReadingOptions.AllowFragments)
userJson.count




let ud : NSUserDefaults = NSUserDefaults.standardUserDefaults()
ud.valueForKey("user")
ud.setObject("jinfei", forKey: "user")
ud.valueForKey("user")
















