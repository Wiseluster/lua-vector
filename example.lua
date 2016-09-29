#!/usr/bin/env lua

local vector = require("vector"); -- Loads the module "lua-vector"

local a = vector.new(3, 4, 2);
local b = vector.new(5, -1, 0.5);

print(a);
print(b);
print(a + b); -- Prints the sum of a and b
print(a - b); -- Prints the difference of a and b
print(a * b); -- Prints the scalar product of a and b
print(a * 2); -- Prints a times 2
print(3 * a); -- Prints a times 3
print(a % b); -- Prints the vector product of a and b
print(-a); -- Prints the opposite vector of a
print(a == b); -- Prints the boolean value of the proposition "a equals b"
print(#a); -- Prints the length of a
