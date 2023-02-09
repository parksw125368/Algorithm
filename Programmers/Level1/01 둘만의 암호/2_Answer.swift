import Foundation

func solution(_ s:String, _ skip:String, _ index:Int) -> String {
	var answer = "";
	var skipList = [Int]()
	for s in skip{
		skipList.append(Int(UnicodeScalar(String(s))!.value))
	}
	for c in s {
		answer += decrypt(String(c), skipList, index )
	}
    return answer;
}

func decrypt(_ c:String, _ skipList:[Int], _ index:Int) -> String {
	var count = 0   
	var uniNum = Int(UnicodeScalar(String(c))!.value)-1 
	
	while count < index{
		uniNum += 1	  
		if uniNum+1 > 122 { uniNum -= 26 }
		if (!skipList.contains(uniNum+1)){
			count += 1 
		}
	}
	return String(UnicodeScalar(uniNum+1)!)
}
