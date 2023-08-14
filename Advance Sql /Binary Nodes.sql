

-- Binary Tree Nodes
-- https://www.hackerrank.com/challenges/binary-search-tree-1/problem

--SOLUTION


-- This query selects the `N` column from the `BST` table, and then uses a `case` statement to determine the type of node each row represents.
-- If the `P` column is null, then the node is the root of the binary tree.
-- If the `N` value is in the `P` column, then the node is an inner node of the binary tree.
-- Otherwise, the node is a leaf node.
-- The results are then ordered by the `N` column.

SELECT N,
    case when P is null then 'Root'
        when N in (Select P from BST) then 'Inner'
        else 'Leaf'
    end
from BST
order by N;
