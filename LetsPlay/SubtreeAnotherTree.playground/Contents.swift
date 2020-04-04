public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

class Solution {
    func isSubtree(_ s: TreeNode?, _ t: TreeNode?) -> Bool {
        if s == nil || t == nil {
            return false
        }
        
        if s?.val == t?.val, isSameSubtree(s, t) {
            return true
        }
        
        return isSubtree(s?.left, t) || isSubtree(s?.right, t)
    }
    
    func isSameSubtree(_ s: TreeNode?, _ t: TreeNode?) -> Bool {
        if s == nil || t == nil {
            return s?.val == t?.val
        }
        
        let sameValue = s?.val == t?.val
        if !sameValue {
            return false
        }
        
        return sameValue && isSameSubtree(s?.left, t?.left) && isSameSubtree(s?.right, t?.right)
    }
}
