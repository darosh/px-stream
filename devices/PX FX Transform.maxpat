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
          "id": "obj-18",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [520, 392, 46, 22],
          "text": "pack i i"
        }
      },
      {
        "box": {
          "id": "obj-16",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 5,
          "outlettype": ["", "", "int", "int", "int"],
          "patching_rect": [520, 344, 84, 22],
          "text": "unpack s s i i i"
        }
      },
      {
        "box": {
          "id": "obj-108",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["bang", ""],
          "patching_rect": [1088, 40, 50, 22],
          "text": "select 1"
        }
      },
      {
        "box": {
          "id": "obj-102",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": ["bang"],
          "patching_rect": [1088, 80, 22, 22],
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
          "patching_rect": [1024, 40, 30, 22],
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
          "patching_rect": [1024, 80, 33, 22],
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
          "patching_rect": [1024, 120, 30, 22],
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
          "patching_rect": [1024, 160, 42, 22],
          "text": "gate 2"
        }
      },
      {
        "box": {
          "id": "obj-8",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [552, 104, 64, 22],
          "text": "offset 0 $1"
        }
      },
      {
        "box": {
          "id": "obj-4",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [552, 64, 34, 22],
          "text": "* -70"
        }
      },
      {
        "box": {
          "id": "obj-2",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [552, 136, 147, 22],
          "text": "prepend script send roTab"
        }
      },
      {
        "box": {
          "id": "obj-1",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [552, 176, 67, 22],
          "save": ["#N", "thispatcher", ";", "#Q", "end", ";"],
          "text": "thispatcher"
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
          "id": "obj-47",
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
            "rect": [45, 99, 340, 476],
            "openinpresentation": 1,
            "gridonopen": 2,
            "gridsize": [8, 8],
            "gridsnaponopen": 2,
            "objectsnaponopen": 0,
            "integercoordinates": 1,
            "boxes": [
              {
                "box": {
                  "id": "obj-6",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [288, 328, 30, 22],
                  "text": "+ 1"
                }
              },
              {
                "box": {
                  "id": "obj-5",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [288, 376, 42, 22],
                  "text": "switch"
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-3",
                  "index": 2,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [360, 48, 30, 30],
                  "varname": "u165010545[1]"
                }
              },
              {
                "box": {
                  "id": "obj-4",
                  "maxclass": "newobj",
                  "numinlets": 4,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [408, 160, 55, 22],
                  "text": "pak f f f f"
                }
              },
              {
                "box": {
                  "id": "obj-1",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [88, 144, 48, 22],
                  "text": "pak f f f"
                }
              },
              {
                "box": {
                  "id": "obj-25",
                  "maxclass": "live.numbox",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", "float"],
                  "parameter_enable": 1,
                  "patching_rect": [160, 104, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [87, 2, 41, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [0],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.numbox[8]",
                      "parameter_mmax": 360,
                      "parameter_mmin": -360,
                      "parameter_modmode": 3,
                      "parameter_shortname": "live.numbox",
                      "parameter_steps": 721,
                      "parameter_type": 0,
                      "parameter_units": "rz",
                      "parameter_unitstyle": 9
                    }
                  },
                  "varname": "live.numbox[12]"
                }
              },
              {
                "box": {
                  "id": "obj-23",
                  "maxclass": "live.numbox",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", "float"],
                  "parameter_enable": 1,
                  "patching_rect": [104, 104, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [45, 2, 40, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [0],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.numbox[7]",
                      "parameter_mmax": 360,
                      "parameter_mmin": -360,
                      "parameter_modmode": 3,
                      "parameter_shortname": "live.numbox",
                      "parameter_steps": 721,
                      "parameter_type": 0,
                      "parameter_units": "ry",
                      "parameter_unitstyle": 9
                    }
                  },
                  "varname": "live.numbox[10]"
                }
              },
              {
                "box": {
                  "id": "obj-24",
                  "maxclass": "live.numbox",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", "float"],
                  "parameter_enable": 1,
                  "patching_rect": [48, 104, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [2, 2, 41, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [0],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.numbox[13]",
                      "parameter_mmax": 360,
                      "parameter_mmin": -360,
                      "parameter_modmode": 3,
                      "parameter_shortname": "live.numbox",
                      "parameter_steps": 721,
                      "parameter_type": 0,
                      "parameter_units": "rx",
                      "parameter_unitstyle": 9
                    }
                  },
                  "varname": "live.numbox[11]"
                }
              },
              {
                "box": {
                  "id": "obj-20",
                  "maxclass": "live.numbox",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", "float"],
                  "parameter_enable": 1,
                  "patching_rect": [520, 112, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [66, 89, 62, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [1],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.numbox[12]",
                      "parameter_mmax": 100,
                      "parameter_mmin": -100,
                      "parameter_modmode": 3,
                      "parameter_shortname": "live.numbox",
                      "parameter_steps": 2001,
                      "parameter_type": 0,
                      "parameter_units": "vz",
                      "parameter_unitstyle": 9
                    }
                  },
                  "varname": "live.numbox[4]"
                }
              },
              {
                "box": {
                  "id": "obj-22",
                  "maxclass": "live.numbox",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", "float"],
                  "parameter_enable": 1,
                  "patching_rect": [456, 112, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [2, 89, 62, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [0],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.numbox[4]",
                      "parameter_mmax": 100,
                      "parameter_mmin": -100,
                      "parameter_modmode": 3,
                      "parameter_shortname": "live.numbox",
                      "parameter_steps": 2001,
                      "parameter_type": 0,
                      "parameter_units": "vy",
                      "parameter_unitstyle": 9
                    }
                  },
                  "varname": "live.numbox[9]"
                }
              },
              {
                "box": {
                  "id": "obj-18",
                  "maxclass": "live.numbox",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", "float"],
                  "parameter_enable": 1,
                  "patching_rect": [400, 112, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [66, 72, 62, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [0],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.numbox[11]",
                      "parameter_mmax": 100,
                      "parameter_mmin": -100,
                      "parameter_modmode": 3,
                      "parameter_shortname": "live.numbox",
                      "parameter_steps": 2001,
                      "parameter_type": 0,
                      "parameter_units": "vx",
                      "parameter_unitstyle": 9
                    }
                  },
                  "varname": "live.numbox[3]"
                }
              },
              {
                "box": {
                  "id": "obj-8",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [416, 272, 106, 22],
                  "text": "rotate $1 $2 $3 $4"
                }
              },
              {
                "box": {
                  "id": "obj-16",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [176, 296, 107, 22],
                  "text": "rotatexyz $1 $2 $3"
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
                  "patching_rect": [336, 112, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [2, 72, 62, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [0],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.numbox[10]",
                      "parameter_mmax": 360,
                      "parameter_mmin": -360,
                      "parameter_modmode": 3,
                      "parameter_shortname": "live.numbox",
                      "parameter_steps": 721,
                      "parameter_type": 0,
                      "parameter_units": "a",
                      "parameter_unitstyle": 9
                    }
                  },
                  "varname": "live.numbox[8]"
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-44",
                  "index": 1,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": ["bang"],
                  "patching_rect": [192, 40, 30, 30],
                  "varname": "u165010545"
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-45",
                  "index": 1,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [288, 448, 30, 30],
                  "varname": "u871010546"
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "destination": ["obj-16", 0],
                  "source": ["obj-1", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-5", 1],
                  "source": ["obj-16", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-4", 1],
                  "source": ["obj-18", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-4", 0],
                  "source": ["obj-2", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-4", 3],
                  "source": ["obj-20", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-4", 2],
                  "source": ["obj-22", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-1", 1],
                  "source": ["obj-23", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-1", 0],
                  "source": ["obj-24", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-1", 2],
                  "source": ["obj-25", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-6", 0],
                  "source": ["obj-3", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-8", 0],
                  "source": ["obj-4", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-2", 0],
                  "order": 0,
                  "source": ["obj-44", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-24", 0],
                  "order": 1,
                  "source": ["obj-44", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-45", 0],
                  "source": ["obj-5", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-5", 0],
                  "source": ["obj-6", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-5", 2],
                  "source": ["obj-8", 0]
                }
              }
            ]
          },
          "patching_rect": [664, 200, 130, 70],
          "presentation": 1,
          "presentation_rect": [0, 85, 130, 70],
          "varname": "roTab",
          "viewvisibility": 1
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
          "patching_rect": [1024, 0, 40, 15],
          "presentation": 1,
          "presentation_rect": [87, 48, 32, 15],
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
          "id": "obj-41",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [520, 432, 75, 22],
          "text": "prepend dim"
        }
      },
      {
        "box": {
          "id": "obj-39",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["jit_gl_texture", ""],
          "patching_rect": [664, 432, 546, 22],
          "text": "jit.gl.texture px-stream @name ---_TRANS @defaultimage black @type float32 @erase_color 0 0 0 0"
        }
      },
      {
        "box": {
          "id": "obj-38",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["jit_matrix", ""],
          "patching_rect": [664, 384, 478, 22],
          "text": "jit.gl.videoplane px-stream @capture ---_TRANS @preserve_aspect 1 @blend_enable 1"
        }
      },
      {
        "box": {
          "id": "obj-37",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["", "", ""],
          "patching_rect": [520, 288, 40, 22],
          "text": "t l l l"
        }
      },
      {
        "box": {
          "id": "obj-13",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": ["bang"],
          "patching_rect": [928, 80, 24, 22],
          "text": "t b"
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
          "patching_rect": [408, 512, 241, 33],
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "id": "obj-21",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1016, 312, 83, 22],
          "text": "scale $1 $2 0."
        }
      },
      {
        "box": {
          "id": "obj-14",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1152, 312, 97, 22],
          "text": "position $1 $2 0."
        }
      },
      {
        "box": {
          "id": "obj-3",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1152, 264, 41, 22],
          "text": "pak f f"
        }
      },
      {
        "box": {
          "id": "obj-6",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [280, 136, 82, 22],
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
          "patching_rect": [8, 16, 351, 47],
          "saved_attribute_attributes": {
            "textcolor": {"expression": "themecolor.live_control_fg"}
          },
          "text": "PX Stream by darosh\nhttps://github.com/darosh/px-stream"
        }
      },
      {
        "box": {
          "id": "obj-19",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1016, 264, 41, 22],
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
          "patching_rect": [1048, 232, 44, 15],
          "presentation": 1,
          "presentation_rect": [45, 48, 40, 15],
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
              "parameter_units": "sy",
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
          "patching_rect": [1088, 120, 44, 15],
          "presentation": 1,
          "presentation_rect": [2, 48, 41, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [1],
              "parameter_initial_enable": 1,
              "parameter_longname": "Scale X",
              "parameter_mmax": 10,
              "parameter_mmin": -10,
              "parameter_modmode": 4,
              "parameter_shortname": "Scale X",
              "parameter_steps": 1001,
              "parameter_type": 0,
              "parameter_units": "sx",
              "parameter_unitstyle": 9,
              "parameter_annotation_name": "Scale X"
            }
          },
          "varname": "live.numbox",
          "annotation_name": "Scale X"
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
          "patching_rect": [1200, 232, 44, 15],
          "presentation": 1,
          "presentation_rect": [66, 16, 62, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [0],
              "parameter_initial_enable": 1,
              "parameter_longname": "live.numbox[2]",
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
          "patching_rect": [1144, 232, 44, 15],
          "presentation": 1,
          "presentation_rect": [2, 16, 62, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [0],
              "parameter_initial_enable": 1,
              "parameter_longname": "live.numbox[1]",
              "parameter_mmax": 10,
              "parameter_mmin": -10,
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
          "id": "obj-17",
          "maxclass": "button",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": ["bang"],
          "parameter_enable": 0,
          "patching_rect": [128, 88, 24, 24]
        }
      },
      {
        "box": {
          "id": "obj-15",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [128, 136, 56, 22],
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
          "patching_rect": [752, 472, 80, 22],
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
          "patching_rect": [672, 512, 240, 32],
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
          "patching_rect": [408, 136, 31, 22],
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
          "patching_rect": [408, 104, 54, 22],
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
          "patching_rect": [408, 200, 100, 20],
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
          "varname": "live.tab"
        }
      },
      {
        "box": {
          "id": "obj-9",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["bang", "int", "int"],
          "patching_rect": [280, 88, 100, 22],
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
          "patching_rect": [8, 88, 62, 22],
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
          "patching_rect": [8, 136, 62, 22],
          "text": "plugout~"
        }
      },
      {
        "box": {
          "id": "obj-26",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [8, 272, 150, 18],
          "presentation": 1,
          "presentation_rect": [2, 68, 38, 18],
          "text": "Rotate",
          "textjustification": 0
        }
      },
      {
        "box": {
          "id": "obj-7",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [8, 224, 150, 18],
          "presentation": 1,
          "presentation_rect": [2, 32, 120, 18],
          "text": "Scale",
          "textjustification": 0
        }
      },
      {
        "box": {
          "id": "obj-5",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [8, 184, 150, 18],
          "presentation": 1,
          "presentation_rect": [2, 0, 120, 18],
          "text": "Offset",
          "textjustification": 0
        }
      },
      {
        "box": {
          "background": 1,
          "focusbordercolor": [
            0.447058823529412,
            0.447058823529412,
            0.447058823529412,
            0
          ],
          "fontsize": 9,
          "id": "obj-43",
          "maxclass": "live.tab",
          "num_lines_patching": 1,
          "num_lines_presentation": 1,
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["", "", "float"],
          "parameter_enable": 1,
          "patching_rect": [552, 32, 100, 20],
          "presentation": 1,
          "presentation_rect": [63, 69, 64, 15],
          "saved_attribute_attributes": {
            "focusbordercolor": {"expression": ""},
            "valueof": {
              "parameter_enum": ["Axis", "Vector"],
              "parameter_longname": "live.tab[1]",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "live.tab[1]",
              "parameter_type": 2,
              "parameter_unitstyle": 9
            }
          },
          "spacing_x": 3,
          "spacing_y": 3,
          "varname": "live.tab[1]"
        }
      }
    ],
    "lines": [
      {"patchline": {"destination": ["obj-108", 0], "source": ["obj-100", 0]}},
      {"patchline": {"destination": ["obj-100", 0], "source": ["obj-101", 0]}},
      {"patchline": {"destination": ["obj-99", 0], "source": ["obj-101", 1]}},
      {"patchline": {"destination": ["obj-63", 0], "source": ["obj-102", 0]}},
      {"patchline": {"destination": ["obj-102", 0], "source": ["obj-108", 0]}},
      {"patchline": {"destination": ["obj-10", 1], "source": ["obj-11", 1]}},
      {"patchline": {"destination": ["obj-10", 0], "source": ["obj-11", 0]}},
      {
        "patchline": {
          "destination": ["obj-37", 0],
          "order": 0,
          "source": ["obj-12", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-42", 2],
          "order": 1,
          "source": ["obj-12", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-31", 0],
          "order": 0,
          "source": ["obj-13", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-47", 0],
          "order": 2,
          "source": ["obj-13", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-63", 0],
          "order": 1,
          "source": ["obj-13", 0]
        }
      },
      {"patchline": {"destination": ["obj-38", 0], "source": ["obj-14", 0]}},
      {"patchline": {"destination": ["obj-18", 1], "source": ["obj-16", 3]}},
      {"patchline": {"destination": ["obj-18", 0], "source": ["obj-16", 2]}},
      {"patchline": {"destination": ["obj-15", 0], "source": ["obj-17", 0]}},
      {"patchline": {"destination": ["obj-41", 0], "source": ["obj-18", 0]}},
      {"patchline": {"destination": ["obj-21", 0], "source": ["obj-19", 0]}},
      {"patchline": {"destination": ["obj-1", 0], "source": ["obj-2", 0]}},
      {"patchline": {"destination": ["obj-38", 0], "source": ["obj-21", 0]}},
      {"patchline": {"destination": ["obj-14", 0], "source": ["obj-3", 0]}},
      {"patchline": {"destination": ["obj-12", 1], "source": ["obj-309", 0]}},
      {"patchline": {"destination": ["obj-3", 0], "source": ["obj-31", 0]}},
      {"patchline": {"destination": ["obj-3", 1], "source": ["obj-32", 0]}},
      {"patchline": {"destination": ["obj-42", 0], "source": ["obj-366", 0]}},
      {"patchline": {"destination": ["obj-13", 0], "source": ["obj-37", 2]}},
      {"patchline": {"destination": ["obj-16", 0], "source": ["obj-37", 1]}},
      {"patchline": {"destination": ["obj-38", 0], "source": ["obj-37", 0]}},
      {"patchline": {"destination": ["obj-376", 0], "source": ["obj-372", 0]}},
      {"patchline": {"destination": ["obj-366", 0], "source": ["obj-376", 0]}},
      {"patchline": {"destination": ["obj-42", 3], "source": ["obj-39", 0]}},
      {"patchline": {"destination": ["obj-8", 0], "source": ["obj-4", 0]}},
      {"patchline": {"destination": ["obj-39", 0], "source": ["obj-41", 0]}},
      {"patchline": {"destination": ["obj-12", 0], "source": ["obj-42", 4]}},
      {"patchline": {"destination": ["obj-366", 0], "source": ["obj-42", 2]}},
      {"patchline": {"destination": ["obj-39", 0], "source": ["obj-42", 3]}},
      {
        "patchline": {
          "destination": ["obj-4", 0],
          "order": 0,
          "source": ["obj-43", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-47", 1],
          "order": 1,
          "source": ["obj-43", 0]
        }
      },
      {"patchline": {"destination": ["obj-38", 0], "source": ["obj-47", 0]}},
      {"patchline": {"destination": ["obj-19", 1], "source": ["obj-62", 0]}},
      {"patchline": {"destination": ["obj-98", 1], "source": ["obj-63", 0]}},
      {"patchline": {"destination": ["obj-2", 0], "source": ["obj-8", 0]}},
      {"patchline": {"destination": ["obj-6", 0], "source": ["obj-9", 0]}},
      {"patchline": {"destination": ["obj-101", 0], "source": ["obj-96", 0]}},
      {
        "patchline": {
          "destination": ["obj-19", 0],
          "order": 1,
          "source": ["obj-98", 1]
        }
      },
      {"patchline": {"destination": ["obj-19", 0], "source": ["obj-98", 0]}},
      {
        "patchline": {
          "destination": ["obj-62", 0],
          "order": 0,
          "source": ["obj-98", 1]
        }
      },
      {"patchline": {"destination": ["obj-98", 0], "source": ["obj-99", 0]}}
    ],
    "parameters": {
      "obj-31": ["live.numbox[1]", "live.numbox", 0],
      "obj-32": ["live.numbox[2]", "live.numbox", 0],
      "obj-366": ["Channel", "Channel", 0],
      "obj-43": ["live.tab[1]", "live.tab[1]", 0],
      "obj-47::obj-18": ["live.numbox[11]", "live.numbox", 0],
      "obj-47::obj-2": ["live.numbox[10]", "live.numbox", 0],
      "obj-47::obj-20": ["live.numbox[12]", "live.numbox", 0],
      "obj-47::obj-22": ["live.numbox[4]", "live.numbox", 0],
      "obj-47::obj-23": ["live.numbox[7]", "live.numbox", 0],
      "obj-47::obj-24": ["live.numbox[13]", "live.numbox", 0],
      "obj-47::obj-25": ["live.numbox[8]", "live.numbox", 0],
      "obj-62": ["live.numbox[5]", "live.numbox", 0],
      "obj-63": ["Scale X", "Scale X", 0],
      "obj-96": ["live.text[5]", "live.text", 0],
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