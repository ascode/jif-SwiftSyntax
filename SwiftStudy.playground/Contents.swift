//: Playground - noun: a place where people can play

import UIKit

var data = try NSURLConnection.sendSynchronousRequest(NSURLRequest(URL: NSURL(string: "http://aqicn.org/publishingdata/json")!), returningResponse: nil)
var jsonArr = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.AllowFragments)

print(jsonArr)
print(jsonArr[0].objectForKey("cityName"))
print(jsonArr[0].valueForKey("cityName")!)//使用!是进行强制的拆包
print(jsonArr[0].valueForKey("stationName"))
print(jsonArr.objectAtIndex(0).objectForKey("cityName"))
print(jsonArr.objectAtIndex(0).valueForKey("cityName"))

var firstData = (jsonArr as! NSArray).objectAtIndex(0)

var pollutants = firstData.valueForKey("pollutants")
var pm2_5 = (pollutants as! NSArray).objectAtIndex(0)
var theValue = pm2_5.objectForKey("value")
var theValue1 = pm2_5.valueForKey("value")



//qbrick接口测试

//var data = try NSURLConnection.sendSynchronousRequest(NSURLRequest(URL: NSURL(string: "http://api.q-brickchinese.com/api/user?filter=%7B%22where%22:%7B%22Email%22:%2228206254@qq.com%22%7D%7D")!), returningResponse: nil)
//var jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.AllowFragments)
//print(jsonData)






















