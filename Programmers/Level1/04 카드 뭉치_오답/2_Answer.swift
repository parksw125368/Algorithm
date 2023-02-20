import Foundation
//card1,2 를 돌면서 goal의 indexof가 전것보다 작은게 한번이라도 나오면 false 그렇지 않으면 true
func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    return (work(cards1,goal) == "No") ? "No" : work(cards2,goal)
}
    
func work(_ arr:[String], _ goal:[String]) -> String {
    var before = -1
    for word in arr{
        if (nil != goal.firstIndex(of : word)){
            if (before > goal.firstIndex(of : word)!){
                return "No"
            }else{
                before = goal.firstIndex(of : word)! 
            }
        }else{
            return "No"
        }
    }
    return "Yes"
}