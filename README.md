# Lua Function Parameter Default Value Assignment Issue

This repository demonstrates a subtle bug related to assigning default values to function parameters in Lua. The issue arises when multiple parameters might be nil, leading to unexpected behavior.

## Bug Description

The `foo` function attempts to assign a default value of 0 to parameter `a` if it's nil. However, the current implementation doesn't correctly handle cases where both `a` and `b` are nil or when type mismatch occurs.

## Solution

The solution involves using a more robust approach to assigning default values. We check each parameter individually for `nil` before performing operations. Type checking for safer operations can also be included. 
