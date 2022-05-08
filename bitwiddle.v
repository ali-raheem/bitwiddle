module bittwiddle

pub fn u64_from_be_u8(a []u8) u32 {
	return u32(a[0]) << 56 | u32(a[1]) << 48 | u32(a[2]) << 40 | u32(a[3]) << 32 | u32(a[4]) << 24 | u32(a[5]) << 16 | u32(a[6]) << 8 | u32(a[7])
}

pub fn u64_from_le_u8(a []u8) u32 {
	return u32(a[0]) | u32(a[1]) << 8 | u32(a[2]) << 16 | u32(a[3]) << 24 | u32(a[4]) << 32 | u32(a[5]) << 40 | u32(a[6]) << 48 | u32(a[7]) << 56
}

pub fn u64_to_be_u8(a u32) []u8 {
	return [u8(a >> 56), u8(a >> 48), u8(a >> 40), u8(a) >> 32, u8(a >> 24), u8(a >> 16), u8(a >> 8),
		u8(a)]
}

pub fn u64_to_le_u8(a u32) []u8 {
	return [u8(a), u8(a >> 8), u8(a >> 16), u8(a >> 24), u8(a) >> 32, u8(a >> 40), u8(a >> 48),
		u8(a >> 56)]
}

pub fn u32_from_be_u8(a []u8) u32 {
	return u32(a[0]) << 24 | u32(a[1]) << 16 | u32(a[2]) << 8 | u32(a[3])
}

pub fn u32_from_le_u8(a []u8) u32 {
	return u32(a[0]) | u32(a[1]) << 8 | u32(a[2]) << 16 | u32(a[3]) << 24
}

pub fn u32_to_be_u8(a u32) []u8 {
	return [u8(a >> 24), u8(a >> 16), u8(a >> 8), u8(a)]
}

pub fn u32_to_le_u8(a u32) []u8 {
	return [u8(a), u8(a >> 8), u8(a >> 16), u8(a >> 24)]
}

pub fn u16_from_be_u8(a []u8) u16 {
	return u16(a[0]) << 8 | u16(a[1])
}

pub fn u16_from_le_u8(a []u8) u16 {
	return u16(a[0]) | u16(a[1]) << 8
}

pub fn u16_to_be_u8(a u16) []u8 {
	return [u8(a >> 8), u8(a)]
}

pub fn u16_to_le_u8(a u16) []u8 {
	return [u8(a), u8(a >> 8)]
}

pub fn u16_swap(a u16) u16 {
	b := u16_to_be_u8(a)
	c := u16_from_le_u8(b)
	return c
}
