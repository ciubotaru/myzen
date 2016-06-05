--File name: init.lua
--Project name: zen, a Mod for Minetest
--License: General Public License, version 3 or later
--Copyright (C) 2016 Vitalie Ciubotaru <vitalie at ciubotaru dot tk>

minetest.log('action', 'MOD: Zen loading...')
local zen_version = '0.0.1'

local i18n --internationalization
if minetest.get_modpath("intllib") then
	i18n = intllib.Getter()
else
	i18n = function(s,a,...)
		a={a,...}
		local v = s:gsub("@(%d+)", function(n)
			return a[tonumber(n)]
		end)
		return v
	end
end

minetest.register_node("zen:garden_gravel", {
	description = 'Zen Garden (gravel)',
	tiles = {
		"default_gravel.png",
		"default_gravel.png",
		"zen_gravel_layer.png",
		"zen_gravel_layer.png",
		"zen_gravel_layer.png",
		"zen_gravel_layer.png",
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}, -- NodeBox1
		}
	},
	groups = {
		dig_immediate = 3,
	},
	drop = "default:gravel 1"
})

minetest.register_node("zen:garden_fragment_1", {
	description = 'Zen Garden (stone fragment 1)',
	tiles = {
		"default_gravel.png^zen_stone_01.png",
		"default_gravel.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}, -- NodeBox1
			{-0.5, -0.5, -0.5, -0.3125, -0.25, 0.5}, -- NodeBox2
			{-0.5, -0.5, -0.3125, -0.25, -0.1875, 0.4375}, -- NodeBox3
			{-0.5, -0.5, -0.5, -0.25, -0.3125, 0.5}, -- NodeBox4
			{-0.5, -0.5, -0.375, -0.1875, -0.375, 0.25}, -- NodeBox5
			{-0.5, -0.5, -0.125, -0.3125, -0.125, 0.3125}, -- NodeBox6
		}
	},
	groups = {
		dig_immediate = 3,
	},
	drop = {
		max_items = 2,
		items = {
			{
				items = {"default:gravel 1"},
			},
			{
				items = {"default:cobble 1"},
			}
		}
	}
})

minetest.register_node("zen:garden_fragment_2", {
	description = 'Zen Garden (stone fragment 2)',
	tiles = {
		"default_gravel.png^zen_stone_02.png",
		"default_gravel.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}, -- NodeBox1
			{-0.5, -0.5, -0.3125, -0.25, -0.25, 0.5}, -- NodeBox2
			{-0.5, -0.5, -0.375, -0.375, -0.25, 0.5}, -- NodeBox3
			{-0.5, -0.5, -0.1875, -0.3125, -0.1875, 0.5}, -- NodeBox4
			{-0.5, -0.5, -0.0625, -0.1875, -0.3125, 0.5}, -- NodeBox5
			{-0.5, -0.5, 0.3125, -0.125, -0.3125, 0.5}, -- NodeBox6
			{-0.5, -0.5, 0.1875, -0.1875, -0.25, 0.5}, -- NodeBox7
			{-0.5, -0.5, 0.3125, -0.25, -0.1875, 0.5}, -- NodeBox8
		}
	},
	groups = {
		dig_immediate = 3,
	},
	drop = {
		max_items = 2,
		items = {
			{
				items = {"default:gravel 1"},
			},
			{
				items = {"default:cobble 1"},
			}
		}
	}
})

minetest.register_node("zen:garden_fragment_3", {
	description = 'Zen Garden (stone fragment 3)',
	tiles = {
		"default_gravel.png^zen_stone_03.png",
		"default_gravel.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}, -- NodeBox24
			{-0.5, -0.5, -0.0625, -0.375, -0.3125, 0.5}, -- NodeBox25
			{-0.5, -0.5, 0.375, 0.0625, -0.3125, 0.5}, -- NodeBox26
			{-0.5, -0.5, 0, -0.3125, -0.25, 0.5}, -- NodeBox27
			{-0.5, -0.5, 0.3125, -0.0625, -0.25, 0.5}, -- NodeBox28
			{-0.5, -0.5, 0.125, -0.1875, -0.3125, 0.5}, -- NodeBox29
			{-0.375, -0.5, 0.1875, -0.25, -0.1875, 0.4375}, -- NodeBox30
		}
	},
	groups = {
		dig_immediate = 3,
	},
	drop = {
		max_items = 2,
		items = {
			{
				items = {"default:gravel 1"},
			},
			{
				items = {"default:cobble 1"},
			}
		}
	}
})

minetest.register_node("zen:garden_fragment_4", {
	description = 'Zen Garden (stone fragment 4)',
	tiles = {
		"default_gravel.png^zen_stone_04.png",
		"default_gravel.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}, -- NodeBox24
			{-0.5, -0.5, 0.125, -0.375, -0.3125, 0.5}, -- NodeBox25
			{-0.5, -0.5, 0.375, 0.3125, -0.3125, 0.5}, -- NodeBox26
			{-0.5, -0.5, 0.1875, -0.3125, -0.25, 0.5}, -- NodeBox27
			{-0.5, -0.5, 0.3125, 0.1875, -0.25, 0.5}, -- NodeBox28
			{-0.5, -0.5, 0.25, 0.125, -0.3125, 0.5}, -- NodeBox29
			{-0.4375, -0.5, 0.3125, -0.0625, -0.1875, 0.4375}, -- NodeBox30
		}
	},
	groups = {
		dig_immediate = 3,
	},
	drop = {
		max_items = 2,
		items = {
			{
				items = {"default:gravel 1"},
			},
			{
				items = {"default:cobble 1"},
			}
		}
	}
})

minetest.register_node("zen:garden_fragment_5", {
	description = 'Zen Garden (stone fragment 5)',
	tiles = {
		"default_gravel.png^zen_stone_05.png",
		"default_gravel.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}, -- NodeBox24
			{-0.5, -0.5, 0.375, -0.375, -0.25, 0.5}, -- NodeBox31
			{-0.5, -0.5, 0.3125, -0.375, -0.3125, 0.5}, -- NodeBox32
			{-0.5, -0.5, 0.3125, -0.3125, -0.375, 0.5}, -- NodeBox33
		}
	},
	groups = {
		dig_immediate = 3,
	},
	drop = {
		max_items = 2,
		items = {
			{
				items = {"default:gravel 1"},
			},
			{
				items = {"default:cobble 1"},
			}
		}
	}
})

minetest.register_node("zen:garden_fragment_6", {
	description = 'Zen Garden (stone fragment 6)',
	tiles = {
		"default_gravel.png^zen_stone_06.png",
		"default_gravel.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}, -- NodeBox24
			{-0.5, -0.5, 0.375, -0.3125, -0.25, 0.5}, -- NodeBox31
			{-0.5, -0.5, 0.25, -0.3125, -0.3125, 0.5}, -- NodeBox32
			{-0.5, -0.5, 0.3125, -0.1875, -0.3125, 0.5}, -- NodeBox33
			{-0.5, -0.5, 0.1875, -0.25, -0.375, 0.5}, -- NodeBox34
		}
	},
	groups = {
		dig_immediate = 3,
	},
	drop = {
		max_items = 2,
		items = {
			{
				items = {"default:gravel 1"},
			},
			{
				items = {"default:cobble 1"},
			}
		}
	}
})

minetest.register_node("zen:garden_fragment_7", {
	description = 'Zen Garden (stone fragment 7)',
	tiles = {
		"default_gravel.png^zen_stone_07.png",
		"default_gravel.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}, -- NodeBox24
			{-0.5, -0.5, 0.125, -0.1875, -0.1875, 0.5}, -- NodeBox31
			{-0.5, -0.5, 0, -0.0625, -0.3125, 0.5}, -- NodeBox32
			{-0.5, -0.5, 0.3125, 0.125, -0.3125, 0.5}, -- NodeBox33
			{-0.5, -0.5, -0.125, -0.25, -0.375, 0.5}, -- NodeBox34
			{-0.5, -0.5, -0.0625, 0.0625, -0.375, 0.5}, -- NodeBox35
			{-0.3125, -0.5, 0.0625, -0.125, -0.25, 0.4375}, -- NodeBox36
		}
	},
	groups = {
		dig_immediate = 3,
	},
	drop = {
		max_items = 2,
		items = {
			{
				items = {"default:gravel 1"},
			},
			{
				items = {"default:cobble 1"},
			}
		}
	}
})

minetest.register_node("zen:garden_stone_1", {
	description = 'Zen Garden (stone 1)',
	tiles = {
		"default_gravel.png^zen_stone_08.png",
		"default_gravel.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}, -- NodeBox24
			{-0.1875, -0.5, 0.0625, -0.0625, -0.25, 0.1875}, -- NodeBox37
			{-0.1875, -0.5, 0.0, 0.0, -0.375, 0.25}, -- NodeBox38
			{-0.25, -0.5, 0.0625, -0.0625, -0.3125, 0.25}, -- NodeBox39
		}
	},
	groups = {
		dig_immediate = 3,
	},
	drop = {
		max_items = 2,
		items = {
			{
				items = {"default:gravel 1"},
			},
			{
				items = {"default:cobble 1"},
			}
		}
	}
})

minetest.register_node("zen:garden_stone_2", {
	description = 'Zen Garden (stone 2)',
	tiles = {
		"default_gravel.png^zen_stone_09.png",
		"default_gravel.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}, -- NodeBox24
			{-0.125, -0.5, -0.125, 0.0625, -0.375, 0.25}, -- NodeBox37
			{-0.25, -0.5, -0.0625, 0, -0.3125, 0.3125}, -- NodeBox38
			{-0.1875, -0.5, 0, 0, -0.25, 0.25}, -- NodeBox39
			{-0.1875, -0.5, 0.0625, -0.0625, -0.1875, 0.25}, -- NodeBox40
			{-0.3125, -0.5, 0, -0.0625, -0.375, 0.3125}, -- NodeBox41
		}
	},
	groups = {
		dig_immediate = 3,
	},
	drop = {
		max_items = 2,
		items = {
			{
				items = {"default:gravel 1"},
			},
			{
				items = {"default:cobble 1"},
			}
		}
	}
})

minetest.register_node("zen:garden_fragment_8", {
	description = 'Zen Garden (stone fragment 8)',
	tiles = {
		"default_gravel.png^zen_stone_10.png",
		"default_gravel.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}, -- NodeBox17
			{-0.1875, -0.5, 0.4375, 0.1875, -0.25, 0.5}, -- NodeBox18
			{-0.125, -0.5, 0.3125, 0.125, -0.375, 0.5}, -- NodeBox19
			{-0.0625, -0.5, 0.375, 0.0625, -0.25, 0.5}, -- NodeBox20
			{-0.0625, -0.5, 0.4375, 0.125, -0.1875, 0.5}, -- NodeBox21
			{-0.25, -0.5, 0.4375, 0.25, -0.3125, 0.5}, -- NodeBox22
		}
	},
	groups = {
		dig_immediate = 3,
	},
	drop = {
		max_items = 2,
		items = {
			{
				items = {"default:gravel 1"},
			},
			{
				items = {"default:cobble 1"},
			}
		}
	}
})

minetest.register_node("zen:garden_fragment_9", {
	description = 'Zen Garden (stone fragment 9)',
	tiles = {
		"default_gravel.png^zen_stone_11.png",
		"default_gravel.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}, -- NodeBox24
			{-0.1875, -0.5, 0.25, 0.1875, -0.375, 0.5}, -- NodeBox19
			{-0.125, -0.5, 0.3125, 0.125, -0.3125, 0.5}, -- NodeBox20
			{-0.125, -0.5, 0.4375, 0.125, -0.1875, 0.5}, -- NodeBox21
			{-0.3125, -0.5, 0.4375, 0.3125, -0.3125, 0.5}, -- NodeBox22
			{-0.25, -0.5, 0.375, 0.25, -0.3125, 0.5}, -- NodeBox23
		}
	},
	groups = {
		dig_immediate = 3,
	},
	drop = {
		max_items = 2,
		items = {
			{
				items = {"default:gravel 1"},
			},
			{
				items = {"default:cobble 1"},
			}
		}
	}
})

minetest.register_node("zen:garden_fragment_10", {
	description = 'Zen Garden (stone fragment 10)',
	tiles = {
		"default_gravel.png^zen_stone_12.png",
		"default_gravel.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}, -- NodeBox24
			{-0.1875, -0.5, 0.3125, 0.1875, -0.25, 0.5}, -- NodeBox18
			{-0.375, -0.5, 0.25, 0.375, -0.375, 0.5}, -- NodeBox19
			{-0.125, -0.5, 0.25, 0.125, -0.3125, 0.5}, -- NodeBox20
			{-0.125, -0.5, 0.375, 0.125, -0.1875, 0.5}, -- NodeBox21
			{-0.3125, -0.5, 0.4375, 0.3125, -0.25, 0.5}, -- NodeBox22
			{-0.25, -0.5, 0.25, 0.25, -0.3125, 0.5}, -- NodeBox23
			{-0.3125, -0.5, 0.1875, 0.3125, -0.375, 0.5}, -- NodeBox24
			{-0.125, -0.5, 0.125, 0.25, -0.375, 0.5}, -- NodeBox25
			{-0.0625, -0.5, 0.1875, 0.1875, -0.3125, 0.5}, -- NodeBox26
			{-0.0625, -0.5, 0.25, 0.125, -0.25, 0.5}, -- NodeBox27
			{-0.1875, -0.5, 0.4375, 0.1875, -0.1875, 0.5}, -- NodeBox28
		}
	},
	groups = {
		dig_immediate = 3,
	},
	drop = {
		max_items = 2,
		items = {
			{
				items = {"default:gravel 1"},
			},
			{
				items = {"default:cobble 1"},
			}
		}
	}
})

minetest.register_node("zen:garden_stone_5", {
	description = 'Zen Garden (big stone)',
	tiles = {"default_stone.png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.1875, 0.5}, -- NodeBox1
			{-0.5, -0.5, -0.4375, 0.5, -0.125, 0.4375}, -- NodeBox2
			{-0.4375, -0.5, -0.5, 0.4375, -0.125, 0.5}, -- NodeBox6
			{-0.5, -0.5, -0.3125, 0.4375, -0.0625, 0.1875}, -- NodeBox7
			{-0.4375, -0.5, -0.1875, 0.5, -0.0625, 0.3125}, -- NodeBox9
			{-0.3125, -0.5, -0.4375, 0.1875, -0.0625, 0.5}, -- NodeBox10
			{-0.1875, -0.5, -0.5, 0.3125, -0.0625, 0.4375}, -- NodeBox11
			{-0.0625, -0.5, -0.375, 0.375, 0.0625, 0.1875}, -- NodeBox12
			{-0.375, -0.5, -0.1875, 0.0625, 0.0625, 0.375}, -- NodeBox14
			{-0.125, -0.5, -0.1875, 0.3125, 0.1875, 0.3125}, -- NodeBox15
			{0, -0.5, -0.0625, 0.25, 0.3125, 0.25}, -- NodeBox16
		}
	},
	groups = {
		dig_immediate = 3,
	},
	drop = {
		max_items = 2,
		items = {
			{
				items = {"default:gravel 1"},
			},
			{
				items = {"default:cobble 1"},
			}
		}
	}
})

minetest.register_node("zen:garden_stone_3", {
	description = 'Zen Garden (stone 3)',
	tiles = {
		"default_gravel.png^zen_stone_14.png",
		"default_gravel.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}, -- NodeBox1
			{-0.3125, -0.5, 0, 0, -0.3125, 0.375}, -- NodeBox29
			{-0.25, -0.5, -0.125, 0.0625, -0.25, 0.3125}, -- NodeBox30
			{-0.25, -0.5, -0.0625, -0.0625, -0.125, 0.3125}, -- NodeBox31
			{-0.25, -0.5, 0.0625, -0.0625, -0.0625, 0.3125}, -- NodeBox32
			{-0.1875, -0.5, 0.0625, -0.0625, 0, 0.25}, -- NodeBox33
			{-0.1875, -0.5, 0, 0, 0.0625, 0.25}, -- NodeBox34
			{-0.1875, -0.5, 0.125, -0.0625, 0.125, 0.25}, -- NodeBox35
			{-0.125, -0.5, 0.0625, 0, 0.25, 0.1875}, -- NodeBox36
			{-0.125, -0.5, 0, 0.0625, -0.0625, 0.1875}, -- NodeBox37
		}
	},
	groups = {
		dig_immediate = 3,
	},
	drop = {
		max_items = 2,
		items = {
			{
				items = {"default:gravel 1"},
			},
			{
				items = {"default:cobble 1"},
			}
		}
	}
})

minetest.register_node("zen:garden_stone_4", {
	description = 'Zen Garden (stone 4)',
	tiles = {
		"default_gravel.png^zen_stone_15.png",
		"default_gravel.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}, -- NodeBox1
			{-0.3125, -0.5, -0.125, -0.0625, -0.3125, 0.3125}, -- NodeBox38
			{-0.25, -0.5, 0.0625, 0.125, -0.375, 0.375}, -- NodeBox39
			{-0.1875, -0.5, 0.125, 0.1875, -0.25, 0.3125}, -- NodeBox40
			{-0.25, -0.5, -0.1875, -0.125, -0.25, 0.25}, -- NodeBox41
			{-0.1875, -0.5, 0, 0, -0.125, 0.25}, -- NodeBox42
			{-0.25, -0.5, 0.0625, -0.0625, -0.0625, 0.25}, -- NodeBox43
			{-0.1875, -0.5, 0.0625, -0.0625, 0, 0.1875}, -- NodeBox44
			{0.1875, -0.5, -0.375, 0.375, -0.3125, -0.1875}, -- NodeBox45
			{0.125, -0.5, -0.3125, 0.3125, -0.375, -0.125}, -- NodeBox46
			{0.1875, -0.5, -0.3125, 0.3125, -0.1875, -0.1875}, -- NodeBox47
		}
	},
	groups = {
		dig_immediate = 3,
	},
	drop = {
		max_items = 2,
		items = {
			{
				items = {"default:gravel 1"},
			},
			{
				items = {"default:cobble 1"},
			}
		}
	}
})

minetest.register_node("zen:garden_margin_1", {
	description = 'Zen Garden (margin)',
	tiles = {
		"default_gravel.png^zen_stone_16.png",
		"default_gravel.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}, -- NodeBox1
			{-0.4375, -0.5, 0.25, -0.25, -0.375, 0.5}, -- NodeBox2
			{-0.5, -0.5, 0.25, -0.25, -0.375, 0.4375}, -- NodeBox6
		}
	},
	groups = {
		dig_immediate = 3,
	},
	drop = {
		max_items = 2,
		items = {
			{
				items = {"default:gravel 1"},
			},
			{
				items = {"default:cobble 1"},
			}
		}
	}
})

minetest.register_node("zen:garden_margin_2", {
	description = 'Zen Garden (margin)',
	tiles = {
		"default_gravel.png^zen_stone_17.png",
		"default_gravel.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}, -- NodeBox1
			{-0.4375, -0.5, -0.5, -0.25, -0.375, 0.4375}, -- NodeBox2
			{-0.4375, -0.5, 0.25, 0.5, -0.375, 0.4375}, -- NodeBox5
		}
	},
	groups = {
		dig_immediate = 3,
	},
	drop = {
		max_items = 2,
		items = {
			{
				items = {"default:gravel 1"},
			},
			{
				items = {"default:cobble 1"},
			}
		}
	}
})

minetest.register_node("zen:garden_margin_3", {
	description = 'Zen Garden (margin)',
	tiles = {
		"default_gravel.png^zen_stone_18.png",
		"default_gravel.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}, -- NodeBox1
			{-0.4375, -0.5, -0.5, -0.25, -0.375, 0.5}, -- NodeBox2
		}
	},
	groups = {
		dig_immediate = 3,
	},
	drop = {
		max_items = 2,
		items = {
			{
				items = {"default:gravel 1"},
			},
			{
				items = {"default:cobble 1"},
			}
		}
	}
})

minetest.register_node("zen:garden_waterfall", {
	description = 'Zen Garden (waterfall)',
	tiles = {
		"default_gravel.png^zen_waterfall_top.png",
		"default_gravel.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_gravel.png^zen_waterfall_front.png",
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}, -- NodeBox1
			{-0.5, -0.5, 0.25, -0.25, 0.4375, 0.5}, -- NodeBox49
			{-0.25, -0.5, 0.3125, 0.25, 0.4375, 0.5}, -- NodeBox50
			{0.25, -0.5, 0.25, 0.5, 0.4375, 0.5}, -- NodeBox51
			{-0.5, -0.5, 0.3125, -0.25, 0.5, 0.5}, -- NodeBox52
			{0.25, -0.5, 0.3125, 0.5, 0.5, 0.5}, -- NodeBox53
			{-0.25, -0.5, 0.375, 0.25, 0.5, 0.5}, -- NodeBox54
			{-0.25, -0.5, 0.1875, 0.25, -0.375, 0.3125}, -- NodeBox55
		}
	},
	groups = {
		dig_immediate = 3,
	},
	drop = {
		max_items = 2,
		items = {
			{
				items = {"default:gravel 1"},
			},
			{
				items = {"default:cobble 2"},
			}
		}
	}
})

minetest.register_node("zen:garden_wall_1", {
	description = 'Zen Garden (wall 1)',
	tiles = {
		"default_gravel.png^zen_wall_1.png",
		"default_gravel.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}, -- NodeBox1
			{-0.5, -0.5, 0.25, 0.5, 0.4375, 0.5}, -- NodeBox49
			{-0.5, 0.4375, 0.3125, 0.5, 0.5, 0.5}, -- NodeBox56
			{-0.375, -0.5, 0.1875, -0.125, 0.375, 0.25}, -- NodeBox57
			{0.0625, -0.5, 0.1875, 0.4375, -0.1875, 0.25}, -- NodeBox58
			{0.125, -0.5, 0.1875, 0.375, 0.25, 0.25}, -- NodeBox59
			{-0.125, -0.5, 0.1875, -0.0625, 0.0625, 0.25}, -- NodeBox60
		}
	},
	groups = {
		dig_immediate = 3,
	},
	drop = {
		max_items = 2,
		items = {
			{
				items = {"default:gravel 1"},
			},
			{
				items = {"default:cobble 2"},
			}
		}
	}
})

minetest.register_node("zen:garden_wall_2", {
	description = 'Zen Garden (wall 2)',
	tiles = {
		"default_gravel.png^zen_wall_2.png",
		"default_gravel.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}, -- NodeBox1
			{-0.5, -0.5, -0.5, -0.25, 0.4375, 0.5}, -- NodeBox49
			{-0.5, 0.4375, -0.5, -0.3125, 0.5, 0.5}, -- NodeBox56
			{-0.25, -0.5, -0.25, -0.1875, 0.3125, -0.0625}, -- NodeBox57
			{-0.25, -0.5, 0.125, -0.1875, -0.0625, 0.1875}, -- NodeBox58
			{-0.25, -0.5, 0.1875, -0.0625, 0.1875, 0.25}, -- NodeBox59
			{-0.25, -0.5, -0.375, -0.1875, 0.125, -0.25}, -- NodeBox60
			{-0.5, -0.5, 0.25, 0.5, 0.4375, 0.5}, -- NodeBox62
			{-0.5, 0.4375, 0.3125, 0.5, 0.5, 0.5}, -- NodeBox63
			{0.125, -0.5, 0.1875, 0.375, 0, 0.25}, -- NodeBox64
			{0.0625, -0.3125, 0.1875, 0.25, 0.3125, 0.25}, -- NodeBox65
		}
	},
	groups = {
		dig_immediate = 3,
	},
	drop = {
		max_items = 2,
		items = {
			{
				items = {"default:gravel 1"},
			},
			{
				items = {"default:cobble 2"},
			}
		}
	}
})

minetest.register_node("zen:garden_wall_3", {
	description = 'Zen Garden (wall 3)',
	tiles = {
		"default_gravel.png^zen_wall_3.png",
		"default_gravel.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
		"default_stone.png^zen_gravel_layer.png",
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}, -- NodeBox1
			{-0.5, -0.5, 0.25, -0.375, 0.4375, 0.5}, -- NodeBox1
			{-0.5, -0.5, 0.4375, -0.25, 0.4375, 0.5}, -- NodeBox2
			{-0.5, -0.5, 0.3125, -0.3125, 0.375, 0.5}, -- NodeBox3
			{-0.5, -0.5, 0.3125, -0.375, 0.5, 0.5}, -- NodeBox4
			{-0.5, -0.5, 0.375, -0.3125, 0.5, 0.5}, -- NodeBox5
			{-0.5, -0.5, 0.375, -0.25, 0.125, 0.5}, -- NodeBox6
		}
	},
	groups = {
		dig_immediate = 3,
	},
	drop = {
		max_items = 2,
		items = {
			{
				items = {"default:gravel 1"},
			},
			{
				items = {"default:cobble 2"},
			}
		}
	}
})

minetest.register_craft({
	output = "zen:garden_gravel 3",
	recipe = {
		{"", "", ""},
		{"", "", ""},
		{"default:gravel", "default:gravel", "default:gravel"}
	}
})

minetest.register_craft({
	output = "zen:garden_fragment_1",
	recipe = {
		{"default:cobble", "", ""},
		{"", "", ""},
		{"default:gravel", "", ""}
	}
})

minetest.register_craft({
	output = "zen:garden_fragment_2",
	recipe = {
		{"", "default:cobble", ""},
		{"", "", ""},
		{"default:gravel", "", ""}
	}
})

minetest.register_craft({
	output = "zen:garden_fragment_3",
	recipe = {
		{"", "", "default:cobble"},
		{"", "", ""},
		{"default:gravel", "", ""}
	}
})

minetest.register_craft({
	output = "zen:garden_fragment_4",
	recipe = {
		{"", "", ""},
		{"default:cobble", "", ""},
		{"default:gravel", "", ""}
	}
})

minetest.register_craft({
	output = "zen:garden_fragment_5",
	recipe = {
		{"", "", ""},
		{"", "default:cobble", ""},
		{"default:gravel", "", ""}
	}
})

minetest.register_craft({
	output = "zen:garden_fragment_6",
	recipe = {
		{"", "", ""},
		{"", "", "default:cobble"},
		{"default:gravel", "", ""}
	}
})

minetest.register_craft({
	output = "zen:garden_fragment_7",
	recipe = {
		{"default:cobble", "", ""},
		{"", "", ""},
		{"", "default:gravel", ""}
	}
})

minetest.register_craft({
	output = "zen:garden_fragment_8",
	recipe = {
		{"", "default:cobble", ""},
		{"", "", ""},
		{"", "default:gravel", ""}
	}
})

minetest.register_craft({
	output = "zen:garden_fragment_9",
	recipe = {
		{"", "", "default:cobble"},
		{"", "", ""},
		{"", "default:gravel", ""}
	}
})

minetest.register_craft({
	output = "zen:garden_fragment_10",
	recipe = {
		{"", "", ""},
		{"default:cobble", "", ""},
		{"", "default:gravel", ""}
	}
})

minetest.register_craft({
	output = "zen:garden_stone_1",
	recipe = {
		{"", "", ""},
		{"", "default:cobble", ""},
		{"", "default:gravel", ""}
	}
})

minetest.register_craft({
	output = "zen:garden_stone_2",
	recipe = {
		{"", "", ""},
		{"", "", "default:cobble"},
		{"", "default:gravel", ""}
	}
})

minetest.register_craft({
	output = "zen:garden_stone_3",
	recipe = {
		{"default:cobble", "", ""},
		{"", "", ""},
		{"", "", "default:gravel"}
	}
})

minetest.register_craft({
	output = "zen:garden_stone_4",
	recipe = {
		{"", "default:cobble", ""},
		{"", "", ""},
		{"", "", "default:gravel"}
	}
})

minetest.register_craft({
	output = "zen:garden_stone_5",
	recipe = {
		{"", "", "default:cobble"},
		{"", "", ""},
		{"", "", "default:gravel"}
	}
})

minetest.register_craft({
	output = "zen:garden_margin_1",
	recipe = {
		{"", "", ""},
		{"default:cobble", "", ""},
		{"", "", "default:gravel"}
	}
})

minetest.register_craft({
	output = "zen:garden_margin_2",
	recipe = {
		{"", "", ""},
		{"", "default:cobble", ""},
		{"", "", "default:gravel"}
	}
})

minetest.register_craft({
	output = "zen:garden_margin_3",
	recipe = {
		{"", "", ""},
		{"", "", "default:cobble"},
		{"", "", "default:gravel"}
	}
})

minetest.register_craft({
	output = "zen:garden_waterfall",
	recipe = {
		{"", "", ""},
		{"", "", ""},
		{"default:cobble", "default:gravel", "default:cobble"}
	}
})

minetest.register_craft({
	output = "zen:garden_wall_1",
	recipe = {
		{"default:cobble", "", ""},
		{"default:cobble", "", ""},
		{"default:gravel", "", ""}
	}
})

minetest.register_craft({
	output = "zen:garden_wall_2",
	recipe = {
		{"", "default:cobble", ""},
		{"", "default:cobble", ""},
		{"", "default:gravel", ""}
	}
})

minetest.register_craft({
	output = "zen:garden_wall_3",
	recipe = {
		{"", "", "default:cobble"},
		{"", "", "default:cobble"},
		{"", "", "default:gravel"}
	}
})

minetest.log('action', 'MOD: Zen version ' .. zen_version .. ' loaded.')
