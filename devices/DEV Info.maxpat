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
    "rect": [133, 71, 574, 508],
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
          "id": "obj-34",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [392, 272, 54, 22],
          "text": "deferlow"
        }
      },
      {
        "box": {
          "id": "obj-18",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [664, 128, 32, 22],
          "text": "gate"
        }
      },
      {
        "box": {
          "id": "obj-24",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [664, 376, 54, 22],
          "text": "r ---reset"
        }
      },
      {
        "box": {
          "id": "obj-13",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [664, 416, 30, 22],
          "text": "set"
        }
      },
      {
        "box": {
          "id": "obj-2",
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
          "patching_rect": [472, 272, 61, 22],
          "text": "p <INFO>"
        }
      },
      {
        "box": {
          "bgmode": 0,
          "border": 0,
          "clickthrough": 0,
          "embed": 1,
          "enablehscroll": 0,
          "enablevscroll": 1,
          "id": "obj-36",
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "maxclass": "bpatcher",
          "numinlets": 1,
          "numoutlets": 0,
          "offset": [0, 0],
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
            "rect": [33, 71, 571, 508],
            "openinpresentation": 1,
            "gridsize": [8, 8],
            "gridsnaponopen": 2,
            "integercoordinates": 1,
            "boxes": [
              {
                "box": {
                  "fontname": "Cascadia Code",
                  "id": "obj-2",
                  "maxclass": "live.comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [0, 64, 192, 18],
                  "presentation": 1,
                  "presentation_rect": [0, 0, 256, 18],
                  "textjustification": 0
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-35",
                  "index": 1,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [0, 0, 30, 30]
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "destination": ["obj-2", 0],
                  "source": ["obj-35", 0]
                }
              }
            ]
          },
          "patching_rect": [872, 408, 128, 128],
          "presentation": 1,
          "presentation_rect": [0, 20, 256, 149],
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "appearance": 1,
          "id": "obj-28",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "parameter_enable": 1,
          "patching_rect": [752, 16, 44, 15],
          "presentation": 1,
          "presentation_rect": [2, 4, 44, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_enum": ["val1", "val2"],
              "parameter_initial": [1],
              "parameter_initial_enable": 1,
              "parameter_longname": "Auto",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "Auto",
              "parameter_type": 2,
              "parameter_info": "Automatically update texture info",
              "parameter_annotation_name": "Auto"
            }
          },
          "text": "Auto",
          "texton": "Auto",
          "varname": "live.text",
          "annotation": "Automatically update texture info",
          "annotation_name": "Auto"
        }
      },
      {
        "box": {
          "id": "obj-19",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["bang", ""],
          "patching_rect": [1032, 208, 30, 22],
          "text": "t b l"
        }
      },
      {
        "box": {
          "id": "obj-14",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [600, 48, 133, 22],
          "text": "routepass jit_gl_texture"
        }
      },
      {
        "box": {
          "id": "obj-8",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [792, 304, 57, 22],
          "text": "tosymbol"
        }
      },
      {
        "box": {
          "id": "obj-31",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["bang", ""],
          "patching_rect": [664, 344, 30, 22],
          "text": "t b l"
        }
      },
      {
        "box": {
          "id": "obj-29",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["bang", ""],
          "patching_rect": [776, 248, 30, 22],
          "text": "t b l"
        }
      },
      {
        "box": {
          "id": "obj-26",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["bang"],
          "patching_rect": [752, 48, 69, 22],
          "text": "qmetro 500"
        }
      },
      {
        "box": {
          "id": "obj-23",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1016, 336, 96, 22],
          "text": "prepend append"
        }
      },
      {
        "box": {
          "id": "obj-22",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1016, 264, 30, 22],
          "text": "13"
        }
      },
      {
        "box": {
          "id": "obj-21",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1016, 304, 94, 22],
          "text": "string.frombytes"
        }
      },
      {
        "box": {
          "id": "obj-16",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [752, 120, 60, 22],
          "text": "zl.change"
        }
      },
      {
        "box": {
          "id": "obj-7",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": ["bang"],
          "patching_rect": [136, 120, 58, 22],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "id": "obj-5",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [792, 352, 96, 22],
          "text": "prepend append"
        }
      },
      {
        "box": {
          "id": "obj-3",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 4,
          "outlettype": ["", "", "", "bang"],
          "patching_rect": [664, 184, 232, 22],
          "text": "t l l l b"
        }
      },
      {
        "box": {
          "filename": "jitgltextureinfo.js",
          "id": "obj-1",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [664, 264, 89, 22],
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
          "bgmode": 0,
          "border": 0,
          "clickthrough": 0,
          "enablehscroll": 0,
          "enablevscroll": 0,
          "id": "obj-42",
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "maxclass": "bpatcher",
          "name": "PX._channel.maxpat",
          "numinlets": 5,
          "numoutlets": 6,
          "offset": [0, 0],
          "outlettype": ["int", "bang", "", "", "", ""],
          "patching_rect": [136, 216, 240, 30],
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "id": "obj-6",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [8, 312, 82, 22],
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
          "patching_rect": [8, 72, 24, 24]
        }
      },
      {
        "box": {
          "id": "obj-15",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [8, 120, 56, 22],
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
          "patching_rect": [272, 136, 80, 22],
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
          "patching_rect": [392, 216, 240, 32],
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
          "patching_rect": [136, 168, 31, 22],
          "text": "int 8"
        }
      },
      {
        "box": {
          "id": "obj-9",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["bang", "int", "int"],
          "patching_rect": [8, 264, 100, 22],
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
          "patching_rect": [8, 168, 62, 22],
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
          "patching_rect": [8, 216, 62, 22],
          "text": "plugout~"
        }
      },
      {
        "box": {
          "id": "obj-4",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [912, 248, 30, 22],
          "text": "set"
        }
      },
      {
        "box": {
          "id": "obj-25",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [752, 80, 44, 22],
          "text": "zlreset"
        }
      },
      {
        "box": {
          "angle": 270,
          "bgcolor": [
            0.079348079365577,
            0.07934804057877,
            0.079348050547289,
            1
          ],
          "border": 1,
          "bordercolor": [
            0.079348079365577,
            0.07934804057877,
            0.079348050547289,
            1
          ],
          "id": "obj-27",
          "maxclass": "panel",
          "mode": 0,
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [1008, 408, 128, 128],
          "presentation": 1,
          "presentation_rect": [0, 22, 256, 147],
          "proportion": 0.39,
          "rounded": 0,
          "saved_attribute_attributes": {
            "bgfillcolor": {"expression": "themecolor.live_meter_bg"},
            "bordercolor": {"expression": "themecolor.live_meter_bg"}
          }
        }
      },
      {
        "box": {
          "bgcolor": [
            0.279471418544607,
            0.279471350143365,
            0.279471368104493,
            1
          ],
          "blinkcolor": [
            0.972549019607843,
            0.462745098039216,
            0.501960784313725,
            1
          ],
          "id": "obj-20",
          "ignoreclick": 1,
          "maxclass": "button",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": ["bang"],
          "outlinecolor": [
            0.279471418544607,
            0.279471350143365,
            0.279471368104493,
            1
          ],
          "parameter_enable": 0,
          "patching_rect": [392, 312, 24, 24],
          "presentation": 1,
          "presentation_rect": [235, 0, 24, 24],
          "saved_attribute_attributes": {
            "bgcolor": {"expression": "themecolor.live_surface_bg"},
            "blinkcolor": {"expression": "themecolor.live_display_handle_two"},
            "outlinecolor": {"expression": "themecolor.live_surface_bg"}
          }
        }
      }
    ],
    "lines": [
      {"patchline": {"destination": ["obj-31", 0], "source": ["obj-1", 0]}},
      {"patchline": {"destination": ["obj-10", 1], "source": ["obj-11", 1]}},
      {"patchline": {"destination": ["obj-10", 0], "source": ["obj-11", 0]}},
      {
        "patchline": {
          "destination": ["obj-2", 0],
          "order": 0,
          "source": ["obj-12", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-34", 0],
          "order": 1,
          "source": ["obj-12", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-42", 3],
          "order": 2,
          "source": ["obj-12", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-42", 2],
          "order": 3,
          "source": ["obj-12", 0]
        }
      },
      {"patchline": {"destination": ["obj-36", 0], "source": ["obj-13", 0]}},
      {"patchline": {"destination": ["obj-16", 0], "source": ["obj-14", 0]}},
      {"patchline": {"destination": ["obj-19", 0], "source": ["obj-14", 1]}},
      {"patchline": {"destination": ["obj-18", 1], "source": ["obj-16", 0]}},
      {"patchline": {"destination": ["obj-15", 0], "source": ["obj-17", 0]}},
      {"patchline": {"destination": ["obj-3", 0], "source": ["obj-18", 0]}},
      {"patchline": {"destination": ["obj-22", 0], "source": ["obj-19", 0]}},
      {"patchline": {"destination": ["obj-8", 0], "source": ["obj-19", 1]}},
      {"patchline": {"destination": ["obj-23", 0], "source": ["obj-21", 0]}},
      {"patchline": {"destination": ["obj-21", 0], "source": ["obj-22", 0]}},
      {"patchline": {"destination": ["obj-36", 0], "source": ["obj-23", 0]}},
      {"patchline": {"destination": ["obj-13", 0], "source": ["obj-24", 0]}},
      {"patchline": {"destination": ["obj-16", 0], "source": ["obj-25", 0]}},
      {"patchline": {"destination": ["obj-25", 0], "source": ["obj-26", 0]}},
      {
        "patchline": {
          "destination": ["obj-18", 0],
          "order": 1,
          "source": ["obj-28", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-26", 0],
          "order": 0,
          "source": ["obj-28", 0]
        }
      },
      {"patchline": {"destination": ["obj-22", 0], "source": ["obj-29", 0]}},
      {"patchline": {"destination": ["obj-8", 0], "source": ["obj-29", 1]}},
      {"patchline": {"destination": ["obj-1", 0], "source": ["obj-3", 1]}},
      {"patchline": {"destination": ["obj-29", 0], "source": ["obj-3", 2]}},
      {"patchline": {"destination": ["obj-4", 0], "source": ["obj-3", 3]}},
      {"patchline": {"destination": ["obj-12", 1], "source": ["obj-309", 0]}},
      {"patchline": {"destination": ["obj-22", 0], "source": ["obj-31", 0]}},
      {"patchline": {"destination": ["obj-8", 0], "source": ["obj-31", 1]}},
      {
        "patchline": {
          "destination": ["obj-14", 0],
          "order": 0,
          "source": ["obj-34", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-20", 0],
          "order": 1,
          "source": ["obj-34", 0]
        }
      },
      {"patchline": {"destination": ["obj-42", 0], "source": ["obj-376", 0]}},
      {"patchline": {"destination": ["obj-36", 0], "source": ["obj-4", 0]}},
      {"patchline": {"destination": ["obj-12", 0], "source": ["obj-42", 4]}},
      {"patchline": {"destination": ["obj-36", 0], "source": ["obj-5", 0]}},
      {"patchline": {"destination": ["obj-376", 0], "source": ["obj-7", 0]}},
      {"patchline": {"destination": ["obj-5", 0], "source": ["obj-8", 0]}},
      {"patchline": {"destination": ["obj-6", 0], "source": ["obj-9", 0]}}
    ],
    "parameters": {
      "obj-28": ["live.text", "live.text", 0],
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
        "name": "jitgltextureinfo.js",
        "bootpath": "C74:/packages/Jitter Tools/javascript",
        "type": "TEXT",
        "implicit": 1
      }
    ],
    "autosave": 0
  }
}