//
//  main.swift
//  project2
//
//  Created by Alexander Timonenkov on 02.01.2023.
//

import Foundation

class ListNode {
    var val: Int
    var next: ListNode?

    init() {
        self.val = 0
        self.next = nil
    }

    init(_ val: Int) {
        self.val = val
        self.next = nil
    }

    init(_ val: Int, _ next: ListNode?) {
        self.val = val
        self.next = next
    }
}

func addTwoNumbers(l1: ListNode?, l2: ListNode?) -> ListNode? {
    var l1 = l1
    var l2 = l2
    var result = ListNode()
    var current: ListNode? = result
    var carry = 0
    while l1 != nil || l2 != nil || carry != 0 {
        let x = l1?.val ?? 0
        let y = l2?.val ?? 0
        let sum = carry + x + y
        carry = sum / 10
        current?.next = ListNode(sum % 10)
        current = current?.next
        if l1 != nil {
            l1 = l1?.next
        }
        if l2 != nil {
            l2 = l2?.next
        }
    }
    return result.next
}

var result = addTwoNumbers(
    l1: ListNode(
        2,
        ListNode(
            4,
            ListNode(3)
        )
    ),
    l2: ListNode(
        5,
        ListNode(
            6,
            ListNode(4)
        )
    )
)
result?.debugPrint()

result = addTwoNumbers(
    l1: ListNode(0),
    l2: ListNode(0)
)
result?.debugPrint()

result = addTwoNumbers(
    l1: ListNode(
        9,
        ListNode(
            9,
            ListNode(
                9,
                ListNode(
                    9,
                    ListNode(
                        9,
                        ListNode(
                            9,
                            ListNode(9)
                        )
                    )
                )
            )
        )
    ),
    l2: ListNode(
        9,
        ListNode(
            9,
            ListNode(
                9,
                ListNode(9)
            )
        )
    )
)
result?.debugPrint()

extension ListNode {
    func debugPrint() {
        var result = String(val)
        var node: ListNode? = self
        while node?.next != nil {
            result += " " + String(node!.next!.val)
            node = node?.next
        }
        print(result)
    }
}
