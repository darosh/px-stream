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
          "id": "obj-80",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [768, 376, 64, 22],
          "text": "s ---param"
        }
      },
      {
        "box": {
          "id": "obj-108",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["bang", ""],
          "patching_rect": [896, 80, 50, 22],
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
          "patching_rect": [896, 120, 22, 22],
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
          "patching_rect": [832, 80, 30, 22],
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
          "patching_rect": [832, 120, 33, 22],
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
          "patching_rect": [832, 160, 30, 22],
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
          "patching_rect": [832, 192, 42, 22],
          "text": "gate 2"
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
          "patching_rect": [832, 40, 40, 15],
          "presentation": 1,
          "presentation_rect": [88, 51, 32, 15],
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
          "id": "obj-69",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [464, 1224, 89, 22],
          "text": "prepend fading"
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
          "patching_rect": [464, 1192, 44, 15],
          "presentation": 1,
          "presentation_rect": [136, 108, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [0],
              "parameter_initial_enable": 1,
              "parameter_longname": "live.numbox[13]",
              "parameter_mmax": 1,
              "parameter_mmin": -1,
              "parameter_modmode": 4,
              "parameter_shortname": "live.numbox",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "live.numbox[20]"
        }
      },
      {
        "box": {
          "id": "obj-89",
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
            "rect": [0, 0, 661.5, 475.20000000000005],
            "gridsize": [8, 8],
            "gridsnaponopen": 2,
            "integercoordinates": 1,
            "boxes": [
              {
                "box": {
                  "id": "obj-84",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 3,
                  "outlettype": ["bang", "bang", ""],
                  "patching_rect": [48, 104, 60, 22],
                  "text": "select 1 0"
                }
              },
              {
                "box": {
                  "id": "obj-83",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [184, 144, 192, 22],
                  "text": "textcolor \"Text / Icon Off (Inactive)\""
                }
              },
              {
                "box": {
                  "id": "obj-81",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [48, 144, 120, 22],
                  "text": "textcolor \"Text / Icon\""
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-85",
                  "index": 1,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [48, 40, 30, 30]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-86",
                  "index": 1,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [112, 224, 30, 30]
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "destination": ["obj-86", 0],
                  "source": ["obj-81", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-86", 0],
                  "source": ["obj-83", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-81", 0],
                  "source": ["obj-84", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-83", 0],
                  "source": ["obj-84", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-84", 0],
                  "source": ["obj-85", 0]
                }
              }
            ]
          },
          "patching_rect": [344, 936, 40, 22],
          "text": "p"
        }
      },
      {
        "box": {
          "id": "obj-90",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [384, 1040, 57, 22],
          "text": "active $1"
        }
      },
      {
        "box": {
          "id": "obj-91",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [384, 992, 30, 22],
          "text": "> 0."
        }
      },
      {
        "box": {
          "id": "obj-88",
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
            "rect": [0, 0, 661.5, 475.20000000000005],
            "gridsize": [8, 8],
            "gridsnaponopen": 2,
            "integercoordinates": 1,
            "boxes": [
              {
                "box": {
                  "id": "obj-84",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 3,
                  "outlettype": ["bang", "bang", ""],
                  "patching_rect": [48, 104, 60, 22],
                  "text": "select 1 0"
                }
              },
              {
                "box": {
                  "id": "obj-83",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [184, 144, 192, 22],
                  "text": "textcolor \"Text / Icon Off (Inactive)\""
                }
              },
              {
                "box": {
                  "id": "obj-81",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [48, 144, 120, 22],
                  "text": "textcolor \"Text / Icon\""
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-85",
                  "index": 1,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [48, 40, 30, 30]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-86",
                  "index": 1,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [112, 224, 30, 30]
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "destination": ["obj-86", 0],
                  "source": ["obj-81", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-86", 0],
                  "source": ["obj-83", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-81", 0],
                  "source": ["obj-84", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-83", 0],
                  "source": ["obj-84", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-84", 0],
                  "source": ["obj-85", 0]
                }
              }
            ]
          },
          "patching_rect": [112, 936, 40, 22],
          "text": "p"
        }
      },
      {
        "box": {
          "id": "obj-77",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [24, 1224, 57, 22],
          "text": "active $1"
        }
      },
      {
        "box": {
          "id": "obj-76",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [24, 1184, 32, 22],
          "text": "!= 0."
        }
      },
      {
        "box": {
          "id": "obj-75",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [200, 1184, 64, 22],
          "text": "s ---param"
        }
      },
      {
        "box": {
          "id": "obj-73",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [112, 1112, 79, 22],
          "text": "prepend fade"
        }
      },
      {
        "box": {
          "id": "obj-74",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [288, 1112, 116, 22],
          "text": "prepend distort_freq"
        }
      },
      {
        "box": {
          "id": "obj-72",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [616, 1104, 64, 22],
          "text": "s ---param"
        }
      },
      {
        "box": {
          "id": "obj-71",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [728, 1016, 131, 22],
          "text": "prepend disp_b_phase"
        }
      },
      {
        "box": {
          "id": "obj-68",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [688, 976, 131, 22],
          "text": "prepend disp_g_phase"
        }
      },
      {
        "box": {
          "id": "obj-67",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [648, 936, 128, 22],
          "text": "prepend disp_r_phase"
        }
      },
      {
        "box": {
          "id": "obj-28",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [488, 936, 114, 22],
          "text": "prepend disp_angle"
        }
      },
      {
        "box": {
          "id": "obj-64",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [520, 472, 41, 22],
          "text": "pak f f"
        }
      },
      {
        "box": {
          "id": "obj-56",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [728, 512, 135, 22],
          "text": "prepend shape_rotation"
        }
      },
      {
        "box": {
          "id": "obj-48",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [680, 472, 123, 22],
          "text": "prepend shape_scale"
        }
      },
      {
        "box": {
          "id": "obj-30",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [600, 576, 123, 22],
          "text": "prepend grid_rotation"
        }
      },
      {
        "box": {
          "id": "obj-29",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [520, 504, 116, 22],
          "text": "prepend grid_center"
        }
      },
      {
        "box": {
          "id": "obj-26",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [184, 728, 30, 22],
          "text": "- 1"
        }
      },
      {
        "box": {
          "id": "obj-23",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [16, 728, 32, 22],
          "text": "!= 0."
        }
      },
      {
        "box": {
          "id": "obj-4",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [16, 760, 128, 22],
          "text": "prepend use_mapping"
        }
      },
      {
        "box": {
          "id": "obj-66",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [664, 896, 44, 15],
          "presentation": 1,
          "presentation_rect": [222, 153, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [180],
              "parameter_initial_enable": 1,
              "parameter_longname": "live.numbox[41]",
              "parameter_mmax": 360,
              "parameter_modmode": 4,
              "parameter_shortname": "live.numbox",
              "parameter_type": 0,
              "parameter_units": "B",
              "parameter_unitstyle": 9
            }
          },
          "varname": "live.numbox[19]"
        }
      },
      {
        "box": {
          "id": "obj-65",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [608, 896, 44, 15],
          "presentation": 1,
          "presentation_rect": [179, 153, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [90],
              "parameter_initial_enable": 1,
              "parameter_longname": "live.numbox[40]",
              "parameter_mmax": 360,
              "parameter_modmode": 4,
              "parameter_shortname": "live.numbox",
              "parameter_type": 0,
              "parameter_units": "G",
              "parameter_unitstyle": 9
            }
          },
          "varname": "live.numbox[18]"
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
          "patching_rect": [552, 896, 44, 15],
          "presentation": 1,
          "presentation_rect": [136, 153, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [0],
              "parameter_initial_enable": 1,
              "parameter_longname": "live.numbox[26]",
              "parameter_mmax": 360,
              "parameter_modmode": 4,
              "parameter_shortname": "live.numbox",
              "parameter_type": 0,
              "parameter_units": "R",
              "parameter_unitstyle": 9
            }
          },
          "varname": "live.numbox[16]"
        }
      },
      {
        "box": {
          "id": "obj-61",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [288, 1008, 44, 15],
          "presentation": 1,
          "presentation_rect": [179, 52, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [10],
              "parameter_initial_enable": 1,
              "parameter_longname": "live.numbox[12]",
              "parameter_mmax": 20,
              "parameter_modmode": 4,
              "parameter_shortname": "live.numbox",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "live.numbox[15]"
        }
      },
      {
        "box": {
          "id": "obj-62",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [288, 976, 64, 18],
          "presentation": 1,
          "presentation_rect": [176, 38, 56, 18],
          "saved_attribute_attributes": {
            "textcolor": {"expression": "themecolor.live_control_fg_off_zombie"}
          },
          "text": "Freq.",
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
          "id": "obj-59",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [744, 440, 44, 15],
          "presentation": 1,
          "presentation_rect": [88, 134, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [0],
              "parameter_initial_enable": 1,
              "parameter_longname": "live.numbox[10]",
              "parameter_mmax": 360,
              "parameter_modmode": 4,
              "parameter_shortname": "live.numbox",
              "parameter_type": 0,
              "parameter_units": "°",
              "parameter_unitstyle": 9
            }
          },
          "varname": "live.numbox[11]"
        }
      },
      {
        "box": {
          "id": "obj-60",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [680, 440, 44, 15],
          "presentation": 1,
          "presentation_rect": [45, 134, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [100],
              "parameter_initial_enable": 1,
              "parameter_longname": "live.numbox[11]",
              "parameter_mmax": 100,
              "parameter_modmode": 4,
              "parameter_shortname": "live.numbox",
              "parameter_type": 0,
              "parameter_unitstyle": 5
            }
          },
          "varname": "live.numbox[14]"
        }
      },
      {
        "box": {
          "id": "obj-57",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [600, 440, 44, 15],
          "presentation": 1,
          "presentation_rect": [88, 115, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [0],
              "parameter_initial_enable": 1,
              "parameter_longname": "live.numbox[9]",
              "parameter_mmax": 360,
              "parameter_modmode": 4,
              "parameter_shortname": "live.numbox",
              "parameter_type": 0,
              "parameter_units": "°",
              "parameter_unitstyle": 9
            }
          },
          "varname": "live.numbox[10]"
        }
      },
      {
        "box": {
          "id": "obj-45",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [544, 440, 44, 15],
          "presentation": 1,
          "presentation_rect": [45, 115, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [0.5],
              "parameter_initial_enable": 1,
              "parameter_longname": "live.numbox[32]",
              "parameter_mmax": 1,
              "parameter_modmode": 4,
              "parameter_shortname": "live.numbox",
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
          "id": "obj-47",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [496, 440, 44, 15],
          "presentation": 1,
          "presentation_rect": [2, 115, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [0.5],
              "parameter_initial_enable": 1,
              "parameter_longname": "live.numbox[34]",
              "parameter_mmax": 1,
              "parameter_modmode": 4,
              "parameter_shortname": "live.numbox",
              "parameter_type": 0,
              "parameter_units": "x",
              "parameter_unitstyle": 9
            }
          },
          "varname": "live.numbox[9]"
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
          "patching_rect": [400, 440, 44, 15],
          "presentation": 1,
          "presentation_rect": [45, 83, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [0],
              "parameter_initial_enable": 1,
              "parameter_longname": "live.numbox[39]",
              "parameter_mmax": 1,
              "parameter_mmin": -1,
              "parameter_modmode": 4,
              "parameter_shortname": "live.numbox",
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
          "id": "obj-44",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [336, 440, 44, 15],
          "presentation": 1,
          "presentation_rect": [2, 83, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [0],
              "parameter_initial_enable": 1,
              "parameter_longname": "live.numbox[23]",
              "parameter_mmax": 1,
              "parameter_mmin": -1,
              "parameter_modmode": 4,
              "parameter_shortname": "live.numbox",
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
          "id": "obj-35",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [848, 256, 44, 15],
          "presentation": 1,
          "presentation_rect": [45, 51, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [0.02],
              "parameter_initial_enable": 1,
              "parameter_longname": "live.numbox[38]",
              "parameter_mmax": 1,
              "parameter_mmin": 0.001,
              "parameter_modmode": 4,
              "parameter_shortname": "live.numbox",
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
          "id": "obj-33",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [896, 160, 44, 15],
          "presentation": 1,
          "presentation_rect": [2, 51, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [0.02],
              "parameter_initial_enable": 1,
              "parameter_longname": "live.numbox[31]",
              "parameter_mmax": 1,
              "parameter_mmin": 0.001,
              "parameter_modmode": 4,
              "parameter_shortname": "live.numbox",
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
          "id": "obj-31",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [728, 800, 64, 22],
          "text": "s ---param"
        }
      },
      {
        "box": {
          "automation": "0",
          "automationon": "1",
          "id": "obj-32",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "parameter_enable": 1,
          "patching_rect": [344, 704, 44, 15],
          "presentation": 1,
          "presentation_rect": [222, 20, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_enum": ["0", "1"],
              "parameter_longname": "live.text[13]",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "live.text",
              "parameter_type": 2
            }
          },
          "text": "Invert",
          "texton": "Invert",
          "varname": "live.text[1]"
        }
      },
      {
        "box": {
          "id": "obj-138",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [496, 760, 153, 22],
          "text": "prepend mapping_intensity"
        }
      },
      {
        "box": {
          "id": "obj-130",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [184, 760, 139, 22],
          "text": "prepend mapping_mode"
        }
      },
      {
        "box": {
          "id": "obj-128",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [344, 760, 138, 22],
          "text": "prepend mapping_invert"
        }
      },
      {
        "box": {
          "id": "obj-127",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [728, 744, 111, 22],
          "text": "prepend use_oklab"
        }
      },
      {
        "box": {
          "id": "obj-124",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [264, 848, 64, 22],
          "text": "s ---param"
        }
      },
      {
        "box": {
          "id": "obj-112",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["", "", "float"],
          "parameter_enable": 1,
          "patching_rect": [88, 680, 100, 15],
          "presentation": 1,
          "presentation_rect": [136, 20, 83, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_enum": [
                "OKLAB Lightness",
                "OKLAB Chroma",
                "OKLAB Hue",
                " RGB Luminance",
                "RGB Saturation",
                "RGB Average",
                "RGB Max",
                "RGB Min"
              ],
              "parameter_initial": [3],
              "parameter_initial_enable": 1,
              "parameter_longname": "live.menu",
              "parameter_mmax": 7,
              "parameter_modmode": 0,
              "parameter_shortname": "live.menu",
              "parameter_type": 2
            }
          },
          "varname": "live.menu"
        }
      },
      {
        "box": {
          "automation": "0",
          "automationon": "1",
          "id": "obj-105",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "parameter_enable": 1,
          "patching_rect": [728, 704, 44, 15],
          "presentation": 1,
          "presentation_rect": [179, 80, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_enum": ["0", "1"],
              "parameter_initial": [1],
              "parameter_initial_enable": 1,
              "parameter_longname": "live.text[1]",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "live.text",
              "parameter_type": 2
            }
          },
          "text": "RGB",
          "texton": "OKLAB",
          "varname": "live.text[3]"
        }
      },
      {
        "box": {
          "id": "obj-104",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [496, 712, 44, 15],
          "presentation": 1,
          "presentation_rect": [192, 2, 70, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [0],
              "parameter_initial_enable": 1,
              "parameter_longname": "live.numbox[22]",
              "parameter_mmax": 2,
              "parameter_modmode": 4,
              "parameter_shortname": "live.numbox",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "live.numbox[17]"
        }
      },
      {
        "box": {
          "id": "obj-103",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [496, 680, 64, 18],
          "presentation": 1,
          "presentation_rect": [134, 1, 58, 18],
          "text": "Modulation",
          "textjustification": 0
        }
      },
      {
        "box": {
          "id": "obj-27",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [280, 192, 90, 22],
          "text": "prepend param"
        }
      },
      {
        "box": {
          "id": "obj-25",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [280, 160, 62, 22],
          "text": "r ---param"
        }
      },
      {
        "box": {
          "id": "obj-24",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [16, 488, 118, 22],
          "text": "prepend shape_type"
        }
      },
      {
        "box": {
          "id": "obj-142",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [408, 608, 64, 22],
          "text": "s ---param"
        }
      },
      {
        "box": {
          "id": "obj-22",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [24, 1064, 111, 22],
          "text": "prepend smoothing"
        }
      },
      {
        "box": {
          "id": "obj-21",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [448, 984, 127, 22],
          "text": "prepend displacement"
        }
      },
      {
        "box": {
          "id": "obj-20",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [200, 1064, 138, 22],
          "text": "prepend edge_distortion"
        }
      },
      {
        "box": {
          "id": "obj-16",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [384, 512, 117, 22],
          "text": "prepend grid_shift_y"
        }
      },
      {
        "box": {
          "id": "obj-14",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [336, 472, 117, 22],
          "text": "prepend grid_shift_x"
        }
      },
      {
        "box": {
          "id": "obj-13",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [824, 336, 121, 22],
          "text": "prepend resolution_y"
        }
      },
      {
        "box": {
          "id": "obj-7",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [160, 480, 134, 22],
          "text": "prepend preview_mode"
        }
      },
      {
        "box": {
          "id": "obj-50",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [200, 1016, 44, 15],
          "presentation": 1,
          "presentation_rect": [136, 52, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [0],
              "parameter_initial_enable": 1,
              "parameter_longname": "live.numbox[4]",
              "parameter_mmax": 1,
              "parameter_modmode": 4,
              "parameter_shortname": "live.numbox",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "live.numbox[6]"
        }
      },
      {
        "box": {
          "id": "obj-51",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [448, 896, 44, 15],
          "presentation": 1,
          "presentation_rect": [136, 137, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [0],
              "parameter_initial_enable": 1,
              "parameter_longname": "live.numbox[5]",
              "parameter_mmax": 1,
              "parameter_modmode": 4,
              "parameter_shortname": "live.numbox",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "live.numbox[7]"
        }
      },
      {
        "box": {
          "id": "obj-52",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [24, 1016, 44, 15],
          "presentation": 1,
          "presentation_rect": [136, 80, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [0],
              "parameter_initial_enable": 1,
              "parameter_longname": "live.numbox[6]",
              "parameter_mmax": 1,
              "parameter_modmode": 4,
              "parameter_shortname": "live.numbox",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "live.numbox[8]"
        }
      },
      {
        "box": {
          "id": "obj-53",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [504, 896, 44, 15],
          "presentation": 1,
          "presentation_rect": [179, 137, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [0],
              "parameter_initial_enable": 1,
              "parameter_longname": "live.numbox[7]",
              "parameter_mmax": 360,
              "parameter_modmode": 4,
              "parameter_shortname": "live.numbox",
              "parameter_type": 0,
              "parameter_units": "°",
              "parameter_unitstyle": 9
            }
          },
          "varname": "live.numbox[12]"
        }
      },
      {
        "box": {
          "id": "obj-54",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [112, 1016, 44, 15],
          "presentation": 1,
          "presentation_rect": [179, 108, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [0.5],
              "parameter_initial_enable": 1,
              "parameter_longname": "live.numbox[29]",
              "parameter_mmax": 3,
              "parameter_modmode": 4,
              "parameter_shortname": "live.numbox",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "live.numbox[13]"
        }
      },
      {
        "box": {
          "id": "obj-49",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [24, 976, 64, 18],
          "presentation": 1,
          "presentation_rect": [134, 66, 48, 18],
          "text": "Smooth",
          "textjustification": 0
        }
      },
      {
        "box": {
          "id": "obj-39",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [200, 976, 64, 18],
          "presentation": 1,
          "presentation_rect": [134, 38, 56, 18],
          "text": "Distort.",
          "textjustification": 0
        }
      },
      {
        "box": {
          "id": "obj-37",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["", "", "float"],
          "parameter_enable": 1,
          "patching_rect": [160, 448, 100, 15],
          "presentation": 1,
          "presentation_rect": [46, 2, 56, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_enum": ["Normal", "Grid"],
              "parameter_initial": [0],
              "parameter_initial_enable": 1,
              "parameter_longname": "live.menu[3]",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "live.menu[3]",
              "parameter_type": 2
            }
          },
          "varname": "live.menu[3]"
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
          "id": "obj-36",
          "maxclass": "live.tab",
          "mode": 1,
          "num_lines_patching": 2,
          "num_lines_presentation": 1,
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["", "", "float"],
          "parameter_enable": 1,
          "patching_rect": [16, 440, 113, 27],
          "presentation": 1,
          "presentation_rect": [2, 20, 126, 15],
          "saved_attribute_attributes": {
            "focusbordercolor": {"expression": ""},
            "valueof": {
              "parameter_enum": ["4", "C", "C6", "6", "3"],
              "parameter_initial": [0],
              "parameter_initial_enable": 1,
              "parameter_longname": "Channel[3]",
              "parameter_mmax": 4,
              "parameter_modmode": 0,
              "parameter_shortname": "Channel",
              "parameter_type": 2,
              "parameter_unitstyle": 9
            }
          },
          "spacing_x": 3,
          "spacing_y": 3,
          "varname": "live.tab[4]"
        }
      },
      {
        "box": {
          "id": "obj-125",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [768, 288, 121, 22],
          "text": "prepend resolution_x"
        }
      },
      {
        "box": {
          "id": "obj-122",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [568, 48, 152, 22],
          "text": "expr 130 + ($i1 == 1) * 134"
        }
      },
      {
        "box": {
          "id": "obj-121",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [568, 88, 69, 22],
          "text": "setwidth $1"
        }
      },
      {
        "box": {
          "id": "obj-120",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["bang", "int", "int"],
          "patching_rect": [568, 128, 83, 22],
          "text": "live.thisdevice"
        }
      },
      {
        "box": {
          "activebgoncolor": [
            0.594473705410263,
            0.720560630419913,
            0.928309050695498,
            1
          ],
          "id": "obj-87",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "parameter_enable": 1,
          "patching_rect": [568, 16, 44, 15],
          "presentation": 1,
          "presentation_rect": [106, 2, 22, 15],
          "saved_attribute_attributes": {
            "activebgoncolor": {"expression": "themecolor.live_value_arc"},
            "valueof": {
              "parameter_enum": ["val1", "val2"],
              "parameter_initial": [1],
              "parameter_initial_enable": 1,
              "parameter_longname": "live.text[8]",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "live.text",
              "parameter_type": 2
            }
          },
          "text": "...",
          "texton": "...",
          "varname": "live.text[13]"
        }
      },
      {
        "box": {
          "id": "obj-1",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [176, 256, 60, 22],
          "text": "zl.change"
        }
      },
      {
        "box": {
          "id": "obj-3",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [104, 176, 30, 22],
          "text": "t l l"
        }
      },
      {
        "box": {
          "id": "obj-2",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [176, 224, 46, 22],
          "text": "pack i i"
        }
      },
      {
        "box": {
          "id": "obj-8",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 5,
          "outlettype": ["", "", "int", "int", "int"],
          "patching_rect": [176, 176, 84, 22],
          "text": "unpack s s i i i"
        }
      },
      {
        "box": {
          "filename": "PX._pixelization.jxs",
          "id": "obj-5",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["jit_gl_texture", ""],
          "patching_rect": [280, 240, 249, 22],
          "text": "jit.gl.slab px-stream @file PX._pixelization.jxs",
          "textfile": {
            "filename": "PX._pixelization.jxs",
            "flags": 0,
            "embed": 0,
            "autowatch": 1
          },
          "varname": "jit.gl.slab_AA"
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
          "patching_rect": [8, 328, 239, 32],
          "viewvisibility": 1
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
          "patching_rect": [280, 280, 80, 22],
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
          "patching_rect": [256, 328, 240, 32],
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
          "patching_rect": [8, 216, 31, 22],
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
          "patching_rect": [8, 184, 54, 22],
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
          "patching_rect": [8, 280, 100, 20],
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
          "varname": "live.tab[1]",
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
      },
      {
        "box": {
          "id": "obj-38",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [168, 416, 48, 18],
          "presentation": 1,
          "presentation_rect": [0, 1, 42, 18],
          "text": "Preview",
          "textjustification": 0
        }
      },
      {
        "box": {
          "id": "obj-58",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [680, 392, 48, 18],
          "presentation": 1,
          "presentation_rect": [0, 133, 40, 18],
          "text": "Shape",
          "textjustification": 0
        }
      },
      {
        "box": {
          "id": "obj-46",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [496, 400, 48, 18],
          "presentation": 1,
          "presentation_rect": [0, 101, 46, 18],
          "text": "Rotation",
          "textjustification": 0
        }
      },
      {
        "box": {
          "id": "obj-43",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [328, 400, 48, 18],
          "presentation": 1,
          "presentation_rect": [0, 69, 64, 18],
          "text": "Shift",
          "textjustification": 0
        }
      },
      {
        "box": {
          "id": "obj-34",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [768, 216, 64, 18],
          "presentation": 1,
          "presentation_rect": [0, 37, 54, 18],
          "text": "Resolution",
          "textjustification": 0
        }
      },
      {
        "box": {
          "id": "obj-19",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [464, 1152, 64, 18],
          "presentation": 1,
          "presentation_rect": [134, 94, 48, 18],
          "text": "Fading",
          "textjustification": 0
        }
      },
      {
        "box": {
          "id": "obj-40",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [112, 976, 64, 18],
          "presentation": 1,
          "presentation_rect": [176, 94, 48, 18],
          "saved_attribute_attributes": {
            "textcolor": {"expression": "themecolor.live_control_fg_off_zombie"}
          },
          "text": "Fade",
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
          "id": "obj-55",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [448, 864, 80, 18],
          "presentation": 1,
          "presentation_rect": [134, 123, 74, 18],
          "text": "Displacement",
          "textjustification": 0
        }
      }
    ],
    "lines": [
      {"patchline": {"destination": ["obj-42", 4], "source": ["obj-1", 0]}},
      {"patchline": {"destination": ["obj-108", 0], "source": ["obj-100", 0]}},
      {"patchline": {"destination": ["obj-100", 0], "source": ["obj-101", 0]}},
      {"patchline": {"destination": ["obj-99", 0], "source": ["obj-101", 1]}},
      {"patchline": {"destination": ["obj-33", 0], "source": ["obj-102", 0]}},
      {
        "patchline": {
          "destination": ["obj-138", 0],
          "order": 0,
          "source": ["obj-104", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-23", 0],
          "order": 1,
          "source": ["obj-104", 0]
        }
      },
      {"patchline": {"destination": ["obj-127", 0], "source": ["obj-105", 0]}},
      {"patchline": {"destination": ["obj-102", 0], "source": ["obj-108", 0]}},
      {"patchline": {"destination": ["obj-10", 1], "source": ["obj-11", 1]}},
      {"patchline": {"destination": ["obj-10", 0], "source": ["obj-11", 0]}},
      {"patchline": {"destination": ["obj-26", 0], "source": ["obj-112", 0]}},
      {
        "patchline": {
          "destination": ["obj-3", 0],
          "order": 1,
          "source": ["obj-12", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-42", 2],
          "order": 0,
          "source": ["obj-12", 0]
        }
      },
      {"patchline": {"destination": ["obj-120", 0], "source": ["obj-121", 0]}},
      {"patchline": {"destination": ["obj-121", 0], "source": ["obj-122", 0]}},
      {"patchline": {"destination": ["obj-80", 0], "source": ["obj-125", 0]}},
      {"patchline": {"destination": ["obj-31", 0], "source": ["obj-127", 0]}},
      {"patchline": {"destination": ["obj-124", 0], "source": ["obj-128", 0]}},
      {"patchline": {"destination": ["obj-80", 0], "source": ["obj-13", 0]}},
      {"patchline": {"destination": ["obj-124", 0], "source": ["obj-130", 0]}},
      {"patchline": {"destination": ["obj-124", 0], "source": ["obj-138", 0]}},
      {"patchline": {"destination": ["obj-142", 0], "source": ["obj-14", 0]}},
      {"patchline": {"destination": ["obj-142", 0], "source": ["obj-16", 0]}},
      {"patchline": {"destination": ["obj-15", 0], "source": ["obj-17", 0]}},
      {
        "patchline": {
          "destination": ["obj-69", 0],
          "order": 0,
          "source": ["obj-18", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-76", 0],
          "order": 1,
          "source": ["obj-18", 0]
        }
      },
      {"patchline": {"destination": ["obj-1", 0], "source": ["obj-2", 0]}},
      {"patchline": {"destination": ["obj-75", 0], "source": ["obj-20", 0]}},
      {"patchline": {"destination": ["obj-72", 0], "source": ["obj-21", 0]}},
      {"patchline": {"destination": ["obj-75", 0], "source": ["obj-22", 0]}},
      {"patchline": {"destination": ["obj-4", 0], "source": ["obj-23", 0]}},
      {"patchline": {"destination": ["obj-142", 0], "source": ["obj-24", 0]}},
      {"patchline": {"destination": ["obj-27", 0], "source": ["obj-25", 0]}},
      {"patchline": {"destination": ["obj-130", 0], "source": ["obj-26", 0]}},
      {"patchline": {"destination": ["obj-5", 0], "source": ["obj-27", 0]}},
      {"patchline": {"destination": ["obj-72", 0], "source": ["obj-28", 0]}},
      {"patchline": {"destination": ["obj-142", 0], "source": ["obj-29", 0]}},
      {"patchline": {"destination": ["obj-5", 0], "source": ["obj-3", 0]}},
      {"patchline": {"destination": ["obj-8", 0], "source": ["obj-3", 1]}},
      {"patchline": {"destination": ["obj-142", 0], "source": ["obj-30", 0]}},
      {"patchline": {"destination": ["obj-12", 1], "source": ["obj-309", 0]}},
      {"patchline": {"destination": ["obj-128", 0], "source": ["obj-32", 0]}},
      {"patchline": {"destination": ["obj-98", 1], "source": ["obj-33", 0]}},
      {"patchline": {"destination": ["obj-13", 0], "source": ["obj-35", 0]}},
      {"patchline": {"destination": ["obj-24", 0], "source": ["obj-36", 0]}},
      {"patchline": {"destination": ["obj-42", 0], "source": ["obj-366", 0]}},
      {"patchline": {"destination": ["obj-7", 0], "source": ["obj-37", 0]}},
      {"patchline": {"destination": ["obj-376", 0], "source": ["obj-372", 0]}},
      {"patchline": {"destination": ["obj-366", 0], "source": ["obj-376", 0]}},
      {"patchline": {"destination": ["obj-124", 0], "source": ["obj-4", 0]}},
      {"patchline": {"destination": ["obj-16", 0], "source": ["obj-41", 0]}},
      {"patchline": {"destination": ["obj-12", 0], "source": ["obj-42", 4]}},
      {"patchline": {"destination": ["obj-366", 0], "source": ["obj-42", 2]}},
      {"patchline": {"destination": ["obj-14", 0], "source": ["obj-44", 0]}},
      {"patchline": {"destination": ["obj-64", 1], "source": ["obj-45", 0]}},
      {"patchline": {"destination": ["obj-64", 0], "source": ["obj-47", 0]}},
      {"patchline": {"destination": ["obj-142", 0], "source": ["obj-48", 0]}},
      {"patchline": {"destination": ["obj-42", 3], "source": ["obj-5", 0]}},
      {
        "patchline": {
          "destination": ["obj-20", 0],
          "order": 1,
          "source": ["obj-50", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-91", 0],
          "order": 0,
          "source": ["obj-50", 0]
        }
      },
      {"patchline": {"destination": ["obj-21", 0], "source": ["obj-51", 0]}},
      {"patchline": {"destination": ["obj-22", 0], "source": ["obj-52", 0]}},
      {"patchline": {"destination": ["obj-28", 0], "source": ["obj-53", 0]}},
      {"patchline": {"destination": ["obj-73", 0], "source": ["obj-54", 0]}},
      {"patchline": {"destination": ["obj-142", 0], "source": ["obj-56", 0]}},
      {"patchline": {"destination": ["obj-30", 0], "source": ["obj-57", 0]}},
      {"patchline": {"destination": ["obj-56", 0], "source": ["obj-59", 0]}},
      {"patchline": {"destination": ["obj-48", 0], "source": ["obj-60", 1]}},
      {"patchline": {"destination": ["obj-74", 0], "source": ["obj-61", 0]}},
      {"patchline": {"destination": ["obj-67", 0], "source": ["obj-63", 0]}},
      {"patchline": {"destination": ["obj-29", 0], "source": ["obj-64", 0]}},
      {"patchline": {"destination": ["obj-68", 0], "source": ["obj-65", 0]}},
      {"patchline": {"destination": ["obj-71", 0], "source": ["obj-66", 0]}},
      {"patchline": {"destination": ["obj-72", 0], "source": ["obj-67", 0]}},
      {"patchline": {"destination": ["obj-72", 0], "source": ["obj-68", 0]}},
      {"patchline": {"destination": ["obj-75", 0], "source": ["obj-69", 0]}},
      {"patchline": {"destination": ["obj-142", 0], "source": ["obj-7", 0]}},
      {"patchline": {"destination": ["obj-72", 0], "source": ["obj-71", 0]}},
      {"patchline": {"destination": ["obj-75", 0], "source": ["obj-73", 0]}},
      {"patchline": {"destination": ["obj-75", 0], "source": ["obj-74", 0]}},
      {
        "patchline": {
          "destination": ["obj-77", 0],
          "order": 1,
          "source": ["obj-76", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-88", 0],
          "order": 0,
          "source": ["obj-76", 0]
        }
      },
      {"patchline": {"destination": ["obj-54", 0], "source": ["obj-77", 0]}},
      {"patchline": {"destination": ["obj-2", 1], "source": ["obj-8", 3]}},
      {"patchline": {"destination": ["obj-2", 0], "source": ["obj-8", 2]}},
      {"patchline": {"destination": ["obj-122", 0], "source": ["obj-87", 0]}},
      {"patchline": {"destination": ["obj-40", 0], "source": ["obj-88", 0]}},
      {"patchline": {"destination": ["obj-62", 0], "source": ["obj-89", 0]}},
      {"patchline": {"destination": ["obj-6", 0], "source": ["obj-9", 0]}},
      {"patchline": {"destination": ["obj-61", 0], "source": ["obj-90", 0]}},
      {
        "patchline": {
          "destination": ["obj-89", 0],
          "order": 1,
          "source": ["obj-91", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-90", 0],
          "order": 0,
          "source": ["obj-91", 0]
        }
      },
      {"patchline": {"destination": ["obj-101", 0], "source": ["obj-96", 0]}},
      {
        "patchline": {
          "destination": ["obj-125", 0],
          "order": 1,
          "source": ["obj-98", 1]
        }
      },
      {"patchline": {"destination": ["obj-125", 0], "source": ["obj-98", 0]}},
      {
        "patchline": {
          "destination": ["obj-35", 0],
          "order": 0,
          "source": ["obj-98", 1]
        }
      },
      {"patchline": {"destination": ["obj-98", 0], "source": ["obj-99", 0]}}
    ],
    "parameters": {
      "obj-104": ["live.numbox[22]", "live.numbox", 0],
      "obj-105": ["live.text[1]", "live.text", 0],
      "obj-112": ["live.menu", "live.menu", 0],
      "obj-18": ["live.numbox[13]", "live.numbox", 0],
      "obj-32": ["live.text[13]", "live.text", 0],
      "obj-33": ["live.numbox[31]", "live.numbox", 0],
      "obj-35": ["live.numbox[38]", "live.numbox", 0],
      "obj-36": ["Channel[3]", "Channel", 0],
      "obj-366": ["Channel", "Channel", 0],
      "obj-37": ["live.menu[3]", "live.menu[3]", 0],
      "obj-41": ["live.numbox[39]", "live.numbox", 0],
      "obj-44": ["live.numbox[23]", "live.numbox", 0],
      "obj-45": ["live.numbox[32]", "live.numbox", 0],
      "obj-47": ["live.numbox[34]", "live.numbox", 0],
      "obj-50": ["live.numbox[4]", "live.numbox", 0],
      "obj-51": ["live.numbox[5]", "live.numbox", 0],
      "obj-52": ["live.numbox[6]", "live.numbox", 0],
      "obj-53": ["live.numbox[7]", "live.numbox", 0],
      "obj-54": ["live.numbox[29]", "live.numbox", 0],
      "obj-57": ["live.numbox[9]", "live.numbox", 0],
      "obj-59": ["live.numbox[10]", "live.numbox", 0],
      "obj-60": ["live.numbox[11]", "live.numbox", 0],
      "obj-61": ["live.numbox[12]", "live.numbox", 0],
      "obj-63": ["live.numbox[26]", "live.numbox", 0],
      "obj-65": ["live.numbox[40]", "live.numbox", 0],
      "obj-66": ["live.numbox[41]", "live.numbox", 0],
      "obj-87": ["live.text[8]", "live.text", 0],
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