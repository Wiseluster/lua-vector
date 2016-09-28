#!/usr/bin/env lua

Vector = {};

Vector.__index = Vector;
Vector.__metatable = Vector;
setmetatable(Vector, {
	__call = function(self, _x, _y, _z)
		return setmetatable({x = _x + 0.0, y = _y + 0.0, z = _z + 0.0}, Vector);
	end,
	__metatable = Vector
});

function Vector:__add(other)
	return Vector(self.x + other.x, self.y + other.y, self.z + other.z);
end

function Vector:__sub(other)
	return Vector(self.x - other.x, self.y - other.y, self.z - other.z);
end

function Vector:__mul(other)
	return type(other) == "number" and Vector(self.x * other, self.y * other, self.z * other) or self.x * other.x + self.y * other.y + self.z * other.z;
end

function Vector:__pow(other)
	return Vector(self.y * other.z - self.z * other.y, self.z * other.x - self.x * other.z, self.x * other.y - self.y * other.x);
end

function Vector:__unm()
	return Vector(-self.x, -self.y, -self.z);
end

function Vector:__eq(other)
	return self.x == other.x and self.y == other.y and self.z == other.z;
end

function Vector:__len()
	return math.sqrt(self.x * self.x + self.y * self.y + self.z * self.z);
end

function Vector:__tostring()
	return string.format("(%g, %g, %g)", self.x, self.y, self.z);
end
