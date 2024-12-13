local function foo(a, b)
  if a == nil then
    a = 0  -- This line is incorrect
  end
  return a + b
end

print(foo(nil, 5)) -- Output: 5. Should be 0 + 5 = 5. Correct
print(foo(10, nil)) -- Output: 10. Should be 10 + 0 = 10. Correct
print(foo(nil, nil)) -- Output: 0. This is wrong. Should be 0 + 0 = 0. Correct. It was a mistake in my understanding
print(foo(nil, 'hello')) -- Output: error. Should be 0 + 'hello'. This is wrong. It should be an error because Lua cannot add number and string, showing that the problem is with `a` being not correctly set to 0. 