//: Playground - noun: a place where people can play



import UIKit

var str = "Hello, playground"

class node {
    var Item: Int
    var leftNode: node?
    var rightNode: node?
    
    init(value item: Int, left leftNode: node?, right rightNode: node?) {
        self.Item = item
        self.leftNode = leftNode
        self.rightNode = rightNode
    }
    
    func getValue() -> Int {
        return self.Item
    }
    
    func setValue(Value item: Int) {
        self.Item = item
    }
    
    func getRight() -> node? {
        return self.rightNode
    }
    
    func getLeft() -> node? {
        return self.leftNode
    }
}

// Left Subtree
var eightNode = node(value: 8, left: nil, right: nil)
var fourNode = node(value: 4, left: nil, right: nil)
var sevenNode = node(value: 7, left: fourNode, right: eightNode)

// Right Subtree
var twelveNode = node(value: 12, left: nil, right: nil)
var elevenNode = node(value: 11, left: nil, right: twelveNode)

// Root
var Node = node(value: 10, left: sevenNode , right: elevenNode)

func binarySearch(toSearch searchValue: Int, Tree Node: node?) -> Bool {
    if Node == nil {
        return false
    }
    if searchValue == Node?.getValue() {
        return true
    } else if searchValue < Node!.getValue() {
        return binarySearch(toSearch: searchValue, Tree: Node?.getLeft())
    } else {
        return binarySearch(toSearch: searchValue, Tree: Node?.getRight())
    }
}

Node.getValue()

binarySearch(toSearch: 12, Tree: Node)