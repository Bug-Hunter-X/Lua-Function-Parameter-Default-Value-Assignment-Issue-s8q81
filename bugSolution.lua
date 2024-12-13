local function foo(a, b)
  a = a or 0
  b = b or 0
  -- Type checking
  if type(a) ~= 'number' or type(b) ~= 'number' then
    error('Parameters must be numbers')
  end
  return a + b
end

print(foo(nil, 5)) -- Output: 5
print(foo(10, nil)) -- Output: 10
print(foo(nil, nil)) -- Output: 0
print(foo(10, 'hello')) -- Output: error
print(foo(nil, 'hello')) -- Output: error