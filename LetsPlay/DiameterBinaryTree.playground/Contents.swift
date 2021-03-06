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
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        var maximum = 0
        depth(root, &maximum)
        return maximum - 1
    }
    
    func depth(_ root: TreeNode?, _ maximum: inout Int) -> Int {
        guard let root = root else { return 0 }
        
        let left = depth(root.left, &maximum)
        let right = depth(root.right, &maximum)
        maximum = max(maximum, left+right+1)
        return max(left, right)+1
    }
}
