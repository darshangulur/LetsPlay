public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var l1Next = l1
        var l2Next = l2
        
        var resultList = ListNode(-1)
        let head = resultList
        while let l1Value = l1Next?.val, let l2Value = l2Next?.val {
            if l1Value >= l2Value {
                resultList.next = l2Next
                l2Next = l2Next?.next
            } else if l1Value < l2Value {
                resultList.next = l1Next
                l1Next = l1Next?.next
            }
            
            resultList = resultList.next!
        }
        
        if let l1Next = l1Next {
            resultList.next = l1Next
        }
        
        if let l2Next = l2Next {
            resultList.next = l2Next
        }
        
        return head.next
    }
}

let l1one = ListNode(1)
let l1Two = ListNode(2)
l1one.next = l1Two
let l1three = ListNode(4)
l1Two.next = l1three

let l2one = ListNode(1)
let l2Two = ListNode(3)
l2one.next = l2Two
let l2three = ListNode(4)
l2Two.next = l2three

var result = Solution().mergeTwoLists(l1one, l2one)
while result != nil {
    print(result?.val ?? 0)
    result = result?.next
}

