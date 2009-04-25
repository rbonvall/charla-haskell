data Node = EmptyNode
          | IntNode Integer Node
          | StringNode Integer Node

findInt x :: Int -> Node -> Int

