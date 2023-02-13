import Foundation

func solution(_ t:String, _ p:String) -> Int {
    var ans = 0
    for i in 0...(t.length-p.length){
        let srtIdx = t.index(t.startIndex, offsetBy : i)
        let endIdx = t.index(srtIdx, offsetBy : p.length)
        let tNum = Int(t[srtIdx..<endIdx]) ?? 0
        let pNum = Int(p) ?? 0 
        if tNum <= pNum { ans += 1 }
    }
    return ans
}
