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
    "rect": [133, 71, 233, 508],
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
          "id": "obj-50",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [176, 568, 155, 22],
          "text": "setcell 0 0 val 0 0 0 0, bang"
        }
      },
      {
        "box": {
          "id": "obj-49",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": ["bang"],
          "patching_rect": [176, 544, 58, 22],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "id": "obj-48",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["jit_matrix", ""],
          "patching_rect": [176, 600, 110, 22],
          "text": "jit.matrix 4 char 1 1"
        }
      },
      {
        "box": {
          "id": "obj-45",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["jit_gl_texture", ""],
          "patching_rect": [176, 640, 563, 22],
          "text": "jit.gl.texture @name PX_EMPTY @defaultimage black @dim 1 1 0 @type char @adapt 1 @wrap repeat"
        }
      },
      {
        "box": {
          "id": "obj-47",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [632, 176, 62, 22],
          "text": "px-stream"
        }
      },
      {
        "box": {
          "id": "obj-46",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [608, 152, 32, 22],
          "text": "mad"
        }
      },
      {
        "box": {
          "id": "obj-43",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [320, 384, 33, 22],
          "text": "== 0"
        }
      },
      {
        "box": {
          "id": "obj-42",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [560, 264, 31, 22],
          "text": "int 1"
        }
      },
      {
        "box": {
          "id": "obj-41",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [376, 424, 55, 22],
          "text": "alpha $1"
        }
      },
      {
        "box": {
          "id": "obj-40",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [320, 424, 55, 22],
          "text": "alpha $1"
        }
      },
      {
        "box": {
          "alpha": 0,
          "id": "obj-29",
          "ignoreclick": 1,
          "maxclass": "fpic",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": ["jit_matrix"],
          "patching_rect": [264, 464, 100, 50],
          "pic": "PX World._mad-world.svg",
          "presentation": 1,
          "presentation_rect": [-4, 19, 122, 129]
        }
      },
      {
        "box": {
          "id": "obj-25",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": ["bang"],
          "patching_rect": [624, 264, 22, 22],
          "text": "t b"
        }
      },
      {
        "box": {
          "id": "obj-44",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [624, 296, 31, 22],
          "text": "int 0"
        }
      },
      {
        "box": {
          "id": "obj-33",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [560, 232, 93, 22],
          "text": "route px-stream"
        }
      },
      {
        "box": {
          "id": "obj-39",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [440, 104, 31, 22],
          "text": "int 5"
        }
      },
      {
        "box": {
          "id": "obj-38",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [104, 280, 55, 22],
          "text": "enable 0"
        }
      },
      {
        "box": {
          "id": "obj-37",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [272, 424, 30, 22],
          "text": "set"
        }
      },
      {
        "box": {
          "id": "obj-36",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["bang", "stop"],
          "patching_rect": [272, 384, 48, 22],
          "text": "t b stop"
        }
      },
      {
        "box": {
          "id": "obj-35",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [272, 344, 54, 22],
          "text": "r ---reset"
        }
      },
      {
        "box": {
          "id": "obj-34",
          "maxclass": "button",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": ["bang"],
          "parameter_enable": 0,
          "patching_rect": [16, 160, 24, 24]
        }
      },
      {
        "box": {
          "id": "obj-32",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [16, 216, 56, 22],
          "text": "s ---reset"
        }
      },
      {
        "box": {
          "id": "obj-31",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [528, 336, 74, 22],
          "text": "displaylink 0"
        }
      },
      {
        "box": {
          "id": "obj-30",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [520, 304, 74, 22],
          "text": "displaylink 1"
        }
      },
      {
        "box": {
          "id": "obj-27",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [392, 264, 46, 22],
          "text": "route 0"
        }
      },
      {
        "box": {
          "id": "obj-28",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [480, 136, 72, 22],
          "text": "prepend fps"
        }
      },
      {
        "box": {
          "id": "obj-26",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["float"],
          "patching_rect": [384, 320, 31, 22],
          "text": "float"
        }
      },
      {
        "box": {
          "id": "obj-23",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["", "", "float"],
          "parameter_enable": 1,
          "patching_rect": [384, 224, 56, 15],
          "presentation": 1,
          "presentation_rect": [50, 153, 65, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_enum": [
                "0",
                "1",
                "4",
                "8",
                "16",
                "24",
                "30",
                "60",
                "90",
                "120",
                "240"
              ],
              "parameter_initial": [5],
              "parameter_initial_enable": 1,
              "parameter_longname": "FPS",
              "parameter_mmax": 10,
              "parameter_modmode": 0,
              "parameter_shortname": "FPS",
              "parameter_type": 2,
              "parameter_info": "Select target FPS. FPS 0 will use available maximum with displaylink turned on on Mac.",
              "parameter_annotation_name": "FPS"
            }
          },
          "varname": "live.menu",
          "annotation": "Select target FPS. FPS 0 will use available maximum with displaylink turned on on Mac.",
          "annotation_name": "FPS"
        }
      },
      {
        "box": {
          "id": "obj-24",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [224, 488, 48, 18],
          "presentation": 1,
          "presentation_rect": [0, 152, 50, 18],
          "saved_attribute_attributes": {
            "textcolor": {"expression": "themecolor.live_control_text_zombie"}
          },
          "text": "FPS Limit",
          "textcolor": [
            0.57636836783545,
            0.576368229540612,
            0.576368265679262,
            1
          ],
          "textjustification": 0
        }
      },
      {
        "box": {
          "appearance": 1,
          "automation": "off",
          "automationon": "on",
          "id": "obj-16",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "parameter_enable": 1,
          "patching_rect": [352, 104, 56, 15],
          "presentation": 1,
          "presentation_rect": [2, 137, 56, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_enum": ["off", "on"],
              "parameter_initial": [1],
              "parameter_initial_enable": 1,
              "parameter_longname": "Enabled",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "Enabled",
              "parameter_type": 2,
              "parameter_info": "Stop the world here. Disabling device will do the same.",
              "parameter_annotation_name": "Enabled"
            }
          },
          "text": "Enabled",
          "texton": "Enabled",
          "varname": "live.text",
          "annotation": "Stop the world here. Disabling device will do the same.",
          "annotation_name": "Enabled"
        }
      },
      {
        "box": {
          "id": "obj-151",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["", "", "float"],
          "parameter_enable": 1,
          "patching_rect": [96, 64, 100, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_enum": [
                "2560 1440",
                "2560 1080",
                "1920 1080",
                "1280 720",
                "720 1280",
                "640 480",
                "320 240",
                "512 512",
                "480 480",
                "256 256"
              ],
              "parameter_initial": [3],
              "parameter_initial_enable": 1,
              "parameter_longname": "Dimensions",
              "parameter_mmax": 9,
              "parameter_modmode": 0,
              "parameter_shortname": "Dimensions",
              "parameter_type": 2
            }
          }
        }
      },
      {
        "box": {
          "id": "obj-20",
          "ignoreclick": 1,
          "maxclass": "fpic",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": ["jit_matrix"],
          "patching_rect": [352, 464, 100, 50],
          "pic": "Macintosh HD:/Users/jan/Documents/GitHub/px-stream/PX World._stop.svg",
          "presentation": 1,
          "presentation_rect": [0, 35, 118, 121]
        }
      },
      {
        "box": {
          "id": "obj-8",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [352, 144, 92, 22],
          "text": "prepend enable"
        }
      },
      {
        "box": {
          "id": "obj-7",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [184, 416, 72, 22],
          "text": "prepend set"
        }
      },
      {
        "box": {
          "id": "obj-5",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [184, 376, 55, 22],
          "text": "route fps"
        }
      },
      {
        "box": {
          "id": "obj-198",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["bang"],
          "patching_rect": [184, 224, 63, 22],
          "text": "metro 250"
        }
      },
      {
        "box": {
          "id": "obj-196",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [184, 264, 51, 22],
          "text": "getstate"
        }
      },
      {
        "box": {
          "id": "obj-19",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [456, 272, 72, 22],
          "text": "prepend set"
        }
      },
      {
        "box": {
          "id": "obj-18",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [456, 232, 69, 22],
          "text": "route name"
        }
      },
      {
        "box": {
          "id": "obj-17",
          "maxclass": "button",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": ["bang"],
          "parameter_enable": 0,
          "patching_rect": [304, 104, 24, 24]
        }
      },
      {
        "box": {
          "id": "obj-15",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [224, 144, 55, 22],
          "text": "getname"
        }
      },
      {
        "box": {
          "id": "obj-14",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["bang", "int", "int"],
          "patching_rect": [208, 104, 83, 22],
          "text": "live.thisdevice"
        }
      },
      {
        "box": {
          "fontface": 0,
          "fontname": "Arial Bold",
          "fontsize": 10,
          "id": "obj-3",
          "maxclass": "jit.fpsgui",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [184, 304, 80, 33]
        }
      },
      {
        "box": {
          "id": "obj-6",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [96, 144, 75, 22],
          "text": "prepend dim"
        }
      },
      {
        "box": {
          "id": "obj-60",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [96, 104, 66, 22],
          "text": "string.tolist"
        }
      },
      {
        "box": {
          "id": "obj-22",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [280, 224, 64, 22],
          "text": "s px_bang"
        }
      },
      {
        "box": {
          "id": "obj-21",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["jit_gl_texture", "bang", ""],
          "patching_rect": [96, 192, 504, 22],
          "text": "jit.world px-stream @enable 1 @output_texture 1 @visible 0 @dim 1920 1080 @displaylink 0"
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
          "patching_rect": [8, 8, 336, 47],
          "saved_attribute_attributes": {
            "textcolor": {"expression": "themecolor.live_control_fg"}
          },
          "text": "PX World by darosh\nhttps://github.com/darosh/px-stream"
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
          "patching_rect": [16, 120, 51, 20],
          "text": "plugout~"
        }
      },
      {
        "box": {
          "fontname": "Arial Bold",
          "fontsize": 10,
          "id": "obj-1",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["signal", "signal"],
          "patching_rect": [16, 64, 44, 20],
          "text": "plugin~"
        }
      },
      {
        "box": {
          "id": "obj-13",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [456, 464, 84, 18],
          "presentation": 1,
          "presentation_rect": [46, 4, 65, 18],
          "textjustification": 2
        }
      },
      {
        "box": {
          "id": "obj-12",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [184, 464, 34, 18],
          "presentation": 1,
          "presentation_rect": [46, 22, 65, 18],
          "textjustification": 2
        }
      },
      {
        "box": {
          "id": "obj-11",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [184, 488, 30, 18],
          "presentation": 1,
          "presentation_rect": [6, 22, 40, 18],
          "saved_attribute_attributes": {
            "textcolor": {"expression": "themecolor.live_control_text_zombie"}
          },
          "text": "FPS: ",
          "textcolor": [
            0.57636836783545,
            0.576368229540612,
            0.576368265679262,
            1
          ],
          "textjustification": 0
        }
      },
      {
        "box": {
          "id": "obj-10",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [456, 488, 39, 18],
          "presentation": 1,
          "presentation_rect": [6, 4, 40, 18],
          "saved_attribute_attributes": {
            "textcolor": {"expression": "themecolor.live_control_text_zombie"}
          },
          "text": "World: ",
          "textcolor": [
            0.57636836783545,
            0.576368229540612,
            0.576368265679262,
            1
          ],
          "textjustification": 0
        }
      },
      {
        "box": {
          "angle": 270,
          "bgcolor": [0.235, 0.235, 0.235, 1],
          "id": "obj-9",
          "maxclass": "panel",
          "mode": 0,
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [176, 456, 376, 71],
          "presentation": 1,
          "presentation_rect": [2, 2, 112, 40],
          "proportion": 0.39,
          "saved_attribute_attributes": {
            "bgfillcolor": {"expression": "themecolor.live_control_text_bg"}
          }
        }
      }
    ],
    "lines": [
      {"patchline": {"destination": ["obj-2", 1], "source": ["obj-1", 1]}},
      {"patchline": {"destination": ["obj-2", 0], "source": ["obj-1", 0]}},
      {
        "patchline": {
          "destination": ["obj-15", 0],
          "order": 0,
          "source": ["obj-14", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-198", 0],
          "order": 1,
          "source": ["obj-14", 0]
        }
      },
      {"patchline": {"destination": ["obj-8", 0], "source": ["obj-14", 1]}},
      {"patchline": {"destination": ["obj-21", 0], "source": ["obj-15", 0]}},
      {"patchline": {"destination": ["obj-60", 0], "source": ["obj-151", 1]}},
      {"patchline": {"destination": ["obj-8", 0], "source": ["obj-16", 0]}},
      {
        "patchline": {
          "destination": ["obj-15", 0],
          "order": 0,
          "source": ["obj-17", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-198", 0],
          "order": 1,
          "source": ["obj-17", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-19", 0],
          "order": 1,
          "source": ["obj-18", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-33", 0],
          "order": 0,
          "source": ["obj-18", 0]
        }
      },
      {"patchline": {"destination": ["obj-13", 0], "source": ["obj-19", 0]}},
      {"patchline": {"destination": ["obj-3", 0], "source": ["obj-196", 0]}},
      {"patchline": {"destination": ["obj-196", 0], "source": ["obj-198", 0]}},
      {"patchline": {"destination": ["obj-18", 0], "source": ["obj-21", 2]}},
      {"patchline": {"destination": ["obj-22", 0], "source": ["obj-21", 1]}},
      {"patchline": {"destination": ["obj-3", 0], "source": ["obj-21", 0]}},
      {"patchline": {"destination": ["obj-27", 0], "source": ["obj-23", 1]}},
      {"patchline": {"destination": ["obj-44", 0], "source": ["obj-25", 0]}},
      {"patchline": {"destination": ["obj-28", 0], "source": ["obj-26", 0]}},
      {
        "patchline": {
          "destination": ["obj-26", 0],
          "order": 1,
          "source": ["obj-27", 1]
        }
      },
      {"patchline": {"destination": ["obj-30", 0], "source": ["obj-27", 0]}},
      {
        "patchline": {
          "destination": ["obj-31", 0],
          "order": 0,
          "source": ["obj-27", 1]
        }
      },
      {"patchline": {"destination": ["obj-21", 0], "source": ["obj-28", 0]}},
      {"patchline": {"destination": ["obj-5", 0], "source": ["obj-3", 1]}},
      {"patchline": {"destination": ["obj-21", 0], "source": ["obj-30", 0]}},
      {"patchline": {"destination": ["obj-21", 0], "source": ["obj-31", 0]}},
      {"patchline": {"destination": ["obj-25", 0], "source": ["obj-33", 1]}},
      {"patchline": {"destination": ["obj-42", 0], "source": ["obj-33", 0]}},
      {"patchline": {"destination": ["obj-32", 0], "source": ["obj-34", 0]}},
      {"patchline": {"destination": ["obj-36", 0], "source": ["obj-35", 0]}},
      {
        "patchline": {
          "destination": ["obj-198", 0],
          "order": 0,
          "source": ["obj-36", 1]
        }
      },
      {
        "patchline": {
          "destination": ["obj-37", 0],
          "order": 1,
          "source": ["obj-36", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-38", 0],
          "order": 1,
          "source": ["obj-36", 1]
        }
      },
      {
        "patchline": {
          "destination": ["obj-39", 0],
          "order": 0,
          "source": ["obj-36", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-12", 0],
          "order": 1,
          "source": ["obj-37", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-13", 0],
          "order": 0,
          "source": ["obj-37", 0]
        }
      },
      {"patchline": {"destination": ["obj-21", 0], "source": ["obj-38", 0]}},
      {"patchline": {"destination": ["obj-23", 0], "source": ["obj-39", 0]}},
      {"patchline": {"destination": ["obj-29", 0], "source": ["obj-40", 0]}},
      {"patchline": {"destination": ["obj-20", 0], "source": ["obj-41", 0]}},
      {
        "patchline": {
          "destination": ["obj-41", 0],
          "order": 0,
          "source": ["obj-42", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-43", 0],
          "order": 1,
          "source": ["obj-42", 0]
        }
      },
      {"patchline": {"destination": ["obj-40", 0], "source": ["obj-43", 0]}},
      {
        "patchline": {
          "destination": ["obj-16", 0],
          "order": 1,
          "source": ["obj-44", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-41", 0],
          "order": 0,
          "source": ["obj-44", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-43", 0],
          "order": 2,
          "source": ["obj-44", 0]
        }
      },
      {"patchline": {"destination": ["obj-33", 0], "source": ["obj-46", 0]}},
      {"patchline": {"destination": ["obj-33", 0], "source": ["obj-47", 0]}},
      {"patchline": {"destination": ["obj-45", 0], "source": ["obj-48", 0]}},
      {"patchline": {"destination": ["obj-50", 0], "source": ["obj-49", 0]}},
      {"patchline": {"destination": ["obj-7", 0], "source": ["obj-5", 0]}},
      {"patchline": {"destination": ["obj-48", 0], "source": ["obj-50", 0]}},
      {"patchline": {"destination": ["obj-21", 0], "source": ["obj-6", 0]}},
      {"patchline": {"destination": ["obj-6", 0], "source": ["obj-60", 0]}},
      {"patchline": {"destination": ["obj-12", 0], "source": ["obj-7", 0]}},
      {"patchline": {"destination": ["obj-21", 0], "source": ["obj-8", 0]}}
    ],
    "parameters": {
      "obj-151": ["Dimensions", "Dimensions", 0],
      "obj-16": ["Enabled", "Enabled", 0],
      "obj-23": ["FPS", "FPS", 0],
      "parameterbanks": {
        "0": {
          "index": 0,
          "name": "",
          "parameters": ["-", "-", "-", "-", "-", "-", "-", "-"]
        }
      },
      "inherited_shortname": 1
    },
    "dependency_cache": [
      {
        "name": "PX World._mad-world.svg",
        "bootpath": "~/Documents/GitHub/px-stream",
        "patcherrelativepath": ".",
        "type": "svg",
        "implicit": 1
      },
      {
        "name": "PX World._stop.svg",
        "bootpath": "~/Documents/GitHub/px-stream",
        "patcherrelativepath": ".",
        "type": "svg",
        "implicit": 1
      }
    ],
    "autosave": 0
  }
}