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
    "rect": [133, 71, 571, 508],
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
          "id": "obj-24",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [648, 152, 60, 22],
          "text": "zl.change"
        }
      },
      {
        "box": {
          "id": "obj-25",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [576, 72, 30, 22],
          "text": "t l l"
        }
      },
      {
        "box": {
          "id": "obj-26",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [648, 120, 46, 22],
          "text": "pack i i"
        }
      },
      {
        "box": {
          "id": "obj-27",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 5,
          "outlettype": ["", "", "int", "int", "int"],
          "patching_rect": [648, 72, 84, 22],
          "text": "unpack s s i i i"
        }
      },
      {
        "box": {
          "id": "obj-23",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["bang", "int"],
          "patching_rect": [320, 384, 30, 22],
          "text": "t b i"
        }
      },
      {
        "box": {
          "id": "obj-22",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["bang", "int"],
          "patching_rect": [248, 384, 30, 22],
          "text": "t b i"
        }
      },
      {
        "box": {
          "id": "obj-21",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [400, 528, 75, 22],
          "text": "offset 0 -128"
        }
      },
      {
        "box": {
          "id": "obj-19",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [328, 528, 58, 22],
          "text": "offset 0 0"
        }
      },
      {
        "box": {
          "id": "obj-18",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [320, 560, 170, 22],
          "text": "prepend script send tab_panel"
        }
      },
      {
        "box": {
          "id": "obj-14",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [320, 592, 67, 22],
          "save": ["#N", "thispatcher", ";", "#Q", "end", ";"],
          "text": "thispatcher"
        }
      },
      {
        "box": {
          "id": "obj-13",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["int", "int"],
          "patching_rect": [248, 288, 30, 22],
          "text": "t i i"
        }
      },
      {
        "box": {
          "id": "obj-4",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [440, 376, 30, 22],
          "text": "- 1"
        }
      },
      {
        "box": {
          "id": "obj-3",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [440, 336, 46, 22],
          "text": "route 0"
        }
      },
      {
        "box": {
          "id": "obj-16",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [440, 416, 139, 22],
          "text": "prepend param variation"
        }
      },
      {
        "box": {
          "id": "obj-5",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [384, 456, 141, 22],
          "text": "file PX._kaleidoscope.jxs"
        }
      },
      {
        "box": {
          "id": "obj-2",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [256, 456, 97, 22],
          "text": "file td.kaleido.jxs"
        }
      },
      {
        "box": {
          "id": "obj-1",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["bang", ""],
          "patching_rect": [248, 336, 64, 22],
          "text": "select 0"
        }
      },
      {
        "box": {
          "bgmode": 0,
          "border": 0,
          "clickthrough": 0,
          "embed": 1,
          "enablehscroll": 0,
          "enablevscroll": 0,
          "id": "obj-28",
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "maxclass": "bpatcher",
          "numinlets": 2,
          "numoutlets": 1,
          "offset": [0, 0],
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
            "rect": [33, 71, 562, 508],
            "openinpresentation": 1,
            "gridonopen": 2,
            "gridsize": [8, 8],
            "gridsnaponopen": 2,
            "integercoordinates": 1,
            "boxes": [
              {
                "box": {
                  "id": "obj-21",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["bang", ""],
                  "patching_rect": [88, 72, 50, 22],
                  "text": "select 1"
                }
              },
              {
                "box": {
                  "id": "obj-20",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["bang", ""],
                  "patching_rect": [96, 224, 50, 22],
                  "text": "select 1"
                }
              },
              {
                "box": {
                  "id": "obj-44",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [248, 192, 41, 22],
                  "text": "pak f f"
                }
              },
              {
                "box": {
                  "id": "obj-23",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": ["bang"],
                  "patching_rect": [88, 104, 22, 22],
                  "text": "t b"
                }
              },
              {
                "box": {
                  "id": "obj-24",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["int", "int"],
                  "patching_rect": [40, 88, 30, 22],
                  "text": "t i i"
                }
              },
              {
                "box": {
                  "id": "obj-25",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [88, 48, 33, 22],
                  "text": "== 1"
                }
              },
              {
                "box": {
                  "id": "obj-27",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [40, 120, 30, 22],
                  "text": "+ 1"
                }
              },
              {
                "box": {
                  "id": "obj-42",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "patching_rect": [40, 152, 42, 22],
                  "text": "gate 2"
                }
              },
              {
                "box": {
                  "id": "obj-102",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": ["bang"],
                  "patching_rect": [96, 256, 22, 22],
                  "text": "t b"
                }
              },
              {
                "box": {
                  "id": "obj-101",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["int", "int"],
                  "patching_rect": [40, 232, 30, 22],
                  "text": "t i i"
                }
              },
              {
                "box": {
                  "id": "obj-100",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [96, 192, 33, 22],
                  "text": "== 1"
                }
              },
              {
                "box": {
                  "id": "obj-99",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [40, 264, 30, 22],
                  "text": "+ 1"
                }
              },
              {
                "box": {
                  "id": "obj-98",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "patching_rect": [40, 296, 42, 22],
                  "text": "gate 2"
                }
              },
              {
                "box": {
                  "id": "obj-18",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [640, 192, 140, 22],
                  "text": "expr $f1 * 3.14159 / 180."
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-17",
                  "index": 2,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": ["bang"],
                  "patching_rect": [776, 24, 30, 30]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-15",
                  "index": 1,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": ["bang"],
                  "patching_rect": [696, 0, 30, 30]
                }
              },
              {
                "box": {
                  "id": "obj-12",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [240, 464, 182, 22],
                  "text": "prepend param edge_brightness"
                }
              },
              {
                "box": {
                  "appearance": 1,
                  "fontsize": 8,
                  "id": "obj-30",
                  "maxclass": "live.text",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "parameter_enable": 1,
                  "patching_rect": [40, 48, 40, 15],
                  "presentation": 1,
                  "presentation_rect": [0, 200, 32, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_enum": ["val1", "val2"],
                      "parameter_initial": [1],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.text[6]",
                      "parameter_mmax": 1,
                      "parameter_modmode": 0,
                      "parameter_shortname": "live.text",
                      "parameter_type": 1
                    }
                  },
                  "text": "x=y",
                  "texton": "x=y",
                  "varname": "live.text[1]"
                }
              },
              {
                "box": {
                  "id": "obj-33",
                  "maxclass": "live.comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [856, 240, 67, 18],
                  "presentation": 1,
                  "presentation_rect": [-3, 231, 36, 18],
                  "text": "Origin",
                  "textjustification": 0
                }
              },
              {
                "box": {
                  "id": "obj-34",
                  "maxclass": "live.comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [856, 280, 67, 18],
                  "presentation": 1,
                  "presentation_rect": [-3, 215, 36, 18],
                  "text": "Offset",
                  "textjustification": 0
                }
              },
              {
                "box": {
                  "id": "obj-35",
                  "maxclass": "live.comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [856, 360, 67, 18],
                  "presentation": 1,
                  "presentation_rect": [-3, 184, 36, 18],
                  "text": "Scale",
                  "textjustification": 0
                }
              },
              {
                "box": {
                  "id": "obj-36",
                  "maxclass": "live.numbox",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", "float"],
                  "parameter_enable": 1,
                  "patching_rect": [288, 48, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [83, 200, 44, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [1],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.numbox[12]",
                      "parameter_mmax": 10,
                      "parameter_mmin": -10,
                      "parameter_modmode": 3,
                      "parameter_shortname": "live.numbox",
                      "parameter_steps": 1001,
                      "parameter_type": 0,
                      "parameter_units": "y",
                      "parameter_unitstyle": 9
                    }
                  },
                  "varname": "live.numbox[10]"
                }
              },
              {
                "box": {
                  "id": "obj-37",
                  "maxclass": "live.numbox",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", "float"],
                  "parameter_enable": 1,
                  "patching_rect": [224, 48, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [38, 200, 44, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [1],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.numbox[15]",
                      "parameter_mmax": 10,
                      "parameter_mmin": -10,
                      "parameter_modmode": 4,
                      "parameter_shortname": "live.numbox",
                      "parameter_steps": 1001,
                      "parameter_type": 0,
                      "parameter_units": "x",
                      "parameter_unitstyle": 9
                    }
                  },
                  "varname": "live.numbox[11]"
                }
              },
              {
                "box": {
                  "id": "obj-38",
                  "maxclass": "live.numbox",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", "float"],
                  "parameter_enable": 1,
                  "patching_rect": [432, 112, 71, 15],
                  "presentation": 1,
                  "presentation_rect": [83, 232, 44, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [0],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.numbox[17]",
                      "parameter_mmax": 2000,
                      "parameter_mmin": -2000,
                      "parameter_modmode": 3,
                      "parameter_shortname": "live.numbox",
                      "parameter_steps": 1001,
                      "parameter_type": 0,
                      "parameter_units": "y",
                      "parameter_unitstyle": 9
                    }
                  },
                  "varname": "live.numbox[12]"
                }
              },
              {
                "box": {
                  "id": "obj-39",
                  "maxclass": "live.numbox",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", "float"],
                  "parameter_enable": 1,
                  "patching_rect": [384, 112, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [38, 232, 44, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [0],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.numbox[18]",
                      "parameter_mmax": 2000,
                      "parameter_mmin": -2000,
                      "parameter_modmode": 3,
                      "parameter_shortname": "live.numbox",
                      "parameter_steps": 1001,
                      "parameter_type": 0,
                      "parameter_units": "x",
                      "parameter_unitstyle": 9
                    }
                  },
                  "varname": "live.numbox[13]"
                }
              },
              {
                "box": {
                  "id": "obj-40",
                  "maxclass": "live.numbox",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", "float"],
                  "parameter_enable": 1,
                  "patching_rect": [576, 104, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [83, 216, 44, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [0],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.numbox[13]",
                      "parameter_mmax": 1,
                      "parameter_mmin": -1,
                      "parameter_modmode": 3,
                      "parameter_shortname": "live.numbox",
                      "parameter_steps": 1001,
                      "parameter_type": 0,
                      "parameter_units": "y",
                      "parameter_unitstyle": 9
                    }
                  },
                  "varname": "live.numbox[14]"
                }
              },
              {
                "box": {
                  "id": "obj-41",
                  "maxclass": "live.numbox",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", "float"],
                  "parameter_enable": 1,
                  "patching_rect": [528, 104, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [38, 216, 44, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [0],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.numbox[16]",
                      "parameter_mmax": 1,
                      "parameter_mmin": -1,
                      "parameter_modmode": 3,
                      "parameter_shortname": "live.numbox",
                      "parameter_steps": 1001,
                      "parameter_type": 0,
                      "parameter_units": "x",
                      "parameter_unitstyle": 9
                    }
                  },
                  "varname": "live.numbox[15]"
                }
              },
              {
                "box": {
                  "appearance": 3,
                  "id": "obj-11",
                  "maxclass": "live.dial",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", "float"],
                  "parameter_enable": 1,
                  "patching_rect": [720, 128, 50, 63],
                  "presentation": 1,
                  "presentation_rect": [62, 132, 50, 63],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [180],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "Rotation",
                      "parameter_mmax": 360,
                      "parameter_modmode": 3,
                      "parameter_shortname": "Rotation",
                      "parameter_type": 0,
                      "parameter_unitstyle": 1
                    }
                  },
                  "varname": "live.dial[1]"
                }
              },
              {
                "box": {
                  "id": "obj-16",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [536, 344, 109, 22],
                  "text": "prepend param div"
                }
              },
              {
                "box": {
                  "appearance": 1,
                  "fontsize": 8,
                  "id": "obj-96",
                  "maxclass": "live.text",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "parameter_enable": 1,
                  "patching_rect": [40, 200, 40, 15],
                  "presentation": 1,
                  "presentation_rect": [0, 72, 32, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_enum": ["val1", "val2"],
                      "parameter_initial": [1],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.text[5]",
                      "parameter_mmax": 1,
                      "parameter_modmode": 0,
                      "parameter_shortname": "live.text",
                      "parameter_type": 1
                    }
                  },
                  "text": "x=y",
                  "texton": "x=y",
                  "varname": "live.text[5]"
                }
              },
              {
                "box": {
                  "id": "obj-9",
                  "maxclass": "live.comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [856, 160, 67, 18],
                  "presentation": 1,
                  "presentation_rect": [-3, 103, 36, 18],
                  "text": "Origin",
                  "textjustification": 0
                }
              },
              {
                "box": {
                  "id": "obj-8",
                  "maxclass": "live.comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [856, 200, 67, 18],
                  "presentation": 1,
                  "presentation_rect": [-3, 87, 36, 18],
                  "text": "Offset",
                  "textjustification": 0
                }
              },
              {
                "box": {
                  "id": "obj-7",
                  "maxclass": "live.comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [856, 320, 67, 18],
                  "presentation": 1,
                  "presentation_rect": [-3, 56, 36, 18],
                  "text": "Scale",
                  "textjustification": 0
                }
              },
              {
                "box": {
                  "appearance": 3,
                  "id": "obj-6",
                  "maxclass": "live.dial",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", "float"],
                  "parameter_enable": 1,
                  "patching_rect": [544, 248, 50, 63],
                  "presentation": 1,
                  "presentation_rect": [38, 4, 50, 63],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [12],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "Divisions",
                      "parameter_modmode": 3,
                      "parameter_shortname": "Divisions",
                      "parameter_type": 0,
                      "parameter_unitstyle": 1
                    }
                  },
                  "varname": "live.dial"
                }
              },
              {
                "box": {
                  "id": "obj-13",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [232, 384, 171, 22],
                  "text": "prepend param edge_softness"
                }
              },
              {
                "box": {
                  "id": "obj-14",
                  "maxclass": "live.numbox",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", "float"],
                  "parameter_enable": 1,
                  "patching_rect": [232, 432, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [0, 132, 48, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [0.8],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.numbox[11]",
                      "parameter_mmax": 1,
                      "parameter_modmode": 3,
                      "parameter_shortname": "live.numbox",
                      "parameter_steps": 1001,
                      "parameter_type": 0,
                      "parameter_units": "bri",
                      "parameter_unitstyle": 9
                    }
                  },
                  "varname": "live.numbox[9]"
                }
              },
              {
                "box": {
                  "id": "obj-5",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [672, 352, 161, 22],
                  "text": "prepend param mirror_blend"
                }
              },
              {
                "box": {
                  "id": "obj-4",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [640, 224, 133, 22],
                  "text": "prepend param rotation"
                }
              },
              {
                "box": {
                  "id": "obj-3",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [504, 184, 41, 22],
                  "text": "pak f f"
                }
              },
              {
                "box": {
                  "id": "obj-1",
                  "maxclass": "live.numbox",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", "float"],
                  "parameter_enable": 1,
                  "patching_rect": [688, 288, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [0, 166, 48, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [1],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.numbox[9]",
                      "parameter_mmax": 1,
                      "parameter_modmode": 4,
                      "parameter_shortname": "live.numbox",
                      "parameter_steps": 1025,
                      "parameter_type": 0,
                      "parameter_units": "ble",
                      "parameter_unitstyle": 9
                    }
                  },
                  "varname": "live.numbox[7]"
                }
              },
              {
                "box": {
                  "id": "obj-2",
                  "maxclass": "live.numbox",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", "float"],
                  "parameter_enable": 1,
                  "patching_rect": [272, 344, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [0, 149, 48, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [0.02],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.numbox[10]",
                      "parameter_mmax": 1,
                      "parameter_modmode": 3,
                      "parameter_shortname": "live.numbox",
                      "parameter_steps": 1281,
                      "parameter_type": 0,
                      "parameter_units": "soft",
                      "parameter_unitstyle": 9
                    }
                  },
                  "varname": "live.numbox[8]"
                }
              },
              {
                "box": {
                  "id": "obj-29",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [248, 280, 121, 22],
                  "text": "prepend param scale"
                }
              },
              {
                "box": {
                  "id": "obj-19",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [80, 376, 41, 22],
                  "text": "pak f f"
                }
              },
              {
                "box": {
                  "id": "obj-28",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [512, 224, 123, 22],
                  "text": "prepend param origin"
                }
              },
              {
                "box": {
                  "id": "obj-67",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [376, 224, 122, 22],
                  "text": "prepend param offset"
                }
              },
              {
                "box": {
                  "id": "obj-64",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [376, 192, 41, 22],
                  "text": "pak f f"
                }
              },
              {
                "box": {
                  "id": "obj-62",
                  "maxclass": "live.numbox",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", "float"],
                  "parameter_enable": 1,
                  "patching_rect": [120, 336, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [83, 72, 44, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [1],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.numbox[5]",
                      "parameter_mmax": 10,
                      "parameter_mmin": -10,
                      "parameter_modmode": 3,
                      "parameter_shortname": "live.numbox",
                      "parameter_steps": 1001,
                      "parameter_type": 0,
                      "parameter_units": "y",
                      "parameter_unitstyle": 9
                    }
                  },
                  "varname": "live.numbox[5]"
                }
              },
              {
                "box": {
                  "id": "obj-63",
                  "maxclass": "live.numbox",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", "float"],
                  "parameter_enable": 1,
                  "patching_rect": [96, 304, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [38, 72, 44, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [1],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.numbox[6]",
                      "parameter_mmax": 10,
                      "parameter_mmin": -10,
                      "parameter_modmode": 4,
                      "parameter_shortname": "live.numbox",
                      "parameter_steps": 1001,
                      "parameter_type": 0,
                      "parameter_units": "x",
                      "parameter_unitstyle": 9
                    }
                  },
                  "varname": "live.numbox[6]"
                }
              },
              {
                "box": {
                  "id": "obj-56",
                  "maxclass": "live.numbox",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", "float"],
                  "parameter_enable": 1,
                  "patching_rect": [424, 144, 71, 15],
                  "presentation": 1,
                  "presentation_rect": [83, 104, 44, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [0],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.numbox[3]",
                      "parameter_mmax": 2000,
                      "parameter_mmin": -2000,
                      "parameter_modmode": 3,
                      "parameter_shortname": "live.numbox",
                      "parameter_steps": 1001,
                      "parameter_type": 0,
                      "parameter_units": "y",
                      "parameter_unitstyle": 9
                    }
                  },
                  "varname": "live.numbox[3]"
                }
              },
              {
                "box": {
                  "id": "obj-59",
                  "maxclass": "live.numbox",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", "float"],
                  "parameter_enable": 1,
                  "patching_rect": [376, 144, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [38, 104, 44, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [0],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.numbox[4]",
                      "parameter_mmax": 2000,
                      "parameter_mmin": -2000,
                      "parameter_modmode": 3,
                      "parameter_shortname": "live.numbox",
                      "parameter_steps": 1001,
                      "parameter_type": 0,
                      "parameter_units": "x",
                      "parameter_unitstyle": 9
                    }
                  },
                  "varname": "live.numbox[4]"
                }
              },
              {
                "box": {
                  "id": "obj-32",
                  "maxclass": "live.numbox",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", "float"],
                  "parameter_enable": 1,
                  "patching_rect": [560, 144, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [83, 88, 44, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [0],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.numbox[2]",
                      "parameter_mmax": 1,
                      "parameter_mmin": -1,
                      "parameter_modmode": 3,
                      "parameter_shortname": "live.numbox",
                      "parameter_steps": 1001,
                      "parameter_type": 0,
                      "parameter_units": "y",
                      "parameter_unitstyle": 9
                    }
                  },
                  "varname": "live.numbox[2]"
                }
              },
              {
                "box": {
                  "id": "obj-31",
                  "maxclass": "live.numbox",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", "float"],
                  "parameter_enable": 1,
                  "patching_rect": [512, 144, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [38, 88, 44, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [0],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.numbox[1]",
                      "parameter_mmax": 1,
                      "parameter_mmin": -1,
                      "parameter_modmode": 3,
                      "parameter_shortname": "live.numbox",
                      "parameter_steps": 1001,
                      "parameter_type": 0,
                      "parameter_units": "x",
                      "parameter_unitstyle": 9
                    }
                  },
                  "varname": "live.numbox[1]"
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-26",
                  "index": 1,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [488, 464, 30, 30]
                }
              },
              {
                "box": {
                  "angle": 270,
                  "bgcolor": [
                    0.57636836783545,
                    0.576368229540612,
                    0.576368265679262,
                    1
                  ],
                  "id": "obj-10",
                  "maxclass": "panel",
                  "mode": 0,
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [848, 8, 128, 128],
                  "proportion": 0.39,
                  "rounded": 0,
                  "saved_attribute_attributes": {
                    "bgfillcolor": {
                      "expression": "themecolor.live_control_fg_off_zombie"
                    }
                  }
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "destination": ["obj-5", 0],
                  "source": ["obj-1", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-20", 0],
                  "source": ["obj-100", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-100", 0],
                  "source": ["obj-101", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-99", 0],
                  "source": ["obj-101", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-63", 0],
                  "source": ["obj-102", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-18", 0],
                  "source": ["obj-11", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-26", 0],
                  "source": ["obj-12", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-26", 0],
                  "source": ["obj-13", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-12", 0],
                  "source": ["obj-14", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-31", 0],
                  "order": 2,
                  "source": ["obj-15", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-32", 0],
                  "order": 0,
                  "source": ["obj-15", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-56", 0],
                  "order": 3,
                  "source": ["obj-15", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-59", 0],
                  "order": 4,
                  "source": ["obj-15", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-6", 0],
                  "order": 1,
                  "source": ["obj-15", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-62", 0],
                  "order": 5,
                  "source": ["obj-15", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-63", 0],
                  "order": 6,
                  "source": ["obj-15", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-26", 0],
                  "source": ["obj-16", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-1", 0],
                  "order": 1,
                  "source": ["obj-17", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-11", 0],
                  "order": 0,
                  "source": ["obj-17", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-14", 0],
                  "order": 8,
                  "source": ["obj-17", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-2", 0],
                  "order": 7,
                  "source": ["obj-17", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-36", 0],
                  "order": 6,
                  "source": ["obj-17", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-37", 0],
                  "order": 9,
                  "source": ["obj-17", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-38", 0],
                  "order": 4,
                  "source": ["obj-17", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-39", 0],
                  "order": 5,
                  "source": ["obj-17", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-40", 0],
                  "order": 2,
                  "source": ["obj-17", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-41", 0],
                  "order": 3,
                  "source": ["obj-17", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-4", 0],
                  "source": ["obj-18", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-29", 0],
                  "source": ["obj-19", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-13", 0],
                  "source": ["obj-2", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-102", 0],
                  "source": ["obj-20", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-23", 0],
                  "source": ["obj-21", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-37", 0],
                  "source": ["obj-23", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-25", 0],
                  "source": ["obj-24", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-27", 0],
                  "source": ["obj-24", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-21", 0],
                  "source": ["obj-25", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-42", 0],
                  "source": ["obj-27", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-26", 0],
                  "source": ["obj-28", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-26", 0],
                  "source": ["obj-29", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-28", 0],
                  "source": ["obj-3", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-24", 0],
                  "source": ["obj-30", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-3", 0],
                  "source": ["obj-31", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-3", 1],
                  "source": ["obj-32", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-44", 1],
                  "source": ["obj-36", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-42", 1],
                  "source": ["obj-37", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-64", 1],
                  "source": ["obj-38", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-64", 0],
                  "source": ["obj-39", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-26", 0],
                  "source": ["obj-4", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-3", 1],
                  "source": ["obj-40", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-3", 0],
                  "source": ["obj-41", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-36", 0],
                  "order": 0,
                  "source": ["obj-42", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-44", 0],
                  "order": 1,
                  "source": ["obj-42", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-44", 0],
                  "source": ["obj-42", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-29", 0],
                  "source": ["obj-44", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-26", 0],
                  "source": ["obj-5", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-64", 1],
                  "source": ["obj-56", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-64", 0],
                  "source": ["obj-59", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-16", 0],
                  "source": ["obj-6", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-19", 1],
                  "source": ["obj-62", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-98", 1],
                  "source": ["obj-63", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-67", 0],
                  "source": ["obj-64", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-26", 0],
                  "source": ["obj-67", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-101", 0],
                  "source": ["obj-96", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-19", 0],
                  "order": 1,
                  "source": ["obj-98", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-19", 0],
                  "source": ["obj-98", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-62", 0],
                  "order": 0,
                  "source": ["obj-98", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-98", 0],
                  "source": ["obj-99", 0]
                }
              }
            ]
          },
          "patching_rect": [8, 248, 128, 128],
          "presentation": 1,
          "presentation_rect": [2, 31, 130, 121],
          "varname": "tab_panel",
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "focusbordercolor": [
            0.752941176470588,
            0.752941176470588,
            0.752941176470588,
            0
          ],
          "fontsize": 9,
          "id": "obj-20",
          "maxclass": "live.tab",
          "num_lines_patching": 1,
          "num_lines_presentation": 2,
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["", "", "float"],
          "parameter_enable": 1,
          "patching_rect": [248, 248, 100, 20],
          "presentation": 1,
          "presentation_rect": [2, 2, 126, 28],
          "saved_attribute_attributes": {
            "focusbordercolor": {"expression": ""},
            "valueof": {
              "parameter_enum": ["S", "A", "3", "4", "5", "6", "8", "12"],
              "parameter_longname": "live.tab",
              "parameter_mmax": 7,
              "parameter_modmode": 0,
              "parameter_shortname": "live.tab",
              "parameter_type": 2,
              "parameter_unitstyle": 9
            }
          },
          "spacing_x": 3,
          "spacing_y": 3,
          "varname": "live.tab"
        }
      },
      {
        "box": {
          "id": "obj-8",
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
                  "outlettype": ["jit_gl_texture"],
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
          "patching_rect": [8, 584, 117, 22],
          "text": "p <KALEIDO::OUT>"
        }
      },
      {
        "box": {
          "id": "obj-7",
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
          "patching_rect": [736, 288, 103, 22],
          "text": "p <KALEIDO::IN>"
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
          "patching_rect": [432, 200, 239, 32],
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "filename": "td.kaleido.jxs",
          "id": "obj-34",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["jit_gl_texture", ""],
          "patching_rect": [8, 536, 300, 22],
          "text": "jit.gl.slab px-stream @file td.kaleido.jxs @param div 12",
          "textfile": {
            "filename": "td.kaleido.jxs",
            "flags": 0,
            "embed": 0,
            "autowatch": 1
          }
        }
      },
      {
        "box": {
          "id": "obj-6",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [280, 128, 82, 22],
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
          "patching_rect": [760, 152, 80, 22],
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
          "patching_rect": [680, 200, 240, 32],
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
          "patching_rect": [432, 112, 31, 22],
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
          "patching_rect": [432, 80, 54, 22],
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
          "patching_rect": [432, 152, 100, 20],
          "presentation": 1,
          "presentation_rect": [2, 153, 126, 15],
          "saved_attribute_attributes": {
            "activebgoncolor": {
              "expression": "themecolor.live_display_handle_two"
            },
            "focusbordercolor": {"expression": ""},
            "valueof": {
              "parameter_enum": ["1", "2", "3", "4", "5", "6", "7", "8", "P"],
              "parameter_initial": [8],
              "parameter_initial_enable": 1,
              "parameter_longname": "Channel",
              "parameter_mmax": 8,
              "parameter_modmode": 0,
              "parameter_shortname": "Channel",
              "parameter_type": 2,
              "parameter_unitstyle": 9,
              "parameter_annotation_name": "Channel",
              "parameter_info": "Sets target mix channel, rendered in Mix View device, alternative to Mix Channel device. When P (pass) is select texture is processed by following device."
            }
          },
          "spacing_x": 3,
          "varname": "Syphon",
          "annotation_name": "Channel",
          "annotation": "Sets target mix channel, rendered in Mix View device, alternative to Mix Channel device. When P (pass) is select texture is processed by following device."
        }
      },
      {
        "box": {
          "id": "obj-9",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["bang", "int", "int"],
          "patching_rect": [280, 80, 100, 22],
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
      }
    ],
    "lines": [
      {"patchline": {"destination": ["obj-22", 0], "source": ["obj-1", 0]}},
      {"patchline": {"destination": ["obj-23", 0], "source": ["obj-1", 1]}},
      {"patchline": {"destination": ["obj-10", 1], "source": ["obj-11", 1]}},
      {"patchline": {"destination": ["obj-10", 0], "source": ["obj-11", 0]}},
      {
        "patchline": {
          "destination": ["obj-25", 0],
          "order": 1,
          "source": ["obj-12", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-42", 2],
          "order": 2,
          "source": ["obj-12", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-7", 0],
          "order": 0,
          "source": ["obj-12", 0]
        }
      },
      {"patchline": {"destination": ["obj-1", 0], "source": ["obj-13", 1]}},
      {"patchline": {"destination": ["obj-3", 0], "source": ["obj-13", 0]}},
      {"patchline": {"destination": ["obj-34", 0], "source": ["obj-16", 0]}},
      {"patchline": {"destination": ["obj-15", 0], "source": ["obj-17", 0]}},
      {"patchline": {"destination": ["obj-14", 0], "source": ["obj-18", 0]}},
      {"patchline": {"destination": ["obj-18", 0], "source": ["obj-19", 0]}},
      {"patchline": {"destination": ["obj-34", 0], "source": ["obj-2", 0]}},
      {"patchline": {"destination": ["obj-13", 0], "source": ["obj-20", 0]}},
      {"patchline": {"destination": ["obj-18", 0], "source": ["obj-21", 0]}},
      {
        "patchline": {
          "destination": ["obj-19", 0],
          "order": 0,
          "source": ["obj-22", 1]
        }
      },
      {
        "patchline": {
          "destination": ["obj-2", 0],
          "order": 1,
          "source": ["obj-22", 1]
        }
      },
      {"patchline": {"destination": ["obj-28", 0], "source": ["obj-22", 0]}},
      {
        "patchline": {
          "destination": ["obj-21", 0],
          "order": 0,
          "source": ["obj-23", 1]
        }
      },
      {"patchline": {"destination": ["obj-28", 1], "source": ["obj-23", 0]}},
      {
        "patchline": {
          "destination": ["obj-5", 0],
          "order": 1,
          "source": ["obj-23", 1]
        }
      },
      {"patchline": {"destination": ["obj-42", 4], "source": ["obj-24", 0]}},
      {"patchline": {"destination": ["obj-27", 0], "source": ["obj-25", 1]}},
      {"patchline": {"destination": ["obj-34", 0], "source": ["obj-25", 0]}},
      {"patchline": {"destination": ["obj-24", 0], "source": ["obj-26", 0]}},
      {"patchline": {"destination": ["obj-26", 1], "source": ["obj-27", 3]}},
      {"patchline": {"destination": ["obj-26", 0], "source": ["obj-27", 2]}},
      {"patchline": {"destination": ["obj-34", 0], "source": ["obj-28", 0]}},
      {"patchline": {"destination": ["obj-4", 0], "source": ["obj-3", 1]}},
      {"patchline": {"destination": ["obj-12", 1], "source": ["obj-309", 0]}},
      {
        "patchline": {
          "destination": ["obj-42", 3],
          "order": 0,
          "source": ["obj-34", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-8", 0],
          "order": 1,
          "source": ["obj-34", 0]
        }
      },
      {"patchline": {"destination": ["obj-42", 0], "source": ["obj-366", 0]}},
      {"patchline": {"destination": ["obj-376", 0], "source": ["obj-372", 0]}},
      {"patchline": {"destination": ["obj-366", 0], "source": ["obj-376", 0]}},
      {"patchline": {"destination": ["obj-16", 0], "source": ["obj-4", 0]}},
      {"patchline": {"destination": ["obj-12", 0], "source": ["obj-42", 4]}},
      {"patchline": {"destination": ["obj-366", 0], "source": ["obj-42", 2]}},
      {"patchline": {"destination": ["obj-34", 0], "source": ["obj-5", 0]}},
      {"patchline": {"destination": ["obj-6", 0], "source": ["obj-9", 0]}}
    ],
    "parameters": {
      "obj-20": ["live.tab", "live.tab", 0],
      "obj-28::obj-1": ["live.numbox[9]", "live.numbox", 0],
      "obj-28::obj-11": ["Rotation", "Rotation", 0],
      "obj-28::obj-14": ["live.numbox[11]", "live.numbox", 0],
      "obj-28::obj-2": ["live.numbox[10]", "live.numbox", 0],
      "obj-28::obj-30": ["live.text[6]", "live.text", 0],
      "obj-28::obj-31": ["live.numbox[1]", "live.numbox", 0],
      "obj-28::obj-32": ["live.numbox[2]", "live.numbox", 0],
      "obj-28::obj-36": ["live.numbox[12]", "live.numbox", 0],
      "obj-28::obj-37": ["live.numbox[15]", "live.numbox", 0],
      "obj-28::obj-38": ["live.numbox[17]", "live.numbox", 0],
      "obj-28::obj-39": ["live.numbox[18]", "live.numbox", 0],
      "obj-28::obj-40": ["live.numbox[13]", "live.numbox", 0],
      "obj-28::obj-41": ["live.numbox[16]", "live.numbox", 0],
      "obj-28::obj-56": ["live.numbox[3]", "live.numbox", 0],
      "obj-28::obj-59": ["live.numbox[4]", "live.numbox", 0],
      "obj-28::obj-6": ["Divisions", "Divisions", 0],
      "obj-28::obj-62": ["live.numbox[5]", "live.numbox", 0],
      "obj-28::obj-63": ["live.numbox[6]", "live.numbox", 0],
      "obj-28::obj-96": ["live.text[5]", "live.text", 0],
      "obj-366": ["Syphon", "Syphon", 0],
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
      }
    ],
    "autosave": 0
  }
}