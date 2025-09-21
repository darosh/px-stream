{
  "patcher": {
    "fileversion": 1,
    "appversion": {
      "major": 9,
      "minor": 0,
      "revision": 8,
      "architecture": "x64",
      "modernui": 1
    },
    "classnamespace": "box",
    "rect": [133, 80, 257, 423],
    "openinpresentation": 1,
    "gridonopen": 2,
    "gridsize": [8, 8],
    "gridsnaponopen": 2,
    "objectsnaponopen": 0,
    "enablehscroll": 0,
    "enablevscroll": 0,
    "integercoordinates": 1,
    "boxes": [
      {
        "box": {
          "bgmode": 0,
          "border": 0,
          "clickthrough": 0,
          "enablehscroll": 0,
          "enablevscroll": 0,
          "id": "obj-15",
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "maxclass": "bpatcher",
          "name": "PX._dimensions.maxpat",
          "numinlets": 1,
          "numoutlets": 1,
          "offset": [0, 0],
          "outlettype": [""],
          "patching_rect": [1136, 248, 72, 17],
          "presentation": 1,
          "presentation_rect": [0, 133, 72, 17],
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "id": "obj-1",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": ["bang"],
          "patching_rect": [600, 312, 22, 22],
          "text": "t b"
        }
      },
      {
        "box": {
          "bgcolor": [0.27843137254902, 0.27843137254902, 0.27843137254902, 0],
          "blinkcolor": [
            0.972549019607843,
            0.462745098039216,
            0.501960784313725,
            1
          ],
          "id": "obj-43",
          "ignoreclick": 1,
          "maxclass": "button",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": ["bang"],
          "outlinecolor": [
            0.27843137254902,
            0.27843137254902,
            0.27843137254902,
            0
          ],
          "parameter_enable": 0,
          "patching_rect": [600, 344, 24, 24],
          "presentation": 1,
          "presentation_rect": [43.5, 60.5, 24, 24],
          "saved_attribute_attributes": {
            "blinkcolor": {"expression": "themecolor.live_display_handle_two"}
          }
        }
      },
      {
        "box": {
          "id": "obj-27",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["bang", ""],
          "patching_rect": [568, 536, 30, 22],
          "text": "t b l"
        }
      },
      {
        "box": {
          "id": "obj-25",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["bang", ""],
          "patching_rect": [712, 576, 30, 22],
          "text": "t b l"
        }
      },
      {
        "box": {
          "id": "obj-22",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["bang", ""],
          "patching_rect": [760, 384, 30, 22],
          "text": "t b l"
        }
      },
      {
        "box": {
          "id": "obj-21",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["bang", ""],
          "patching_rect": [424, 376, 31, 22],
          "text": "t b s"
        }
      },
      {
        "box": {
          "id": "obj-93",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 3,
          "outlettype": ["", "", ""],
          "patching_rect": [712, 624, 42, 22],
          "text": "gate 3"
        }
      },
      {
        "box": {
          "id": "obj-92",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [712, 536, 30, 22],
          "text": "+ 1"
        }
      },
      {
        "box": {
          "id": "obj-91",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["", "", "float"],
          "parameter_enable": 1,
          "patching_rect": [712, 496, 100, 15],
          "presentation": 1,
          "presentation_rect": [74, 135, 54, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_enum": ["Fit", "Fill", "Stretch"],
              "parameter_longname": "View",
              "parameter_mmax": 2,
              "parameter_modmode": 0,
              "parameter_shortname": "View",
              "parameter_type": 2,
              "parameter_annotation_name": "View"
            }
          },
          "varname": "live.menu",
          "annotation_name": "View"
        }
      },
      {
        "box": {
          "id": "obj-88",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [968, 800, 49, 22],
          "text": "$1 $2 1"
        }
      },
      {
        "box": {
          "id": "obj-87",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [968, 760, 47, 22],
          "text": "pack f f"
        }
      },
      {
        "box": {
          "id": "obj-86",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [544, 800, 49, 22],
          "text": "$1 $2 1"
        }
      },
      {
        "box": {
          "id": "obj-82",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [544, 760, 47, 22],
          "text": "pack f f"
        }
      },
      {
        "box": {
          "id": "obj-78",
          "maxclass": "newobj",
          "numinlets": 5,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [648, 672, 201, 22],
          "text": "expr ($f2/$f5) / max($f1/$f4\\, $f2/$f5)"
        }
      },
      {
        "box": {
          "id": "obj-77",
          "maxclass": "newobj",
          "numinlets": 5,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [424, 672, 201, 22],
          "text": "expr ($f1/$f4) / max($f1/$f4\\, $f2/$f5)"
        }
      },
      {
        "box": {
          "id": "obj-75",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [736, 856, 58, 22],
          "text": "s ---scale"
        }
      },
      {
        "box": {
          "id": "obj-71",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [760, 344, 84, 22],
          "text": "prepend scale"
        }
      },
      {
        "box": {
          "id": "obj-70",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [760, 304, 56, 22],
          "text": "r ---scale"
        }
      },
      {
        "box": {
          "id": "obj-68",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["jit_gl_texture", ""],
          "patching_rect": [848, 112, 528, 22],
          "text": "jit.gl.texture px-stream @name ---_IMG @defaultimage black @type float32 @erase_color 0 0 0 0"
        }
      },
      {
        "box": {
          "id": "obj-66",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["jit_matrix", ""],
          "patching_rect": [760, 416, 545, 22],
          "text": "jit.gl.videoplane px-stream @preserve_aspect 1 @capture ---_IMG @transform_reset 2 @scale 1 1 1"
        }
      },
      {
        "box": {
          "id": "obj-61",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1368, 800, 35, 22],
          "text": "1 1 1"
        }
      },
      {
        "box": {
          "id": "obj-57",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["bang", ""],
          "patching_rect": [1368, 672, 50, 22],
          "text": "select 2"
        }
      },
      {
        "box": {
          "id": "obj-51",
          "maxclass": "newobj",
          "numinlets": 5,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [888, 672, 197, 22],
          "text": "expr ($f1/$f4) / min($f1/$f4\\, $f2/$f5)"
        }
      },
      {
        "box": {
          "id": "obj-49",
          "maxclass": "newobj",
          "numinlets": 5,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1104, 672, 197, 22],
          "text": "expr ($f2/$f5) / min($f1/$f4\\, $f2/$f5)"
        }
      },
      {
        "box": {
          "id": "obj-47",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [424, 584, 39, 22],
          "text": "zl.join"
        }
      },
      {
        "box": {
          "id": "obj-28",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [568, 472, 47, 22],
          "text": "r ---dim"
        }
      },
      {
        "box": {
          "id": "obj-20",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [424, 536, 59, 22],
          "text": "route dim"
        }
      },
      {
        "box": {
          "filename": "jitgltextureinfo.js",
          "id": "obj-16",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [424, 472, 89, 22],
          "saved_object_attributes": {"parameter_enable": 0},
          "text": "jit.gl.textureinfo",
          "textfile": {
            "filename": "jitgltextureinfo.js",
            "flags": 0,
            "embed": 0,
            "autowatch": 1
          }
        }
      },
      {
        "box": {
          "id": "obj-7",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [424, 344, 71, 22],
          "text": "prepend file"
        }
      },
      {
        "box": {
          "id": "obj-6",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [424, 304, 43, 22],
          "text": "r ---file"
        }
      },
      {
        "box": {
          "id": "obj-5",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["jit_gl_texture", ""],
          "patching_rect": [424, 416, 204, 22],
          "text": "jit.gl.texture px-stream @type float32"
        }
      },
      {
        "box": {
          "bgmode": 0,
          "border": 0,
          "clickthrough": 0,
          "enablehscroll": 0,
          "enablevscroll": 0,
          "id": "obj-4",
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "maxclass": "bpatcher",
          "name": "PX._menu.maxpat",
          "numinlets": 3,
          "numoutlets": 1,
          "offset": [0, 0],
          "outlettype": [""],
          "patching_rect": [280, 248, 130, 19],
          "presentation": 1,
          "presentation_rect": [0, 0, 130, 19],
          "varname": "PX._menu",
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "id": "obj-26",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": ["bang"],
          "patching_rect": [432, 64, 22, 22],
          "text": "t b"
        }
      },
      {
        "box": {
          "id": "obj-18",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [760, 112, 47, 22],
          "text": "r ---dim"
        }
      },
      {
        "box": {
          "fontsize": 18,
          "id": "obj-167",
          "linecount": 2,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [8, 8, 322, 47],
          "saved_attribute_attributes": {
            "textcolor": {"expression": "themecolor.live_control_fg"}
          },
          "text": "PX Stream by darosh\nhttps://github.com/darosh/px-stream"
        }
      },
      {
        "box": {
          "id": "obj-59",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [320, 136, 87, 22],
          "text": "r ---folder_load"
        }
      },
      {
        "box": {
          "id": "obj-8",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [24, 336, 89, 22],
          "text": "s ---folder_load"
        }
      },
      {
        "box": {
          "id": "obj-3",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [104, 288, 30, 22],
          "text": "t l l"
        }
      },
      {
        "box": {
          "id": "obj-98",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [280, 376, 30, 22],
          "text": "t l l"
        }
      },
      {
        "box": {
          "id": "obj-97",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [280, 440, 42, 22],
          "text": "gate 2"
        }
      },
      {
        "box": {
          "id": "obj-96",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [280, 408, 37, 22],
          "text": "zl.len"
        }
      },
      {
        "box": {
          "id": "obj-72",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [104, 80, 80, 22],
          "text": "r ---this_bang"
        }
      },
      {
        "box": {
          "id": "obj-24",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [336, 200, 54, 22],
          "text": "r ---reset"
        }
      },
      {
        "box": {
          "id": "obj-60",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [280, 544, 57, 22],
          "text": "tosymbol"
        }
      },
      {
        "box": {
          "id": "obj-58",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [280, 480, 37, 22],
          "text": "zl.rev"
        }
      },
      {
        "box": {
          "id": "obj-53",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [280, 344, 39, 22],
          "text": "zl.join"
        }
      },
      {
        "box": {
          "id": "obj-48",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [280, 512, 78, 22],
          "text": "sprintf %s%s"
        }
      },
      {
        "box": {
          "id": "obj-37",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [296, 304, 58, 22],
          "text": "r ---folder"
        }
      },
      {
        "box": {
          "id": "obj-65",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [280, 584, 45, 22],
          "text": "s ---file"
        }
      },
      {
        "box": {
          "id": "obj-358",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [192, 472, 57, 22],
          "text": "tosymbol"
        }
      },
      {
        "box": {
          "fontsize": 8,
          "id": "obj-361",
          "maxclass": "live.text",
          "mode": 0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "parameter_enable": 1,
          "patching_rect": [8, 416, 32, 32],
          "pictures": ["refresh.svg", "refresh.svg"],
          "presentation": 1,
          "presentation_rect": [44, 20, 42, 16],
          "remapsvgcolors": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_enum": ["val1", "val2"],
              "parameter_invisible": 2,
              "parameter_longname": "Folder",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "Folder",
              "parameter_type": 2,
              "parameter_annotation_name": "Folder"
            }
          },
          "text": "Folder",
          "usesvgviewbox": 1,
          "varname": "live.text[9]",
          "annotation_name": "Folder"
        }
      },
      {
        "box": {
          "fontsize": 8,
          "id": "obj-360",
          "maxclass": "live.text",
          "mode": 0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "parameter_enable": 1,
          "patching_rect": [152, 416, 32, 32],
          "pictures": ["refresh.svg", "refresh.svg"],
          "presentation": 1,
          "presentation_rect": [2, 20, 42, 16],
          "remapsvgcolors": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_enum": ["val1", "val2"],
              "parameter_invisible": 2,
              "parameter_longname": "Edit",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "Edit",
              "parameter_type": 2,
              "parameter_annotation_name": "Edit"
            }
          },
          "text": "Edit",
          "usesvgviewbox": 1,
          "varname": "live.text[8]",
          "annotation_name": "Edit"
        }
      },
      {
        "box": {
          "id": "obj-357",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [64, 472, 57, 22],
          "text": "tosymbol"
        }
      },
      {
        "box": {
          "id": "obj-344",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [192, 424, 43, 22],
          "text": "r ---file"
        }
      },
      {
        "box": {
          "id": "obj-343",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [64, 424, 58, 22],
          "text": "r ---folder"
        }
      },
      {
        "box": {
          "id": "obj-342",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [152, 512, 38, 22],
          "text": "zl.reg"
        }
      },
      {
        "box": {
          "id": "obj-337",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [8, 512, 38, 22],
          "text": "zl.reg"
        }
      },
      {
        "box": {
          "id": "obj-335",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [8, 600, 57, 22],
          "text": "tosymbol"
        }
      },
      {
        "box": {
          "id": "obj-326",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [8, 560, 87, 22],
          "text": "sprintf file://%s"
        }
      },
      {
        "box": {
          "id": "obj-336",
          "linecount": 2,
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [8, 640, 129, 35],
          "text": ";\rmax launchbrowser $1"
        }
      },
      {
        "box": {
          "id": "obj-34",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [136, 336, 60, 22],
          "text": "s ---folder"
        }
      },
      {
        "box": {
          "id": "obj-84",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [848, 24, 47, 22],
          "text": "r ---dim"
        }
      },
      {
        "box": {
          "id": "obj-83",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [1136, 328, 49, 22],
          "text": "s ---dim"
        }
      },
      {
        "box": {
          "id": "obj-41",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [392, 104, 82, 22],
          "text": "s ---this_bang"
        }
      },
      {
        "box": {
          "id": "obj-9",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["bang", "int", "int"],
          "patching_rect": [392, 24, 100, 22],
          "text": "live.thisdevice"
        }
      },
      {
        "box": {
          "bgmode": 0,
          "border": 0,
          "clickthrough": 0,
          "enablehscroll": 0,
          "enablevscroll": 0,
          "id": "obj-85",
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "maxclass": "bpatcher",
          "name": "PX._channel.maxpat",
          "numinlets": 5,
          "numoutlets": 6,
          "offset": [0, 0],
          "outlettype": ["int", "bang", "", "", "", ""],
          "patching_rect": [568, 224, 238, 34],
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "id": "obj-46",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [1136, 216, 31, 22],
          "text": "int 3"
        }
      },
      {
        "box": {
          "id": "obj-45",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1136, 184, 54, 22],
          "text": "r ---reset"
        }
      },
      {
        "box": {
          "id": "obj-38",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [848, 64, 75, 22],
          "text": "prepend dim"
        }
      },
      {
        "box": {
          "id": "obj-309",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [912, 184, 80, 22],
          "text": "r ---this_bang"
        }
      },
      {
        "box": {
          "args": ["audio"],
          "bgmode": 0,
          "border": 0,
          "clickthrough": 0,
          "enablehscroll": 0,
          "enablevscroll": 0,
          "id": "obj-39",
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "maxclass": "bpatcher",
          "name": "PX._chain.maxpat",
          "numinlets": 3,
          "numoutlets": 4,
          "offset": [0, 0],
          "outlettype": ["", "", "", ""],
          "patching_rect": [824, 224, 247, 36],
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "id": "obj-376",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [568, 144, 31, 22],
          "text": "int 8"
        }
      },
      {
        "box": {
          "id": "obj-372",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [568, 112, 54, 22],
          "text": "r ---reset"
        }
      },
      {
        "box": {
          "activebgoncolor": [
            0.972549019607843,
            0.462745098039216,
            0.501960784313725,
            1
          ],
          "annotation": "Sets target mix channel, rendered in Mix View device, alternative to Mix Channel device. When P (pass) is select texture is processed by following device.",
          "annotation_name": "Channel",
          "focusbordercolor": [
            0.752941176470588,
            0.752941176470588,
            0.752941176470588,
            0
          ],
          "id": "obj-366",
          "maxclass": "live.tab",
          "num_lines_patching": 1,
          "num_lines_presentation": 1,
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["", "", "float"],
          "parameter_enable": 1,
          "patching_rect": [568, 184, 100, 20],
          "presentation": 1,
          "presentation_rect": [2, 153, 126, 15],
          "saved_attribute_attributes": {
            "activebgoncolor": {
              "expression": "themecolor.live_display_handle_two"
            },
            "focusbordercolor": {"expression": ""},
            "valueof": {
              "parameter_annotation_name": "Channel",
              "parameter_enum": ["1", "2", "3", "4", "5", "6", "7", "8", "P"],
              "parameter_info": "Sets target mix channel, rendered in Mix View device, alternative to Mix Channel device. When P (pass) is select texture is processed by following device.",
              "parameter_initial": [8],
              "parameter_initial_enable": 1,
              "parameter_longname": "Channel",
              "parameter_mmax": 8,
              "parameter_modmode": 0,
              "parameter_shortname": "Channel",
              "parameter_type": 2,
              "parameter_unitstyle": 9
            }
          },
          "spacing_x": 3,
          "varname": "Channel"
        }
      },
      {
        "box": {
          "id": "obj-13",
          "maxclass": "button",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": ["bang"],
          "parameter_enable": 0,
          "patching_rect": [208, 80, 24, 24]
        }
      },
      {
        "box": {
          "id": "obj-23",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [8, 224, 56, 22],
          "text": "s ---reset"
        }
      },
      {
        "box": {
          "id": "obj-180",
          "maxclass": "button",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": ["bang"],
          "parameter_enable": 0,
          "patching_rect": [8, 176, 24, 24]
        }
      },
      {
        "box": {
          "fontsize": 8,
          "id": "obj-362",
          "maxclass": "live.text",
          "mode": 0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "parameter_enable": 1,
          "patching_rect": [272, 136, 32, 32],
          "pictures": ["refresh.svg", "refresh.svg"],
          "presentation": 1,
          "presentation_rect": [86, 20, 42, 16],
          "remapsvgcolors": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_enum": ["val1", "val2"],
              "parameter_invisible": 2,
              "parameter_longname": "Reload",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "Reload",
              "parameter_type": 2,
              "parameter_annotation_name": "Reload"
            }
          },
          "text": "Reload",
          "usesvgviewbox": 1,
          "varname": "live.text[10]",
          "annotation_name": "Reload"
        }
      },
      {
        "box": {
          "id": "obj-192",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [104, 248, 118, 22],
          "text": "sprintf \\\"%simages/\\\""
        }
      },
      {
        "box": {
          "id": "obj-297",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["bang", "bang"],
          "patching_rect": [104, 120, 32, 22],
          "text": "t b b"
        }
      },
      {
        "box": {
          "id": "obj-190",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [144, 160, 122, 22],
          "text": "types .webp .png .jpg"
        }
      },
      {
        "box": {
          "id": "obj-187",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "int"],
          "patching_rect": [272, 200, 39, 22],
          "text": "folder"
        }
      },
      {
        "box": {
          "id": "obj-74",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [104, 160, 32, 22],
          "text": "path"
        }
      },
      {
        "box": {
          "id": "obj-73",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [104, 200, 67, 22],
          "save": ["#N", "thispatcher", ";", "#Q", "end", ";"],
          "text": "thispatcher"
        }
      },
      {
        "box": {
          "fontname": "Arial Bold",
          "fontsize": 10,
          "id": "obj-2",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["signal", "signal"],
          "patching_rect": [8, 136, 53, 20],
          "text": "plugout~"
        }
      },
      {
        "box": {
          "fontname": "Arial Bold",
          "fontsize": 10,
          "id": "obj-12",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["signal", "signal"],
          "patching_rect": [8, 80, 53, 20],
          "text": "plugin~"
        }
      },
      {
        "box": {
          "id": "obj-94",
          "maxclass": "fpic",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": ["jit_matrix"],
          "patching_rect": [264, 72, 100, 50],
          "pic": "PX._jpg.svg",
          "presentation": 1,
          "presentation_rect": [8, 49, 112, 64]
        }
      }
    ],
    "lines": [
      {"patchline": {"destination": ["obj-43", 0], "source": ["obj-1", 0]}},
      {"patchline": {"destination": ["obj-2", 1], "source": ["obj-12", 1]}},
      {"patchline": {"destination": ["obj-2", 0], "source": ["obj-12", 0]}},
      {"patchline": {"destination": ["obj-297", 0], "source": ["obj-13", 0]}},
      {"patchline": {"destination": ["obj-83", 0], "source": ["obj-15", 0]}},
      {"patchline": {"destination": ["obj-20", 0], "source": ["obj-16", 0]}},
      {"patchline": {"destination": ["obj-85", 4], "source": ["obj-18", 0]}},
      {"patchline": {"destination": ["obj-23", 0], "source": ["obj-180", 0]}},
      {"patchline": {"destination": ["obj-4", 0], "source": ["obj-187", 1]}},
      {"patchline": {"destination": ["obj-4", 0], "source": ["obj-187", 0]}},
      {"patchline": {"destination": ["obj-187", 0], "source": ["obj-190", 0]}},
      {"patchline": {"destination": ["obj-3", 0], "source": ["obj-192", 0]}},
      {"patchline": {"destination": ["obj-47", 0], "source": ["obj-20", 0]}},
      {"patchline": {"destination": ["obj-5", 0], "source": ["obj-21", 1]}},
      {"patchline": {"destination": ["obj-5", 0], "source": ["obj-21", 0]}},
      {"patchline": {"destination": ["obj-66", 0], "source": ["obj-22", 1]}},
      {"patchline": {"destination": ["obj-66", 0], "source": ["obj-22", 0]}},
      {"patchline": {"destination": ["obj-4", 1], "source": ["obj-24", 0]}},
      {"patchline": {"destination": ["obj-47", 0], "source": ["obj-25", 0]}},
      {"patchline": {"destination": ["obj-93", 0], "source": ["obj-25", 1]}},
      {"patchline": {"destination": ["obj-41", 0], "source": ["obj-26", 0]}},
      {"patchline": {"destination": ["obj-47", 1], "source": ["obj-27", 1]}},
      {"patchline": {"destination": ["obj-47", 0], "source": ["obj-27", 0]}},
      {"patchline": {"destination": ["obj-27", 0], "source": ["obj-28", 0]}},
      {"patchline": {"destination": ["obj-190", 0], "source": ["obj-297", 1]}},
      {"patchline": {"destination": ["obj-74", 0], "source": ["obj-297", 0]}},
      {"patchline": {"destination": ["obj-34", 0], "source": ["obj-3", 1]}},
      {"patchline": {"destination": ["obj-8", 0], "source": ["obj-3", 0]}},
      {"patchline": {"destination": ["obj-39", 1], "source": ["obj-309", 0]}},
      {"patchline": {"destination": ["obj-335", 0], "source": ["obj-326", 0]}},
      {"patchline": {"destination": ["obj-336", 0], "source": ["obj-335", 0]}},
      {"patchline": {"destination": ["obj-326", 0], "source": ["obj-337", 0]}},
      {"patchline": {"destination": ["obj-326", 0], "source": ["obj-342", 0]}},
      {"patchline": {"destination": ["obj-357", 0], "source": ["obj-343", 0]}},
      {"patchline": {"destination": ["obj-358", 0], "source": ["obj-344", 0]}},
      {"patchline": {"destination": ["obj-337", 1], "source": ["obj-357", 0]}},
      {"patchline": {"destination": ["obj-342", 1], "source": ["obj-358", 0]}},
      {"patchline": {"destination": ["obj-342", 0], "source": ["obj-360", 0]}},
      {"patchline": {"destination": ["obj-337", 0], "source": ["obj-361", 0]}},
      {"patchline": {"destination": ["obj-187", 0], "source": ["obj-362", 0]}},
      {"patchline": {"destination": ["obj-85", 0], "source": ["obj-366", 0]}},
      {"patchline": {"destination": ["obj-53", 1], "source": ["obj-37", 0]}},
      {"patchline": {"destination": ["obj-376", 0], "source": ["obj-372", 0]}},
      {"patchline": {"destination": ["obj-366", 0], "source": ["obj-376", 0]}},
      {"patchline": {"destination": ["obj-68", 0], "source": ["obj-38", 0]}},
      {"patchline": {"destination": ["obj-85", 2], "source": ["obj-39", 0]}},
      {"patchline": {"destination": ["obj-53", 0], "source": ["obj-4", 0]}},
      {"patchline": {"destination": ["obj-46", 0], "source": ["obj-45", 0]}},
      {"patchline": {"destination": ["obj-15", 0], "source": ["obj-46", 0]}},
      {"patchline": {"destination": ["obj-93", 1], "source": ["obj-47", 0]}},
      {"patchline": {"destination": ["obj-60", 0], "source": ["obj-48", 0]}},
      {"patchline": {"destination": ["obj-87", 1], "source": ["obj-49", 0]}},
      {
        "patchline": {
          "destination": ["obj-16", 0],
          "order": 1,
          "source": ["obj-5", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-66", 0],
          "order": 0,
          "source": ["obj-5", 0]
        }
      },
      {"patchline": {"destination": ["obj-87", 0], "source": ["obj-51", 0]}},
      {"patchline": {"destination": ["obj-98", 0], "source": ["obj-53", 0]}},
      {"patchline": {"destination": ["obj-61", 0], "source": ["obj-57", 0]}},
      {"patchline": {"destination": ["obj-48", 0], "source": ["obj-58", 0]}},
      {"patchline": {"destination": ["obj-187", 0], "source": ["obj-59", 0]}},
      {
        "patchline": {
          "destination": ["obj-1", 0],
          "order": 0,
          "source": ["obj-6", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-7", 0],
          "order": 1,
          "source": ["obj-6", 0]
        }
      },
      {"patchline": {"destination": ["obj-65", 0], "source": ["obj-60", 0]}},
      {"patchline": {"destination": ["obj-75", 0], "source": ["obj-61", 0]}},
      {"patchline": {"destination": ["obj-85", 3], "source": ["obj-68", 0]}},
      {"patchline": {"destination": ["obj-21", 0], "source": ["obj-7", 0]}},
      {
        "patchline": {
          "destination": ["obj-1", 0],
          "order": 1,
          "source": ["obj-70", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-71", 0],
          "order": 0,
          "source": ["obj-70", 0]
        }
      },
      {"patchline": {"destination": ["obj-22", 0], "source": ["obj-71", 0]}},
      {"patchline": {"destination": ["obj-297", 0], "source": ["obj-72", 0]}},
      {"patchline": {"destination": ["obj-192", 0], "source": ["obj-73", 1]}},
      {"patchline": {"destination": ["obj-73", 0], "source": ["obj-74", 0]}},
      {"patchline": {"destination": ["obj-82", 0], "source": ["obj-77", 0]}},
      {"patchline": {"destination": ["obj-82", 1], "source": ["obj-78", 0]}},
      {"patchline": {"destination": ["obj-86", 0], "source": ["obj-82", 0]}},
      {"patchline": {"destination": ["obj-38", 0], "source": ["obj-84", 0]}},
      {"patchline": {"destination": ["obj-366", 0], "source": ["obj-85", 2]}},
      {"patchline": {"destination": ["obj-39", 0], "source": ["obj-85", 4]}},
      {"patchline": {"destination": ["obj-68", 0], "source": ["obj-85", 3]}},
      {"patchline": {"destination": ["obj-75", 0], "source": ["obj-86", 0]}},
      {"patchline": {"destination": ["obj-88", 0], "source": ["obj-87", 0]}},
      {"patchline": {"destination": ["obj-75", 0], "source": ["obj-88", 0]}},
      {"patchline": {"destination": ["obj-26", 0], "source": ["obj-9", 1]}},
      {
        "patchline": {
          "destination": ["obj-57", 0],
          "order": 0,
          "source": ["obj-91", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-92", 0],
          "order": 1,
          "source": ["obj-91", 0]
        }
      },
      {"patchline": {"destination": ["obj-25", 0], "source": ["obj-92", 0]}},
      {
        "patchline": {
          "destination": ["obj-49", 0],
          "order": 0,
          "source": ["obj-93", 1]
        }
      },
      {
        "patchline": {
          "destination": ["obj-51", 0],
          "order": 1,
          "source": ["obj-93", 1]
        }
      },
      {
        "patchline": {
          "destination": ["obj-77", 0],
          "order": 1,
          "source": ["obj-93", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-78", 0],
          "order": 0,
          "source": ["obj-93", 0]
        }
      },
      {"patchline": {"destination": ["obj-97", 0], "source": ["obj-96", 0]}},
      {"patchline": {"destination": ["obj-58", 0], "source": ["obj-97", 1]}},
      {"patchline": {"destination": ["obj-96", 0], "source": ["obj-98", 1]}},
      {"patchline": {"destination": ["obj-97", 1], "source": ["obj-98", 0]}}
    ],
    "parameters": {
      "obj-15::obj-151": ["Dimensions", "Dimensions", 0],
      "obj-360": ["Edit", "Edit", 0],
      "obj-361": ["Folder", "Folder", 0],
      "obj-362": ["Reload", "Reload", 0],
      "obj-366": ["Channel", "Channel", 0],
      "obj-4::obj-4": ["FileName", "FileName", 0],
      "obj-4::obj-6": ["File", "File", 0],
      "obj-4::obj-76": ["live.menu[1]", "File", 0],
      "obj-91": ["View", "live.menu", 0],
      "parameterbanks": {
        "0": {
          "index": 0,
          "name": "",
          "parameters": ["-", "-", "-", "-", "-", "-", "-", "-"]
        }
      },
      "parameter_overrides": {
        "obj-15::obj-151": {
          "parameter_invisible": 0,
          "parameter_modmode": 0,
          "parameter_range": [
            "2560×1440",
            "2560×1080",
            "1920×1080",
            "1280×720",
            "720×1280",
            "640×480",
            "320×240",
            "512×512",
            "480×480",
            "256×256"
          ],
          "parameter_type": 2,
          "parameter_unitstyle": 10
        },
        "obj-4::obj-6": {"parameter_longname": "File"},
        "obj-4::obj-76": {
          "parameter_invisible": 2,
          "parameter_longname": "live.menu[1]",
          "parameter_modmode": 0,
          "parameter_range": ["Loading...", " "],
          "parameter_type": 2,
          "parameter_unitstyle": 10
        }
      },
      "inherited_shortname": 1
    },
    "dependency_cache": [
      {
        "name": "PX._chain.js",
        "bootpath": "~/Documents/GitHub/px-stream/devices",
        "patcherrelativepath": ".",
        "type": "TEXT",
        "implicit": 1
      },
      {
        "name": "PX._chain.maxpat",
        "bootpath": "~/Documents/GitHub/px-stream/devices",
        "patcherrelativepath": ".",
        "type": "JSON",
        "implicit": 1
      },
      {
        "name": "PX._channel.maxpat",
        "bootpath": "~/Documents/GitHub/px-stream/devices",
        "patcherrelativepath": ".",
        "type": "JSON",
        "implicit": 1
      },
      {
        "name": "PX._dimensions.maxpat",
        "bootpath": "~/Documents/GitHub/px-stream/devices",
        "patcherrelativepath": ".",
        "type": "JSON",
        "implicit": 1
      },
      {
        "name": "PX._jpg.svg",
        "bootpath": "~/Documents/GitHub/px-stream/devices",
        "patcherrelativepath": ".",
        "type": "svg",
        "implicit": 1
      },
      {
        "name": "PX._menu.maxpat",
        "bootpath": "~/Documents/GitHub/px-stream/devices",
        "patcherrelativepath": ".",
        "type": "JSON",
        "implicit": 1
      },
      {
        "name": "jitgltextureinfo.js",
        "bootpath": "C74:/packages/Jitter Tools/javascript",
        "type": "TEXT",
        "implicit": 1
      }
    ],
    "autosave": 0
  }
}