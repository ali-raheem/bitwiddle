module bitwiddle

// u64_from_be_u8 convert a big endian array containing 8 u8s into a u64
pub fn u64_from_be_u8(a []u8) u64 {
	return u64(a[0]) << 56 | u64(a[1]) << 48 | u64(a[2]) << 40 | u64(a[3]) << 32 | u64(a[4]) << 24 | u64(a[5]) << 16 | u64(a[6]) << 8 | u64(a[7])
}

// u64_from_le_u8 convert a little endian array containing 8 u8s into a u64
pub fn u64_from_le_u8(a []u8) u64 {
	return u64(a[0]) | u64(a[1]) << 8 | u64(a[2]) << 16 | u64(a[3]) << 24 | u64(a[4]) << 32 | u64(a[5]) << 40 | u64(a[6]) << 48 | u64(a[7]) << 56
}

// u64_to_be_u8 convert an u64 to a big endian array containing 8 u8s
pub fn u64_to_be_u8(a u64) []u8 {
	return [u8(a >> 56), u8(a >> 48), u8(a >> 40), u8(a >> 32), u8(a >> 24), u8(a >> 16), u8(a >> 8),
		u8(a)]
}

// u64_to_le_u8 convert an u64 to a little endian array containing 8 u8s
pub fn u64_to_le_u8(a u64) []u8 {
	return [u8(a), u8(a >> 8), u8(a >> 16), u8(a >> 24), u8(a >> 32), u8(a >> 40), u8(a >> 48),
		u8(a >> 56)]
}

// u32_from_be_u8 convert an u32 from a big endian array containing 4 u8s
pub fn u32_from_be_u8(a []u8) u32 {
	return u32(a[0]) << 24 | u32(a[1]) << 16 | u32(a[2]) << 8 | u32(a[3])
}

// u32_from_le_u8 convert an u32 from a little endian array containing 4 u8s
pub fn u32_from_le_u8(a []u8) u32 {
	return u32(a[0]) | u32(a[1]) << 8 | u32(a[2]) << 16 | u32(a[3]) << 24
}

// u32_to_be_u8 convert an u32 to a big endian array containing 4 u8s
pub fn u32_to_be_u8(a u32) []u8 {
	return [u8(a >> 24), u8(a >> 16), u8(a >> 8), u8(a)]
}

// u32_to_be_u8 convert an u32 to a little endian array containing 4 u8s
pub fn u32_to_le_u8(a u32) []u8 {
	return [u8(a), u8(a >> 8), u8(a >> 16), u8(a >> 24)]
}

// u16_from_be_u8 convert to a u16 from a big endian array containing 2 u8s
pub fn u16_from_be_u8(a []u8) u16 {
	return u16(a[0]) << 8 | u16(a[1])
}

// u16_from_le_u8 convert to a u16 from a little endian array containing 2 u8s
pub fn u16_from_le_u8(a []u8) u16 {
	return u16(a[0]) | u16(a[1]) << 8
}

// u16_from_be_u8 convert from a u16 to a big endian array containing 2 u8s
pub fn u16_to_be_u8(a u16) []u8 {
	return [u8(a >> 8), u8(a)]
}

// u16_from_be_u8 convert from a u16 to a little endian array containing 2 u8s
pub fn u16_to_le_u8(a u16) []u8 {
	return [u8(a), u8(a >> 8)]
}

// u16_swap swap the order of bytes in a u16
pub fn u16_swap(a u16) u16 {
	b := u16_to_be_u8(a)
	c := u16_from_le_u8(b)
	return c
}
