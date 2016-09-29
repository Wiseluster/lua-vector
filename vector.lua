vector = {};

vector.__index = vector;
vector.__metatable = vector;

function vector.new(x, y, z)
	return setmetatable({x = x and x + 0.0 or 0.0, y = y and y + 0.0 or 0.0, z = z and z + 0.0 or 0.0}, vector);
end

function vector:__add(other)
	return vector.new(self.x + other.x, self.y + other.y, self.z + other.z);
end

function vector:__sub(other)
	return vector.new(self.x - other.x, self.y - other.y, self.z - other.z);
end

function vector:__mul(other)
	return type(self) == "number" and vector.new(self * other.x, self * other.y, self * other.z) or type(other) == "number" and vector.new(self.x * other, self.y * other, self.z * other) or self.x * other.x + self.y * other.y + self.z * other.z;
end

function vector:__mod(other)
	return vector.new(self.y * other.z - self.z * other.y, self.z * other.x - self.x * other.z, self.x * other.y - self.y * other.x);
end

function vector:__unm()
	return vector.new(-self.x, -self.y, -self.z);
end

function vector:__eq(other)
	return self.x == other.x and self.y == other.y and self.z == other.z;
end

function vector:__len()
	return math.sqrt(self.x * self.x + self.y * self.y + self.z * self.z);
end

function vector:__tostring()
	return string.format("(%g, %g, %g)", self.x, self.y, self.z);
end

return vector;
