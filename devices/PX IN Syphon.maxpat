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
    "rect": [33, 80, 467, 423],
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
          "id": "obj-29",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [472, 808, 22, 22],
          "text": "t 1"
        }
      },
      {
        "box": {
          "id": "obj-28",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [440, 808, 22, 22],
          "text": "t 0"
        }
      },
      {
        "box": {
          "id": "obj-24",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [440, 856, 57, 22],
          "text": "s ---open"
        }
      },
      {
        "box": {
          "id": "obj-23",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [80, 296, 55, 22],
          "text": "r ---open"
        }
      },
      {
        "box": {
          "id": "obj-20",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [80, 344, 32, 22],
          "text": "gate"
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
          "patching_rect": [200, 368, 24, 24],
          "presentation": 1,
          "presentation_rect": [52, 69, 24, 24],
          "saved_attribute_attributes": {
            "blinkcolor": {"expression": "themecolor.live_display_handle_two"}
          }
        }
      },
      {
        "box": {
          "id": "obj-19",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": ["bang"],
          "patching_rect": [248, 128, 22, 22],
          "text": "t b"
        }
      },
      {
        "box": {
          "id": "obj-50",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [848, 408, 60, 22],
          "text": "zl.change"
        }
      },
      {
        "box": {
          "id": "obj-39",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [848, 360, 59, 22],
          "text": "route dim"
        }
      },
      {
        "box": {
          "id": "obj-27",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [848, 264, 30, 22],
          "text": "t l l"
        }
      },
      {
        "box": {
          "filename": "jitgltextureinfo.js",
          "id": "obj-26",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [848, 312, 89, 22],
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
          "id": "obj-16",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [864, 200, 76, 22],
          "text": "s ---px_bang"
        }
      },
      {
        "box": {
          "id": "obj-14",
          "maxclass": "fpic",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": ["jit_matrix"],
          "patching_rect": [384, 8, 100, 50],
          "pic": "PX._syphon.svg",
          "presentation": 1,
          "presentation_rect": [8, 49, 112, 64]
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
          "patching_rect": [312, 168, 32, 32],
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
          "allowdrag": 0,
          "blanksym": "",
          "id": "obj-40",
          "items": "<separator>",
          "maxclass": "umenu",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["int", "", ""],
          "parameter_enable": 0,
          "patching_rect": [432, 656, 142, 20],
          "presentation": 1,
          "presentation_rect": [2, -1, 126, 20],
          "saved_attribute_attributes": {
            "textcolor": {"expression": "themecolor.live_control_fg"}
          },
          "style": "umenu.live",
          "textcolor": [0.85, 0.85, 0.85, 1]
        }
      },
      {
        "box": {
          "angle": 270,
          "bgcolor": [0.235, 0.235, 0.235, 1],
          "border": 1,
          "bordercolor": [
            0.09782765023003,
            0.097827613875914,
            0.09782762332443,
            1
          ],
          "id": "obj-4",
          "maxclass": "panel",
          "mode": 0,
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [424, 648, 160, 40],
          "presentation": 1,
          "presentation_rect": [2, 3, 126, 13],
          "proportion": 0.39,
          "rounded": 0,
          "saved_attribute_attributes": {
            "bgfillcolor": {"expression": "themecolor.live_control_text_bg"},
            "bordercolor": {"expression": "themecolor.live_contrast_frame"}
          },
          "style": "umenu.panel.live"
        }
      },
      {
        "box": {
          "id": "obj-37",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [112, 184, 80, 22],
          "text": "r ---this_bang"
        }
      },
      {
        "box": {
          "id": "obj-34",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [496, 752, 30, 22],
          "text": "- 1"
        }
      },
      {
        "box": {
          "id": "obj-30",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [328, 760, 75, 22],
          "text": "$1 $2, $3 $4"
        }
      },
      {
        "box": {
          "id": "obj-25",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["bang", ""],
          "patching_rect": [440, 704, 104, 22],
          "text": "select 0"
        }
      },
      {
        "box": {
          "id": "obj-22",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [520, 560, 96, 22],
          "text": "prepend append"
        }
      },
      {
        "box": {
          "id": "obj-21",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [504, 520, 57, 22],
          "text": "tosymbol"
        }
      },
      {
        "box": {
          "id": "obj-13",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "bang"],
          "patching_rect": [272, 536, 30, 22],
          "text": "t l b"
        }
      },
      {
        "box": {
          "id": "obj-7",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [200, 600, 39, 22],
          "text": "zl.join"
        }
      },
      {
        "box": {
          "id": "obj-3",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 4,
          "outlettype": ["", "", "", ""],
          "patching_rect": [312, 688, 100, 22],
          "saved_object_attributes": {"embed": 0, "precision": 6},
          "text": "coll ---px_syphon"
        }
      },
      {
        "box": {
          "id": "obj-2",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [80, 232, 74, 22],
          "text": "r ---px_bang"
        }
      },
      {
        "box": {
          "id": "obj-31",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
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
            "rect": [133, 71, 585, 508],
            "gridsize": [8, 8],
            "gridsnaponopen": 2,
            "integercoordinates": 1,
            "boxes": [
              {
                "box": {
                  "id": "obj-3",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": ["bang"],
                  "patching_rect": [136, 88, 58, 22],
                  "text": "loadbang"
                }
              },
              {
                "box": {
                  "id": "obj-2",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "patching_rect": [80, 192, 38, 22],
                  "text": "zl.reg"
                }
              },
              {
                "box": {
                  "id": "obj-1",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [248, 312, 71, 22],
                  "text": "s px_debug"
                }
              },
              {
                "box": {
                  "id": "obj-18",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "patching_rect": [128, 248, 39, 22],
                  "text": "zl.join"
                }
              },
              {
                "box": {
                  "id": "obj-17",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": ["", "bang", ""],
                  "patching_rect": [48, 104, 40, 22],
                  "text": "t l b l"
                }
              },
              {
                "box": {
                  "id": "obj-13",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "patching_rect": [136, 136, 72, 22],
                  "text": "patcherargs"
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-4",
                  "index": 1,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [48, 40, 30, 30]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-5",
                  "index": 1,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [48, 304, 30, 30]
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "destination": ["obj-2", 1],
                  "source": ["obj-13", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-18", 1],
                  "source": ["obj-17", 2]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-2", 0],
                  "source": ["obj-17", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-5", 0],
                  "source": ["obj-17", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-1", 0],
                  "source": ["obj-18", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-18", 0],
                  "source": ["obj-2", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-13", 0],
                  "source": ["obj-3", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-17", 0],
                  "source": ["obj-4", 0]
                }
              }
            ]
          },
          "patching_rect": [392, 336, 102, 22],
          "text": "p <SYPHON_IN>"
        }
      },
      {
        "box": {
          "id": "obj-1",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [424, 448, 54, 22],
          "text": "r ---reset"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12,
          "id": "obj-41",
          "maxclass": "newobj",
          "numinlets": 4,
          "numoutlets": 4,
          "outlettype": ["", "", "", ""],
          "patching_rect": [200, 496, 185, 22],
          "text": "route appname servername clear"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12,
          "id": "obj-18",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [192, 232, 114, 22],
          "text": "getavailableservers"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12,
          "id": "obj-45",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["jit_gl_texture", ""],
          "patching_rect": [200, 288, 157, 22],
          "text": "jit.gl.syphonclient px-stream"
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
          "patching_rect": [760, 144, 239, 32],
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "id": "obj-6",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [216, 160, 82, 22],
          "text": "s ---this_bang"
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
          "patching_rect": [8, 8, 351, 47],
          "saved_attribute_attributes": {
            "textcolor": {"expression": "themecolor.live_control_fg"}
          },
          "text": "PX Stream by darosh\nhttps://github.com/darosh/px-stream"
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
          "patching_rect": [128, 80, 24, 24]
        }
      },
      {
        "box": {
          "id": "obj-15",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [128, 128, 56, 22],
          "text": "s ---reset"
        }
      },
      {
        "box": {
          "id": "obj-309",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1088, 104, 80, 22],
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
          "id": "obj-12",
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "maxclass": "bpatcher",
          "name": "PX._chain.maxpat",
          "numinlets": 3,
          "numoutlets": 4,
          "offset": [0, 0],
          "outlettype": ["", "", "", ""],
          "patching_rect": [1008, 144, 240, 32],
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
          "patching_rect": [760, 40, 31, 22],
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
          "patching_rect": [760, 8, 54, 22],
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
          "patching_rect": [760, 104, 100, 20],
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
          "id": "obj-9",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["bang", "int", "int"],
          "patching_rect": [216, 80, 100, 22],
          "text": "live.thisdevice"
        }
      },
      {
        "box": {
          "id": "obj-11",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["signal", "signal"],
          "patching_rect": [8, 80, 62, 22],
          "text": "plugin~"
        }
      },
      {
        "box": {
          "id": "obj-10",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["signal", "signal"],
          "patching_rect": [8, 128, 62, 22],
          "text": "plugout~"
        }
      },
      {
        "box": {
          "id": "obj-5",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [360, 560, 149, 22],
          "text": "clear, append <separator>"
        }
      },
      {
        "box": {
          "id": "obj-8",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [184, 648, 202, 22],
          "text": "append appname $1 servername $2"
        }
      }
    ],
    "lines": [
      {"patchline": {"destination": ["obj-5", 0], "source": ["obj-1", 0]}},
      {"patchline": {"destination": ["obj-10", 1], "source": ["obj-11", 1]}},
      {"patchline": {"destination": ["obj-10", 0], "source": ["obj-11", 0]}},
      {"patchline": {"destination": ["obj-85", 2], "source": ["obj-12", 0]}},
      {"patchline": {"destination": ["obj-7", 1], "source": ["obj-13", 0]}},
      {"patchline": {"destination": ["obj-15", 0], "source": ["obj-17", 0]}},
      {"patchline": {"destination": ["obj-45", 0], "source": ["obj-18", 0]}},
      {"patchline": {"destination": ["obj-6", 0], "source": ["obj-19", 0]}},
      {"patchline": {"destination": ["obj-20", 1], "source": ["obj-2", 0]}},
      {"patchline": {"destination": ["obj-45", 0], "source": ["obj-20", 0]}},
      {"patchline": {"destination": ["obj-22", 0], "source": ["obj-21", 0]}},
      {"patchline": {"destination": ["obj-40", 0], "source": ["obj-22", 0]}},
      {"patchline": {"destination": ["obj-20", 0], "source": ["obj-23", 0]}},
      {"patchline": {"destination": ["obj-28", 0], "source": ["obj-25", 0]}},
      {
        "patchline": {
          "destination": ["obj-29", 0],
          "order": 1,
          "source": ["obj-25", 1]
        }
      },
      {
        "patchline": {
          "destination": ["obj-34", 0],
          "order": 0,
          "source": ["obj-25", 1]
        }
      },
      {"patchline": {"destination": ["obj-39", 0], "source": ["obj-26", 0]}},
      {"patchline": {"destination": ["obj-26", 0], "source": ["obj-27", 1]}},
      {"patchline": {"destination": ["obj-85", 3], "source": ["obj-27", 0]}},
      {"patchline": {"destination": ["obj-24", 0], "source": ["obj-28", 0]}},
      {"patchline": {"destination": ["obj-24", 0], "source": ["obj-29", 0]}},
      {"patchline": {"destination": ["obj-30", 0], "source": ["obj-3", 0]}},
      {"patchline": {"destination": ["obj-45", 0], "source": ["obj-30", 0]}},
      {"patchline": {"destination": ["obj-12", 1], "source": ["obj-309", 0]}},
      {"patchline": {"destination": ["obj-3", 0], "source": ["obj-34", 0]}},
      {"patchline": {"destination": ["obj-18", 0], "source": ["obj-362", 0]}},
      {"patchline": {"destination": ["obj-85", 0], "source": ["obj-366", 0]}},
      {"patchline": {"destination": ["obj-18", 0], "source": ["obj-37", 0]}},
      {"patchline": {"destination": ["obj-376", 0], "source": ["obj-372", 0]}},
      {"patchline": {"destination": ["obj-366", 0], "source": ["obj-376", 0]}},
      {"patchline": {"destination": ["obj-50", 0], "source": ["obj-39", 0]}},
      {"patchline": {"destination": ["obj-25", 0], "source": ["obj-40", 0]}},
      {"patchline": {"destination": ["obj-13", 0], "source": ["obj-41", 1]}},
      {"patchline": {"destination": ["obj-5", 0], "source": ["obj-41", 2]}},
      {"patchline": {"destination": ["obj-7", 0], "source": ["obj-41", 0]}},
      {
        "patchline": {
          "destination": ["obj-27", 0],
          "order": 0,
          "source": ["obj-45", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-31", 0],
          "order": 0,
          "source": ["obj-45", 1]
        }
      },
      {
        "patchline": {
          "destination": ["obj-41", 0],
          "order": 1,
          "source": ["obj-45", 1]
        }
      },
      {
        "patchline": {
          "destination": ["obj-43", 0],
          "order": 1,
          "source": ["obj-45", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-3", 0],
          "order": 1,
          "source": ["obj-5", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-40", 0],
          "order": 0,
          "source": ["obj-5", 0]
        }
      },
      {"patchline": {"destination": ["obj-85", 4], "source": ["obj-50", 0]}},
      {
        "patchline": {
          "destination": ["obj-21", 0],
          "order": 0,
          "source": ["obj-7", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-8", 0],
          "order": 1,
          "source": ["obj-7", 0]
        }
      },
      {"patchline": {"destination": ["obj-3", 0], "source": ["obj-8", 0]}},
      {"patchline": {"destination": ["obj-12", 0], "source": ["obj-85", 4]}},
      {"patchline": {"destination": ["obj-16", 0], "source": ["obj-85", 3]}},
      {"patchline": {"destination": ["obj-366", 0], "source": ["obj-85", 2]}},
      {"patchline": {"destination": ["obj-19", 0], "source": ["obj-9", 1]}}
    ],
    "parameters": {
      "obj-362": ["Reload", "Reload", 0],
      "obj-366": ["Channel", "Channel", 0],
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
        "name": "PX._syphon.svg",
        "bootpath": "~/Documents/GitHub/px-stream/devices",
        "patcherrelativepath": ".",
        "type": "svg",
        "implicit": 1
      },
      {"name": "jit.gl.syphonclient.mxo", "type": "iLaX"},
      {
        "name": "jitgltextureinfo.js",
        "bootpath": "C74:/packages/Jitter Tools/javascript",
        "type": "TEXT",
        "implicit": 1
      }
    ],
    "autosave": 0,
    "styles": [
      {
        "name": "umenu.live",
        "default": {
          "bgfillcolor": {
            "angle": 270,
            "autogradient": 0,
            "color": [
              0.074509803921569,
              0.074509803921569,
              0.074509803921569,
              0
            ],
            "color1": [0.376471, 0.384314, 0.4, 1],
            "color2": [0.290196, 0.309804, 0.301961, 1],
            "proportion": 0.39,
            "type": "color"
          },
          "color": [0.690196078431373, 0.866666666666667, 0.92156862745098, 1],
          "elementcolor": [
            0.56078431372549,
            0.56078431372549,
            0.56078431372549,
            1
          ],
          "fontname": ["Ableton Sans Medium Regular"],
          "fontsize": [9.5]
        },
        "parentstyle": "",
        "multi": 0
      },
      {
        "name": "umenu.panel.live",
        "default": {
          "bgfillcolor": {
            "angle": 0,
            "color": [
              0.188235294117647,
              0.188235294117647,
              0.188235294117647,
              1
            ],
            "color1": [
              0.218158140677074,
              0.218158080844553,
              0.218158096479747,
              1
            ],
            "color2": [
              0.218158140677074,
              0.218158080844553,
              0.218158096479747,
              1
            ],
            "dynamiccolor": [
              0.156862745098039,
              0.156862745098039,
              0.156862745098039,
              1,
              "live_control_bg",
              1,
              0.156862745098039,
              0.156862745098039,
              0.156862745098039,
              1,
              "Control Off",
              -1
            ],
            "proportion": 0.39,
            "type": "color"
          },
          "color": [0.090196078431373, 0.090196078431373, 0.090196078431373, 1]
        },
        "parentstyle": "",
        "multi": 0
      }
    ]
  }
}