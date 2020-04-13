public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func middleNode(_ head: ListNode?) -> ListNode? {
        if head?.next == nil {
            return head
        }
        
        var count = 0
        var next = head
        while next != nil {
            count += 1
            next = next?.next
        }
        
        let goal = Int(count/2)
        count = -1
        next = head
        while next != nil {
            count += 1
            if count == goal {
                break
            }
            next = next?.next
        }
        return next
    }
}
