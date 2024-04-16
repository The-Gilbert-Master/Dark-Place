return {
  version = "1.10",
  luaversion = "5.1",
  tiledversion = "1.10.2",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 16,
  height = 12,
  tilewidth = 40,
  tileheight = 40,
  nextlayerid = 7,
  nextobjectid = 34,
  properties = {
    ["border"] = "leaves",
    ["light"] = true,
    ["music"] = "school"
  },
  tilesets = {
    {
      name = "hometownobjects",
      firstgid = 1,
      filename = "../../../../tilesets/hometownobjects.tsx",
      exportfilename = "../../../../tilesets/hometownobjects.lua"
    }
  },
  layers = {
    {
      type = "imagelayer",
      image = "../../../../../../assets/sprites/world/maps/hometown/school/kris_class.png",
      id = 2,
      name = "room",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      repeatx = false,
      repeaty = false,
      properties = {}
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 3,
      name = "collision",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 1,
          name = "",
          type = "",
          shape = "rectangle",
          x = 76,
          y = 436,
          width = 494,
          height = 44,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2,
          name = "",
          type = "",
          shape = "rectangle",
          x = 570,
          y = 104,
          width = 40,
          height = 376,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 3,
          name = "",
          type = "",
          shape = "rectangle",
          x = 36,
          y = 104,
          width = 40,
          height = 376,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 4,
          name = "",
          type = "",
          shape = "rectangle",
          x = 76,
          y = 104,
          width = 398,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 5,
          name = "",
          type = "",
          shape = "rectangle",
          x = 536,
          y = 104,
          width = 34,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 18,
          name = "",
          type = "",
          shape = "rectangle",
          x = 278,
          y = 246,
          width = 74,
          height = 30,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 19,
          name = "",
          type = "",
          shape = "rectangle",
          x = 138,
          y = 246,
          width = 74,
          height = 30,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 20,
          name = "",
          type = "",
          shape = "rectangle",
          x = 138,
          y = 308,
          width = 74,
          height = 30,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 21,
          name = "",
          type = "",
          shape = "rectangle",
          x = 138,
          y = 372,
          width = 74,
          height = 30,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 22,
          name = "",
          type = "",
          shape = "rectangle",
          x = 278,
          y = 372,
          width = 74,
          height = 30,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 23,
          name = "",
          type = "",
          shape = "rectangle",
          x = 278,
          y = 308,
          width = 74,
          height = 30,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 24,
          name = "",
          type = "",
          shape = "rectangle",
          x = 414,
          y = 246,
          width = 74,
          height = 30,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 25,
          name = "",
          type = "",
          shape = "rectangle",
          x = 414,
          y = 308,
          width = 74,
          height = 30,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 26,
          name = "",
          type = "",
          shape = "rectangle",
          x = 414,
          y = 372,
          width = 74,
          height = 30,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 27,
          name = "",
          type = "",
          shape = "rectangle",
          x = 200,
          y = 178,
          width = 188,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 6,
      name = "objects_deco",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 16,
          name = "",
          type = "",
          shape = "rectangle",
          x = 472,
          y = 170,
          width = 101,
          height = 118,
          rotation = 0,
          gid = 24,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 4,
      name = "objects",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 6,
          name = "",
          type = "",
          shape = "rectangle",
          x = 136,
          y = 412,
          width = 78,
          height = 56,
          rotation = 0,
          gid = 23,
          visible = true,
          properties = {}
        },
        {
          id = 7,
          name = "",
          type = "",
          shape = "rectangle",
          x = 136,
          y = 348,
          width = 78,
          height = 56,
          rotation = 0,
          gid = 23,
          visible = true,
          properties = {}
        },
        {
          id = 8,
          name = "",
          type = "",
          shape = "rectangle",
          x = 136,
          y = 286,
          width = 78,
          height = 56,
          rotation = 0,
          gid = 23,
          visible = true,
          properties = {}
        },
        {
          id = 9,
          name = "",
          type = "",
          shape = "rectangle",
          x = 276,
          y = 286,
          width = 78,
          height = 56,
          rotation = 0,
          gid = 23,
          visible = true,
          properties = {}
        },
        {
          id = 10,
          name = "",
          type = "",
          shape = "rectangle",
          x = 276,
          y = 348,
          width = 78,
          height = 56,
          rotation = 0,
          gid = 23,
          visible = true,
          properties = {}
        },
        {
          id = 11,
          name = "",
          type = "",
          shape = "rectangle",
          x = 276,
          y = 412,
          width = 78,
          height = 56,
          rotation = 0,
          gid = 23,
          visible = true,
          properties = {}
        },
        {
          id = 12,
          name = "",
          type = "",
          shape = "rectangle",
          x = 412,
          y = 412,
          width = 78,
          height = 56,
          rotation = 0,
          gid = 23,
          visible = true,
          properties = {}
        },
        {
          id = 13,
          name = "",
          type = "",
          shape = "rectangle",
          x = 412,
          y = 348,
          width = 78,
          height = 56,
          rotation = 0,
          gid = 23,
          visible = true,
          properties = {}
        },
        {
          id = 14,
          name = "",
          type = "",
          shape = "rectangle",
          x = 412,
          y = 286,
          width = 78,
          height = 56,
          rotation = 0,
          gid = 23,
          visible = true,
          properties = {}
        },
        {
          id = 17,
          name = "",
          type = "",
          shape = "rectangle",
          x = 200,
          y = 214,
          width = 188,
          height = 88,
          rotation = 0,
          gid = 26,
          visible = true,
          properties = {}
        },
        {
          id = 28,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 426,
          y = 104,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["text1"] = "* (You checked the time...)",
            ["text2"] = "* (It's an enigma.)"
          }
        },
        {
          id = 29,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 76,
          y = 104,
          width = 82,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["text1"] = "* (Looks like motivational quotes from various literature.)",
            ["text2"] = "* \"Try your best,[wait:5] Astral Wolf!\"\n[wait:5]* \"Even in your darkest hour...!\"",
            ["text3"] = "* (... that one seems to be from a video game.)"
          }
        },
        {
          id = 30,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 330,
          y = 170,
          width = 42,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["text1"] = "* (The computer wallpaper is updated.)",
            ["text2"] = "* (... it's from the newely released season of Mew Mew Kissy Cutie.)",
            ["text3"] = "* (You decide to keep a safe distance.)"
          }
        },
        {
          id = 31,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 206,
          y = 146,
          width = 40,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["text"] = "* (It's a bunch of roses.)"
          }
        },
        {
          id = 32,
          name = "transition",
          type = "",
          shape = "rectangle",
          x = 474,
          y = 102,
          width = 62,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["exit_delay"] = 1,
            ["exit_sound"] = "doorclose",
            ["facing"] = "down",
            ["map"] = "hometown/school/school_lobby",
            ["marker"] = "entrykris",
            ["sound"] = "dooropen"
          }
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 5,
      name = "markers",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 33,
          name = "spawn",
          type = "",
          shape = "point",
          x = 506,
          y = 174,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
