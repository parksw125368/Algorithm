== Array 사용 ==
import Foundation

func solution(_ s:String) -> [Int] {
	var ans : [Int] = []
	var alphaArr : [Int] = []  //문자
	var aValueArr : [Int] = [] //index
	for i in 0..<26{
		alphaArr.append(i+97) //소문자 a가 97
		aValueArr.append(-1) 
	}
	for i in 0..<s.length{
		let c = String(s.dropFirst(i).prefix(1))
		let alphaIdx = alphaArr.firstIndex(of : Int(UnicodeScalar(c)!.value)) ?? 0
		ans.append( aValueArr[alphaIdx] == -1 ? -1 : i-aValueArr[alphaIdx]  )
		aValueArr[alphaIdx] = i
	}
    return ans
}

== dictionary 사용 ==
import Foundation

func solution(_ s:String) -> [Int] {
	var ans : [Int] = []
    var dic = [String : Int]()
	for i in 0..<26{
        var key = String(UnicodeScalar(i+97)!)
        dic[key] = -1
	}
	for i in 0..<s.length{
		let c = String(s.dropFirst(i).prefix(1))
		ans.append( dic[c] == -1 ? -1 : i - (dic[c] ?? 0)  )
		dic[c] = i
	}
    return ans
}