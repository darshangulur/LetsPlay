//: Playground - noun: a place where people can play

//import UIKit

class Node {
    var left: Node?
    var right: Node?
    let data: Int

    init(data: Int) {
        self.data = data
    }

    func contains(nodeValue: Int) -> Bool {
        if data == nodeValue {
            return true
        }

        if let left = left {
            left.contains(nodeValue: nodeValue)
        }

        if let right = right {
            right.contains(nodeValue: nodeValue)
        }
        return false
    }

    func insert(nodeValue: Int) {
        if nodeValue <= data {
            if let left = left {
                left.insert(nodeValue: nodeValue)
            } else {
                left = Node(data: nodeValue)
            }
        }

        if nodeValue >= data {
            if let right = right {
                right.insert(nodeValue: nodeValue)
            } else {
                right = Node(data: nodeValue)
            }
        }
    }

    static func inOrderTraversal(node: Node) {
        if let left = node.left {
            inOrderTraversal(node: left)
        }
        print("\(node.data)")
        if let right = node.right {
            inOrderTraversal(node: right)
        }
    }

    static func preOrderTraversal(node: Node) {
        print("\(node.data)")
        if let left = node.left {
            preOrderTraversal(node: left)
        }
        if let right = node.right {
            preOrderTraversal(node: right)
        }
    }

    static func postOrderTraversal(node: Node) {
        if let left = node.left {
            postOrderTraversal(node: left)
        }
        if let right = node.right {
            postOrderTraversal(node: right)
        }
        print("\(node.data)")
    }
}

let root = Node(data: 10)
root.data
root.insert(nodeValue: 8)
root.insert(nodeValue: 20)
root.insert(nodeValue: 9)
root.left?.data
root.right?.data

print("In order")
Node.inOrderTraversal(node: root)

print("\nPre Order")
Node.preOrderTraversal(node: root)

print("\nPost order")
Node.postOrderTraversal(node: root)




