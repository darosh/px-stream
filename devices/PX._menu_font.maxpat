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
    "rect": [33, 71, 877, 508],
    "openrect": [0, 0, 98, 19],
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
          "id": "obj-20",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [304, 512, 57, 22],
          "text": "tosymbol"
        }
      },
      {
        "box": {
          "id": "obj-192",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [304, 464, 100, 22],
          "text": "string.replace .txt"
        }
      },
      {
        "box": {
          "comment": "extension",
          "id": "obj-14",
          "index": 0,
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [608, 40, 30, 30]
        }
      },
      {
        "box": {
          "comment": "selected",
          "id": "obj-2",
          "index": 0,
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [736, 504, 30, 30]
        }
      },
      {
        "box": {
          "id": "obj-24",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [120, 144, 52, 22],
          "text": "route int"
        }
      },
      {
        "box": {
          "comment": "reset",
          "id": "obj-13",
          "index": 0,
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [440, 40, 30, 30]
        }
      },
      {
        "box": {
          "id": "obj-9",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [552, 952, 77, 22],
          "text": "s ---menu_to"
        }
      },
      {
        "box": {
          "id": "obj-8",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [120, 888, 77, 22],
          "text": "s ---menu_to"
        }
      },
      {
        "box": {
          "id": "obj-3",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [648, 248, 75, 22],
          "text": "r ---menu_to"
        }
      },
      {
        "box": {
          "comment": "clear, append, int",
          "id": "obj-1",
          "index": 0,
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [120, 40, 30, 30]
        }
      },
      {
        "box": {
          "id": "obj-102",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [120, 816, 179, 22],
          "text": "expr min(floor($f1 * $f2)\\, $f2 - 1)"
        }
      },
      {
        "box": {
          "id": "obj-100",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [304, 720, 71, 22],
          "text": "array.length"
        }
      },
      {
        "box": {
          "id": "obj-99",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [552, 424, 32, 22],
          "text": "gate"
        }
      },
      {
        "box": {
          "id": "obj-103",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 4,
          "outlettype": ["int", "int", "int", "int"],
          "patching_rect": [120, 192, 51, 22],
          "text": "t i 1 i 0"
        }
      },
      {
        "box": {
          "activebgcolor": [
            0.235294117647059,
            0.235294117647059,
            0.235294117647059,
            0
          ],
          "bordercolor": [
            0.098039215686275,
            0.098039215686275,
            0.098039215686275,
            0
          ],
          "focusbordercolor": [
            0.447058823529412,
            0.447058823529412,
            0.447058823529412,
            0
          ],
          "id": "obj-6",
          "ignoreclick": 1,
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [144, 520, 44, 15],
          "presentation": 1,
          "presentation_rect": [2, 2, 126, 15],
          "saved_attribute_attributes": {
            "activebgcolor": {"expression": ""},
            "bordercolor": {"expression": ""},
            "focusbordercolor": {"expression": ""},
            "textcolor": {"expression": ""},
            "valueof": {
              "parameter_longname": "Font Automation",
              "parameter_mmax": 1,
              "parameter_modmode": 3,
              "parameter_shortname": "Font",
              "parameter_steps": 1001,
              "parameter_type": 0,
              "parameter_unitstyle": 1,
              "parameter_info": "Selected font",
              "parameter_annotation_name": "Font"
            }
          },
          "textcolor": [
            0.850980392156863,
            0.850980392156863,
            0.850980392156863,
            0
          ],
          "varname": "Font",
          "annotation": "Selected font",
          "annotation_name": "Font"
        }
      },
      {
        "box": {
          "id": "obj-90",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 3,
          "outlettype": ["", "", ""],
          "patching_rect": [552, 360, 107, 22],
          "text": "route Loading... \" \""
        }
      },
      {
        "box": {
          "id": "obj-473",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [440, 248, 178, 22],
          "text": "_parameter_range Loading... \" \""
        }
      },
      {
        "box": {
          "id": "obj-76",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["", "", "float"],
          "parameter_enable": 1,
          "patching_rect": [552, 320, 100, 15],
          "presentation": 1,
          "presentation_rect": [2, 2, 94, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_enum": ["Loading...", " "],
              "parameter_invisible": 2,
              "parameter_longname": "Font",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "Font",
              "parameter_type": 2,
              "parameter_info": "Selected font",
              "parameter_annotation_name": "Font"
            }
          },
          "varname": "live.menu",
          "annotation": "Selected font",
          "annotation_name": "Font"
        }
      },
      {
        "box": {
          "id": "obj-296",
          "maxclass": "newobj",
          "numinlets": 2,
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
            "rect": [133, 71, 480, 508],
            "gridsize": [8, 8],
            "gridsnaponopen": 2,
            "integercoordinates": 1,
            "boxes": [
              {
                "box": {
                  "id": "obj-20",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [160.0, 208, 57, 22],
                  "text": "tosymbol"
                }
              },
              {
                "box": {
                  "id": "obj-21",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "patching_rect": [272, 928, 136, 22],
                  "text": "zl.reg @zlmaxsize 1000"
                }
              },
              {
                "box": {
                  "id": "obj-19",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "patching_rect": [272, 976, 54, 22],
                  "text": "zl.join \" \""
                }
              },
              {
                "box": {
                  "id": "obj-18",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "patching_rect": [40, 672, 30, 22],
                  "text": "t l l"
                }
              },
              {
                "box": {
                  "id": "obj-17",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "patching_rect": [40, 928, 136, 22],
                  "text": "zl.reg @zlmaxsize 1000"
                }
              },
              {
                "box": {
                  "id": "obj-16",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 3,
                  "outlettype": ["bang", "bang", ""],
                  "patching_rect": [40, 856, 60, 22],
                  "text": "select 0 1"
                }
              },
              {
                "box": {
                  "id": "obj-11",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [40, 800, 78, 22],
                  "text": "< 2"
                }
              },
              {
                "box": {
                  "id": "obj-9",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "patching_rect": [40, 736, 37, 22],
                  "text": "zl.len"
                }
              },
              {
                "box": {
                  "comment": "replace",
                  "id": "obj-15",
                  "index": 2,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [200.0, 40, 30, 30]
                }
              },
              {
                "box": {
                  "id": "obj-13",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [160.0, 312, 49, 22],
                  "text": "append"
                }
              },
              {
                "box": {
                  "id": "obj-14",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": ["bang"],
                  "patching_rect": [272.0, 528, 22, 22],
                  "text": "t b"
                }
              },
              {
                "box": {
                  "id": "obj-8",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [40, 1024, 155, 22],
                  "text": "prepend _parameter_range"
                }
              },
              {
                "box": {
                  "id": "obj-6",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "patching_rect": [40, 600, 179, 22],
                  "text": "zl.group 1000 @zlmaxsize 1000"
                }
              },
              {
                "box": {
                  "id": "obj-5",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 3,
                  "outlettype": ["", "", ""],
                  "patching_rect": [40, 464, 109, 22],
                  "text": "route clear append"
                }
              },
              {
                "box": {
                  "id": "obj-2",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [40, 160, 35, 22],
                  "text": "clear"
                }
              },
              {
                "box": {
                  "id": "obj-1",
                  "maxclass": "newobj",
                  "numinlets": 4,
                  "numoutlets": 4,
                  "outlettype": ["", "", "", ""],
                  "patching_rect": [40, 104, 368, 22],
                  "text": "route clear append int"
                }
              },
              {
                "box": {
                  "id": "obj-198",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["bang", ""],
                  "patching_rect": [160.0, 264, 31, 22],
                  "text": "t b s"
                }
              },
              {
                "box": {
                  "id": "obj-196",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [160.0, 368, 53, 22],
                  "text": "pack s s"
                }
              },
              {
                "box": {
                  "id": "obj-192",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [160.0, 160, 100, 22],
                  "text": "string.replace .txt"
                }
              },
              {
                "box": {
                  "comment": "append, clear, int",
                  "id": "obj-294",
                  "index": 1,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [40, 40, 30, 30]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-295",
                  "index": 1,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [40, 1088, 30, 30]
                }
              },
              {
                "box": {
                  "id": "obj-7",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [40, 528, 85, 22],
                  "text": "zlclear, zlreset"
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "destination": ["obj-14", 0],
                  "source": ["obj-1", 2]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-192", 0],
                  "source": ["obj-1", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-2", 0],
                  "source": ["obj-1", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-16", 0],
                  "source": ["obj-11", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-196", 0],
                  "source": ["obj-13", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-6", 0],
                  "source": ["obj-14", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-192", 1],
                  "source": ["obj-15", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-17", 0],
                  "source": ["obj-16", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-21", 0],
                  "source": ["obj-16", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-8", 0],
                  "source": ["obj-17", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-17", 1],
                  "order": 1,
                  "source": ["obj-18", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-21", 1],
                  "order": 0,
                  "source": ["obj-18", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-9", 0],
                  "source": ["obj-18", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-18", 0],
                  "source": ["obj-19", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-20", 0],
                  "source": ["obj-192", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-5", 0],
                  "source": ["obj-196", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-13", 0],
                  "source": ["obj-198", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-196", 1],
                  "source": ["obj-198", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-5", 0],
                  "source": ["obj-2", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-198", 0],
                  "source": ["obj-20", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-19", 0],
                  "source": ["obj-21", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-1", 0],
                  "source": ["obj-294", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-6", 0],
                  "source": ["obj-5", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-7", 0],
                  "source": ["obj-5", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-18", 0],
                  "source": ["obj-6", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-6", 0],
                  "source": ["obj-7", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-295", 0],
                  "source": ["obj-8", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-11", 0],
                  "source": ["obj-9", 0]
                }
              }
            ]
          },
          "patching_rect": [304, 248, 112, 22],
          "text": "p PX._menu_range"
        }
      },
      {
        "box": {
          "id": "obj-7",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [120, 560, 72, 22],
          "text": "gate"
        }
      },
      {
        "box": {
          "id": "obj-25",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [552, 888, 22, 22],
          "text": "t 0"
        }
      },
      {
        "box": {
          "id": "obj-22",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [552, 824, 50, 22],
          "text": "route -1"
        }
      },
      {
        "box": {
          "id": "obj-4",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["", "", ""],
          "patching_rect": [552, 504, 133, 22],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [""],
              "parameter_initial_enable": 1,
              "parameter_invisible": 1,
              "parameter_longname": "FileName",
              "parameter_modmode": 0,
              "parameter_shortname": "FileName",
              "parameter_type": 3
            }
          },
          "saved_object_attributes": {
            "initial": [""],
            "parameter_enable": 1,
            "parameter_mappable": 0
          },
          "text": "pattr FileName @thru 0",
          "varname": "FileName"
        }
      },
      {
        "box": {
          "id": "obj-5",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["int", "int", "bang"],
          "patching_rect": [120, 408, 40, 22],
          "text": "t 1 i b"
        }
      },
      {
        "box": {
          "id": "obj-19",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["bang", ""],
          "patching_rect": [304, 560.0, 31, 22],
          "text": "t b s"
        }
      },
      {
        "box": {
          "id": "obj-16",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 3,
          "outlettype": ["", "", ""],
          "patching_rect": [304, 624.0, 72, 22],
          "saved_object_attributes": {
            "parameter_enable": 0,
            "parameter_mappable": 0
          },
          "text": "array"
        }
      },
      {
        "box": {
          "id": "obj-15",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 3,
          "outlettype": ["", "", ""],
          "patching_rect": [304, 408, 109, 22],
          "text": "route append clear"
        }
      },
      {
        "box": {
          "id": "obj-12",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [304, 672.0, 82, 22],
          "text": "array.insert -1"
        }
      },
      {
        "box": {
          "id": "obj-11",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [552, 760, 77, 22],
          "text": "array.indexof"
        }
      },
      {
        "box": {
          "id": "obj-10",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [384, 560.0, 35, 22],
          "text": "clear"
        }
      }
    ],
    "lines": [
      {"patchline": {"destination": ["obj-24", 0], "source": ["obj-1", 0]}},
      {"patchline": {"destination": ["obj-16", 0], "source": ["obj-10", 0]}},
      {"patchline": {"destination": ["obj-102", 1], "source": ["obj-100", 0]}},
      {"patchline": {"destination": ["obj-8", 0], "source": ["obj-102", 0]}},
      {"patchline": {"destination": ["obj-296", 0], "source": ["obj-103", 2]}},
      {"patchline": {"destination": ["obj-5", 0], "source": ["obj-103", 0]}},
      {"patchline": {"destination": ["obj-99", 0], "source": ["obj-103", 3]}},
      {"patchline": {"destination": ["obj-99", 0], "source": ["obj-103", 1]}},
      {"patchline": {"destination": ["obj-22", 0], "source": ["obj-11", 0]}},
      {
        "patchline": {
          "destination": ["obj-100", 0],
          "order": 2,
          "source": ["obj-12", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-11", 1],
          "order": 0,
          "source": ["obj-12", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-16", 1],
          "order": 1,
          "source": ["obj-12", 0]
        }
      },
      {"patchline": {"destination": ["obj-473", 0], "source": ["obj-13", 0]}},
      {
        "patchline": {
          "destination": ["obj-192", 1],
          "order": 1,
          "source": ["obj-14", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-296", 1],
          "order": 0,
          "source": ["obj-14", 0]
        }
      },
      {"patchline": {"destination": ["obj-10", 0], "source": ["obj-15", 1]}},
      {"patchline": {"destination": ["obj-192", 0], "source": ["obj-15", 0]}},
      {"patchline": {"destination": ["obj-12", 0], "source": ["obj-16", 0]}},
      {"patchline": {"destination": ["obj-12", 1], "source": ["obj-19", 1]}},
      {"patchline": {"destination": ["obj-16", 0], "source": ["obj-19", 0]}},
      {"patchline": {"destination": ["obj-20", 0], "source": ["obj-192", 0]}},
      {"patchline": {"destination": ["obj-19", 0], "source": ["obj-20", 0]}},
      {"patchline": {"destination": ["obj-25", 0], "source": ["obj-22", 0]}},
      {"patchline": {"destination": ["obj-9", 0], "source": ["obj-22", 1]}},
      {"patchline": {"destination": ["obj-103", 0], "source": ["obj-24", 0]}},
      {
        "patchline": {
          "destination": ["obj-15", 0],
          "order": 1,
          "source": ["obj-24", 1]
        }
      },
      {
        "patchline": {
          "destination": ["obj-296", 0],
          "order": 0,
          "source": ["obj-24", 1]
        }
      },
      {"patchline": {"destination": ["obj-9", 0], "source": ["obj-25", 0]}},
      {"patchline": {"destination": ["obj-76", 0], "source": ["obj-296", 0]}},
      {"patchline": {"destination": ["obj-76", 0], "source": ["obj-3", 0]}},
      {"patchline": {"destination": ["obj-11", 0], "source": ["obj-4", 0]}},
      {"patchline": {"destination": ["obj-76", 0], "source": ["obj-473", 0]}},
      {"patchline": {"destination": ["obj-4", 0], "source": ["obj-5", 2]}},
      {"patchline": {"destination": ["obj-7", 0], "source": ["obj-5", 0]}},
      {"patchline": {"destination": ["obj-7", 1], "source": ["obj-6", 1]}},
      {"patchline": {"destination": ["obj-102", 0], "source": ["obj-7", 0]}},
      {"patchline": {"destination": ["obj-90", 0], "source": ["obj-76", 1]}},
      {"patchline": {"destination": ["obj-99", 1], "source": ["obj-90", 2]}},
      {
        "patchline": {
          "destination": ["obj-2", 0],
          "order": 0,
          "source": ["obj-99", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-4", 0],
          "order": 1,
          "source": ["obj-99", 0]
        }
      }
    ],
    "parameters": {
      "obj-4": ["FileName", "FileName", 0],
      "obj-6": ["Font", "Font", 0],
      "obj-76": ["live.menu[1]", "live.menu", 0],
      "parameterbanks": {
        "0": {
          "index": 0,
          "name": "",
          "parameters": ["-", "-", "-", "-", "-", "-", "-", "-"]
        }
      },
      "inherited_shortname": 1
    },
    "dependency_cache": [],
    "autosave": 0
  }
}