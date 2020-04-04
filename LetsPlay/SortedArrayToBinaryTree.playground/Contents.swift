class Node {
    let value: Int
    var left: Node?
    var right: Node?
    
    init(_ value: Int) {
        self.value = value
        left = nil
        right = nil
    }
}

struct BinaryTree {
    let root: Node?
    
    func insert(root: Node?, node: Node) {
        guard let root = root else { return }
        if node.value < root.value {
            if let left = root.left {
                insert(root: left, node: node)
            } else {
                root.left = node
            }
        } else {
            if let right = root.right {
                insert(root: right, node: node)
            } else {
                root.right = node
            }
        }
    }
}


//let node0 = Node(0)
//let node3 = Node(-3)
//let node10 = Node(-10)
//let node9 = Node(9)
//let node5 = Node(5)
//
//let tree = BinaryTree(root: node0)
//tree.root?.left
//[node3, node10, node9, node5].forEach {
//    tree.insert(root: tree.root, node: $0)
//}
//tree.root?.left?.value



class TreeNode {
    let val: Int
    var left: TreeNode?
    var right: TreeNode?
    
    init(_ val: Int) {
        self.val = val
        left = nil
        right = nil
    }
}

class Solution {
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        guard !nums.isEmpty else {
            return nil
        }
        
        if nums.count == 1 {
            return TreeNode(nums[0])
        }
        
        let medianIndex = Int(nums.count/2)
        let nextToMedianIndex = medianIndex + 1
        let medianValue = nums[medianIndex]
        let root = TreeNode(medianValue)
        
        root.left = sortedArrayToBST(Array(nums[0..<medianIndex]))
        root.right = sortedArrayToBST(Array(nums[nextToMedianIndex..<nums.count]))
        
        return root
    }
    
    func inOrderTraversal(root: TreeNode?) {
        guard root != nil else { return }
        
        inOrderTraversal(root: root?.left)
        print("\(root?.val ?? -100)", terminator: " ")
        inOrderTraversal(root: root?.right)
    }
}

let node0 = TreeNode(0)
let node3 = TreeNode(-3)
let node10 = TreeNode(-10)
let node9 = TreeNode(9)
let node5 = TreeNode(5)

let tree = Solution()
let root = tree.sortedArrayToBST([-10,-3,0,5,9])
root?.val

tree.sortedArrayToBST([])
tree.sortedArrayToBST([9])?.val

tree.inOrderTraversal(root: root)
