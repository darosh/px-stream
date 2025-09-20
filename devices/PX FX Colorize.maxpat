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
    "rect": [33, 71, 578, 508],
    "openinpresentation": 1,
    "gridonopen": 2,
    "gridsize": [8, 8],
    "gridsnaponopen": 2,
    "objectsnaponopen": 0,
    "enablehscroll": 0,
    "enablevscroll": 0,
    "style": "default",
    "integercoordinates": 1,
    "boxes": [
      {
        "box": {
          "id": "obj-143",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [872, 808, 140, 22],
          "text": "prepend mapping_mirror"
        }
      },
      {
        "box": {
          "id": "obj-142",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [424, 936, 64, 22],
          "text": "s ---param"
        }
      },
      {
        "box": {
          "id": "obj-141",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [152, 696, 116, 22],
          "text": "prepend range_max"
        }
      },
      {
        "box": {
          "id": "obj-140",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [32, 696, 113, 22],
          "text": "prepend range_min"
        }
      },
      {
        "box": {
          "id": "obj-139",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [784, 808, 84, 22],
          "text": "prepend falloff"
        }
      },
      {
        "box": {
          "id": "obj-138",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [632, 808, 141, 22],
          "text": "prepend mapping_phase"
        }
      },
      {
        "box": {
          "id": "obj-137",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [472, 808, 137, 22],
          "text": "prepend mapping_scale"
        }
      },
      {
        "box": {
          "id": "obj-136",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [336, 848, 141, 22],
          "text": "prepend posterize_curve"
        }
      },
      {
        "box": {
          "id": "obj-135",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [240, 816, 140, 22],
          "text": "prepend posterize_offset"
        }
      },
      {
        "box": {
          "id": "obj-134",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [144, 848, 151, 22],
          "text": "prepend posterize_smooth"
        }
      },
      {
        "box": {
          "id": "obj-133",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [48, 816, 142, 22],
          "text": "prepend posterize_levels"
        }
      },
      {
        "box": {
          "id": "obj-132",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [416, 696, 127, 22],
          "text": "prepend midpoint_pos"
        }
      },
      {
        "box": {
          "id": "obj-131",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [280, 696, 110, 22],
          "text": "prepend mid_width"
        }
      },
      {
        "box": {
          "id": "obj-130",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [560, 688, 139, 22],
          "text": "prepend mapping_mode"
        }
      },
      {
        "box": {
          "id": "obj-129",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [232, 592, 122, 22],
          "text": "prepend blend_mode"
        }
      },
      {
        "box": {
          "id": "obj-128",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [144, 552, 138, 22],
          "text": "prepend invert_mapping"
        }
      },
      {
        "box": {
          "id": "obj-127",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [24, 552, 111, 22],
          "text": "prepend use_oklab"
        }
      },
      {
        "box": {
          "id": "obj-126",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [280, 536, 109, 22],
          "text": "prepend luminosity"
        }
      },
      {
        "box": {
          "id": "obj-125",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [416, 536, 121, 22],
          "text": "prepend mix_amount"
        }
      },
      {
        "box": {
          "id": "obj-124",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [432, 616, 64, 22],
          "text": "s ---param"
        }
      },
      {
        "box": {
          "id": "obj-123",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [560, 536, 148, 22],
          "text": "prepend use_three_colors"
        }
      },
      {
        "box": {
          "id": "obj-122",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [568, 64, 145, 22],
          "text": "expr 130 + ($i1 == 1) * 88"
        }
      },
      {
        "box": {
          "id": "obj-121",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [568, 120, 69, 22],
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
          "patching_rect": [568, 176, 83, 22],
          "text": "live.thisdevice"
        }
      },
      {
        "box": {
          "id": "obj-118",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [48, 776, 44, 15],
          "presentation": 1,
          "presentation_rect": [133, 123, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [0],
              "parameter_initial_enable": 1,
              "parameter_longname": "live.numbox[27]",
              "parameter_mmax": 32,
              "parameter_mmin": 1,
              "parameter_modmode": 4,
              "parameter_shortname": "live.numbox",
              "parameter_type": 1,
              "parameter_unitstyle": 0
            }
          },
          "varname": "live.numbox[16]"
        }
      },
      {
        "box": {
          "automation": "0",
          "automationon": "1",
          "id": "obj-117",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "parameter_enable": 1,
          "patching_rect": [872, 768, 44, 15],
          "presentation": 1,
          "presentation_rect": [176, 63, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_enum": ["0", "1"],
              "parameter_initial": [0],
              "parameter_initial_enable": 1,
              "parameter_longname": "live.text[11]",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "live.text",
              "parameter_type": 1,
              "parameter_unitstyle": 0
            }
          },
          "text": "Mirror",
          "texton": "Mirror",
          "varname": "live.text[4]"
        }
      },
      {
        "box": {
          "id": "obj-113",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [632, 768, 44, 15],
          "presentation": 1,
          "presentation_rect": [176, 32, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [0],
              "parameter_initial_enable": 1,
              "parameter_longname": "live.numbox[25]",
              "parameter_mmax": 1,
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
          "id": "obj-116",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [472, 768, 44, 15],
          "presentation": 1,
          "presentation_rect": [133, 32, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [1],
              "parameter_initial_enable": 1,
              "parameter_longname": "live.numbox[26]",
              "parameter_mmax": 16,
              "parameter_mmin": 0.1,
              "parameter_modmode": 4,
              "parameter_shortname": "live.numbox",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "live.numbox[21]"
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
          "patching_rect": [560, 656, 100, 15],
          "presentation": 1,
          "presentation_rect": [133, 2, 83, 15],
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
          "id": "obj-111",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "parameter_enable": 1,
          "patching_rect": [224, 504, 44, 15],
          "presentation": 1,
          "presentation_rect": [45, 32, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_enum": ["0", "1"],
              "parameter_longname": "live.text[10]",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "live.text",
              "parameter_type": 2
            }
          },
          "text": "Blend",
          "texton": "Blend",
          "varname": "live.text[3]"
        }
      },
      {
        "box": {
          "automation": "0",
          "automationon": "1",
          "id": "obj-110",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "parameter_enable": 1,
          "patching_rect": [144, 504, 44, 15],
          "presentation": 1,
          "presentation_rect": [2, 32, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_enum": ["0", "1"],
              "parameter_longname": "live.text[9]",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "live.text",
              "parameter_type": 2
            }
          },
          "text": "Invert",
          "texton": "Invert",
          "varname": "live.text[2]"
        }
      },
      {
        "box": {
          "id": "obj-107",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [312, 512, 44, 15],
          "presentation": 1,
          "presentation_rect": [2, 15, 61, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [100],
              "parameter_initial_enable": 1,
              "parameter_longname": "live.numbox[24]",
              "parameter_mmax": 100,
              "parameter_modmode": 4,
              "parameter_shortname": "live.numbox",
              "parameter_type": 0,
              "parameter_unitstyle": 5
            }
          },
          "varname": "live.numbox[19]"
        }
      },
      {
        "box": {
          "id": "obj-106",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [416, 512, 44, 15],
          "presentation": 1,
          "presentation_rect": [67, 15, 61, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [100],
              "parameter_initial_enable": 1,
              "parameter_longname": "live.numbox[23]",
              "parameter_mmax": 100,
              "parameter_modmode": 4,
              "parameter_shortname": "live.numbox",
              "parameter_type": 1,
              "parameter_unitstyle": 5
            }
          },
          "varname": "live.numbox[18]"
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
          "patching_rect": [24, 504, 44, 15],
          "presentation": 1,
          "presentation_rect": [88, 32, 40, 15],
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
          "varname": "live.text[1]"
        }
      },
      {
        "box": {
          "id": "obj-97",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [152, 664, 44, 15],
          "presentation": 1,
          "presentation_rect": [176, 93, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [1],
              "parameter_initial_enable": 1,
              "parameter_longname": "live.numbox[19]",
              "parameter_mmax": 1,
              "parameter_modmode": 4,
              "parameter_shortname": "live.numbox",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "live.numbox[14]"
        }
      },
      {
        "box": {
          "id": "obj-100",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [32, 664, 44, 15],
          "presentation": 1,
          "presentation_rect": [133, 93, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [0],
              "parameter_initial_enable": 1,
              "parameter_longname": "live.numbox[20]",
              "parameter_mmax": 1,
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
          "id": "obj-104",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [784, 768, 44, 15],
          "presentation": 1,
          "presentation_rect": [133, 63, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [0],
              "parameter_initial_enable": 1,
              "parameter_longname": "live.numbox[22]",
              "parameter_mmax": 2,
              "parameter_mmin": -2,
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
          "id": "obj-91",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [320, 776, 44, 15],
          "presentation": 1,
          "presentation_rect": [176, 153, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [0],
              "parameter_initial_enable": 1,
              "parameter_longname": "live.numbox[17]",
              "parameter_mmax": 2,
              "parameter_mmin": -2,
              "parameter_modmode": 4,
              "parameter_shortname": "live.numbox",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "live.numbox[12]"
        }
      },
      {
        "box": {
          "id": "obj-94",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [240, 776, 44, 15],
          "presentation": 1,
          "presentation_rect": [133, 153, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [0],
              "parameter_initial_enable": 1,
              "parameter_longname": "live.numbox[18]",
              "parameter_mmax": 1,
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
          "id": "obj-90",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [144, 784, 44, 15],
          "presentation": 1,
          "presentation_rect": [176, 123, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [0],
              "parameter_initial_enable": 1,
              "parameter_longname": "live.numbox[16]",
              "parameter_mmax": 1,
              "parameter_modmode": 4,
              "parameter_shortname": "live.numbox",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "live.numbox[11]"
        }
      },
      {
        "box": {
          "activebgoncolor": [
            0.011764705882353,
            0.764705882352941,
            0.835294117647059,
            1
          ],
          "id": "obj-87",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "parameter_enable": 1,
          "patching_rect": [568, 24, 44, 15],
          "presentation": 1,
          "presentation_rect": [107, 135, 22, 15],
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
          "id": "obj-83",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "parameter_enable": 1,
          "patching_rect": [560, 504, 44, 15],
          "presentation": 1,
          "presentation_rect": [88, 135, 16, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_enum": ["val1", "val2"],
              "parameter_initial": [1],
              "parameter_initial_enable": 1,
              "parameter_longname": "live.text",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "live.text",
              "parameter_type": 2
            }
          },
          "text": "2",
          "texton": "3",
          "varname": "live.text"
        }
      },
      {
        "box": {
          "id": "obj-82",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [328, 664, 44, 15],
          "presentation": 1,
          "presentation_rect": [45, 135, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [0],
              "parameter_initial_enable": 1,
              "parameter_longname": "live.numbox[15]",
              "parameter_mmax": 2,
              "parameter_modmode": 4,
              "parameter_shortname": "live.numbox",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "live.numbox[10]"
        }
      },
      {
        "box": {
          "id": "obj-79",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [424, 664, 44, 15],
          "presentation": 1,
          "presentation_rect": [45, 119, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [0.5],
              "parameter_initial_enable": 1,
              "parameter_longname": "live.numbox[14]",
              "parameter_mmax": 1,
              "parameter_modmode": 4,
              "parameter_shortname": "live.numbox",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "live.numbox[9]"
        }
      },
      {
        "box": {
          "id": "obj-78",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [392, 176, 90, 22],
          "text": "prepend param"
        }
      },
      {
        "box": {
          "id": "obj-77",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [392, 128, 62, 22],
          "text": "r ---param"
        }
      },
      {
        "box": {
          "id": "obj-62",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [1592, 512, 64, 22],
          "text": "s ---param"
        }
      },
      {
        "box": {
          "id": "obj-63",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1592, 472, 89, 22],
          "text": "prepend color3"
        }
      },
      {
        "box": {
          "id": "obj-64",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1592, 424, 48, 22],
          "text": "pak f f f"
        }
      },
      {
        "box": {
          "id": "obj-65",
          "maxclass": "newobj",
          "numinlets": 6,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1712, 376, 97, 22],
          "text": "scale 0 255 0. 1."
        }
      },
      {
        "box": {
          "id": "obj-66",
          "maxclass": "newobj",
          "numinlets": 6,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1608, 376, 97, 22],
          "text": "scale 0 255 0. 1."
        }
      },
      {
        "box": {
          "id": "obj-67",
          "maxclass": "newobj",
          "numinlets": 6,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1504, 376, 97, 22],
          "text": "scale 0 255 0. 1."
        }
      },
      {
        "box": {
          "activebgcolor": [1, 1, 1, 1],
          "id": "obj-68",
          "maxclass": "live.button",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "parameter_enable": 1,
          "patching_rect": [1536, 144, 40, 40],
          "presentation": 1,
          "presentation_rect": [100, 52, 15, 15],
          "saved_attribute_attributes": {
            "activebgcolor": {"expression": ""},
            "valueof": {
              "parameter_enum": ["off", "on"],
              "parameter_longname": "live.button[3]",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "live.button",
              "parameter_type": 2
            }
          },
          "varname": "live.button[2]"
        }
      },
      {
        "box": {
          "id": "obj-69",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1440, 376, 46, 22],
          "text": "pak i i i"
        }
      },
      {
        "box": {
          "id": "obj-70",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1656, 200, 139, 22],
          "text": "activebgcolor $1 $2 $3 1"
        }
      },
      {
        "box": {
          "id": "obj-71",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["float", "float", "float"],
          "patching_rect": [1552, 240, 67, 22],
          "text": "unpack f f f"
        }
      },
      {
        "box": {
          "id": "obj-72",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["list", "bang"],
          "patching_rect": [1480, 200, 158, 22],
          "text": "colorpicker @compatibility 1"
        }
      },
      {
        "box": {
          "id": "obj-73",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [1672, 312, 44, 15],
          "presentation": 1,
          "presentation_rect": [88, 103, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [255],
              "parameter_initial_enable": 1,
              "parameter_longname": "live.numbox[11]",
              "parameter_mmax": 255,
              "parameter_modmode": 4,
              "parameter_shortname": "live.numbox",
              "parameter_type": 1,
              "parameter_units": "B",
              "parameter_unitstyle": 9
            }
          },
          "varname": "live.numbox[6]"
        }
      },
      {
        "box": {
          "id": "obj-74",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [1600, 312, 44, 15],
          "presentation": 1,
          "presentation_rect": [88, 87, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [255],
              "parameter_initial_enable": 1,
              "parameter_longname": "live.numbox[12]",
              "parameter_mmax": 255,
              "parameter_modmode": 4,
              "parameter_shortname": "live.numbox",
              "parameter_type": 1,
              "parameter_units": "G",
              "parameter_unitstyle": 9
            }
          },
          "varname": "live.numbox[7]"
        }
      },
      {
        "box": {
          "id": "obj-75",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [1528, 312, 44, 15],
          "presentation": 1,
          "presentation_rect": [88, 71, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [255],
              "parameter_initial_enable": 1,
              "parameter_longname": "live.numbox[13]",
              "parameter_mmax": 255,
              "parameter_modmode": 4,
              "parameter_shortname": "live.numbox",
              "parameter_type": 1,
              "parameter_units": "R",
              "parameter_unitstyle": 9
            }
          },
          "varname": "live.numbox[8]"
        }
      },
      {
        "box": {
          "id": "obj-48",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [1208, 512, 64, 22],
          "text": "s ---param"
        }
      },
      {
        "box": {
          "id": "obj-49",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1208, 472, 89, 22],
          "text": "prepend color2"
        }
      },
      {
        "box": {
          "id": "obj-50",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1208, 424, 48, 22],
          "text": "pak f f f"
        }
      },
      {
        "box": {
          "id": "obj-51",
          "maxclass": "newobj",
          "numinlets": 6,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1328, 376, 97, 22],
          "text": "scale 0 255 0. 1."
        }
      },
      {
        "box": {
          "id": "obj-52",
          "maxclass": "newobj",
          "numinlets": 6,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1224, 376, 97, 22],
          "text": "scale 0 255 0. 1."
        }
      },
      {
        "box": {
          "id": "obj-53",
          "maxclass": "newobj",
          "numinlets": 6,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1120, 376, 97, 22],
          "text": "scale 0 255 0. 1."
        }
      },
      {
        "box": {
          "activebgcolor": [0.498039215686275, 0, 0, 1],
          "id": "obj-54",
          "maxclass": "live.button",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "parameter_enable": 1,
          "patching_rect": [1152, 144, 40, 40],
          "presentation": 1,
          "presentation_rect": [57, 52, 15, 15],
          "saved_attribute_attributes": {
            "activebgcolor": {"expression": ""},
            "valueof": {
              "parameter_enum": ["off", "on"],
              "parameter_longname": "live.button[2]",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "live.button",
              "parameter_type": 2
            }
          },
          "varname": "live.button[1]"
        }
      },
      {
        "box": {
          "id": "obj-55",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1056, 376, 46, 22],
          "text": "pak i i i"
        }
      },
      {
        "box": {
          "id": "obj-56",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1272, 200, 139, 22],
          "text": "activebgcolor $1 $2 $3 1"
        }
      },
      {
        "box": {
          "id": "obj-57",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["float", "float", "float"],
          "patching_rect": [1168, 240, 67, 22],
          "text": "unpack f f f"
        }
      },
      {
        "box": {
          "id": "obj-58",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["list", "bang"],
          "patching_rect": [1096, 200, 158, 22],
          "text": "colorpicker @compatibility 1"
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
          "patching_rect": [1288, 312, 44, 15],
          "presentation": 1,
          "presentation_rect": [45, 103, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [0],
              "parameter_initial_enable": 1,
              "parameter_longname": "live.numbox[8]",
              "parameter_mmax": 255,
              "parameter_modmode": 4,
              "parameter_shortname": "live.numbox",
              "parameter_type": 1,
              "parameter_units": "B",
              "parameter_unitstyle": 9
            }
          },
          "varname": "live.numbox[3]"
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
          "patching_rect": [1216, 312, 44, 15],
          "presentation": 1,
          "presentation_rect": [45, 87, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [0],
              "parameter_initial_enable": 1,
              "parameter_longname": "live.numbox[9]",
              "parameter_mmax": 255,
              "parameter_modmode": 4,
              "parameter_shortname": "live.numbox",
              "parameter_type": 1,
              "parameter_units": "G",
              "parameter_unitstyle": 9
            }
          },
          "varname": "live.numbox[4]"
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
          "patching_rect": [1144, 312, 44, 15],
          "presentation": 1,
          "presentation_rect": [45, 71, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [127],
              "parameter_initial_enable": 1,
              "parameter_longname": "live.numbox[10]",
              "parameter_mmax": 255,
              "parameter_modmode": 4,
              "parameter_shortname": "live.numbox",
              "parameter_type": 1,
              "parameter_units": "R",
              "parameter_unitstyle": 9
            }
          },
          "varname": "live.numbox[5]"
        }
      },
      {
        "box": {
          "id": "obj-47",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [824, 512, 64, 22],
          "text": "s ---param"
        }
      },
      {
        "box": {
          "id": "obj-46",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [824, 472, 89, 22],
          "text": "prepend color1"
        }
      },
      {
        "box": {
          "id": "obj-45",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [824, 424, 48, 22],
          "text": "pak f f f"
        }
      },
      {
        "box": {
          "id": "obj-44",
          "maxclass": "newobj",
          "numinlets": 6,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [944, 376, 97, 22],
          "text": "scale 0 255 0. 1."
        }
      },
      {
        "box": {
          "id": "obj-43",
          "maxclass": "newobj",
          "numinlets": 6,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [840, 376, 97, 22],
          "text": "scale 0 255 0. 1."
        }
      },
      {
        "box": {
          "id": "obj-41",
          "maxclass": "newobj",
          "numinlets": 6,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [736, 376, 97, 22],
          "text": "scale 0 255 0. 1."
        }
      },
      {
        "box": {
          "activebgcolor": [0, 0, 0, 1],
          "id": "obj-33",
          "maxclass": "live.button",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "parameter_enable": 1,
          "patching_rect": [768, 144, 40, 40],
          "presentation": 1,
          "presentation_rect": [14, 52, 15, 15],
          "saved_attribute_attributes": {
            "activebgcolor": {"expression": ""},
            "valueof": {
              "parameter_enum": ["off", "on"],
              "parameter_longname": "live.button",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "live.button",
              "parameter_type": 2
            }
          },
          "varname": "live.button"
        }
      },
      {
        "box": {
          "id": "obj-32",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [672, 376, 46, 22],
          "text": "pak i i i"
        }
      },
      {
        "box": {
          "id": "obj-31",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [888, 200, 139, 22],
          "text": "activebgcolor $1 $2 $3 1"
        }
      },
      {
        "box": {
          "id": "obj-30",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["float", "float", "float"],
          "patching_rect": [784, 240, 67, 22],
          "text": "unpack f f f"
        }
      },
      {
        "box": {
          "id": "obj-27",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["list", "bang"],
          "patching_rect": [712, 200, 158, 22],
          "text": "colorpicker @compatibility 1"
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
          "patching_rect": [904, 312, 44, 15],
          "presentation": 1,
          "presentation_rect": [2, 103, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [0],
              "parameter_initial_enable": 1,
              "parameter_longname": "live.numbox[2]",
              "parameter_mmax": 255,
              "parameter_modmode": 4,
              "parameter_shortname": "live.numbox",
              "parameter_type": 1,
              "parameter_units": "B",
              "parameter_unitstyle": 9
            }
          },
          "varname": "live.numbox[2]"
        }
      },
      {
        "box": {
          "id": "obj-13",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [832, 312, 44, 15],
          "presentation": 1,
          "presentation_rect": [2, 87, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [0],
              "parameter_initial_enable": 1,
              "parameter_longname": "live.numbox[1]",
              "parameter_mmax": 255,
              "parameter_modmode": 4,
              "parameter_shortname": "live.numbox",
              "parameter_type": 1,
              "parameter_units": "G",
              "parameter_unitstyle": 9
            }
          },
          "varname": "live.numbox[1]"
        }
      },
      {
        "box": {
          "id": "obj-4",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [760, 312, 44, 15],
          "presentation": 1,
          "presentation_rect": [2, 71, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [0],
              "parameter_initial_enable": 1,
              "parameter_longname": "live.numbox",
              "parameter_mmax": 255,
              "parameter_modmode": 4,
              "parameter_shortname": "live.numbox",
              "parameter_type": 1,
              "parameter_units": "R",
              "parameter_unitstyle": 9
            }
          },
          "varname": "live.numbox"
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
          "filename": "PX._colorize_oklab.jxs",
          "id": "obj-5",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["jit_gl_texture", ""],
          "patching_rect": [280, 224, 270, 22],
          "text": "jit.gl.slab px-stream @file PX._colorize_oklab.jxs",
          "textfile": {
            "filename": "PX._colorize_oklab.jxs",
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
          "activebgoncolor": [1, 0.411764705882353, 0.498039215686275, 1],
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
          "id": "obj-81",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [328, 640, 64, 18],
          "presentation": 1,
          "presentation_rect": [0, 134, 48, 18],
          "text": "Width",
          "textjustification": 0
        }
      },
      {
        "box": {
          "id": "obj-80",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [424, 640, 64, 18],
          "presentation": 1,
          "presentation_rect": [0, 118, 48, 18],
          "text": "Position",
          "textjustification": 0
        }
      },
      {
        "box": {
          "id": "obj-85",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [560, 480, 150, 18],
          "presentation": 1,
          "presentation_rect": [86, 118, 42, 18],
          "text": "Colors",
          "textjustification": 0
        }
      },
      {
        "box": {
          "id": "obj-114",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [632, 736, 56, 18],
          "presentation": 1,
          "presentation_rect": [176, 17, 56, 18],
          "text": "Phase",
          "textjustification": 0
        }
      },
      {
        "box": {
          "id": "obj-115",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [472, 736, 56, 18],
          "presentation": 1,
          "presentation_rect": [133, 17, 42, 18],
          "text": "Scale",
          "textjustification": 0
        }
      },
      {
        "box": {
          "id": "obj-98",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [160, 640, 64, 18],
          "presentation": 1,
          "presentation_rect": [176, 78, 56, 18],
          "text": "Max",
          "textjustification": 0
        }
      },
      {
        "box": {
          "id": "obj-99",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [32, 640, 48, 18],
          "presentation": 1,
          "presentation_rect": [133, 78, 42, 18],
          "text": "Min",
          "textjustification": 0
        }
      },
      {
        "box": {
          "id": "obj-103",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [776, 736, 64, 18],
          "presentation": 1,
          "presentation_rect": [133, 48, 42, 18],
          "text": "Falloff",
          "textjustification": 0
        }
      },
      {
        "box": {
          "id": "obj-92",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [320, 752, 56, 18],
          "presentation": 1,
          "presentation_rect": [176, 138, 56, 18],
          "text": "Curve",
          "textjustification": 0
        }
      },
      {
        "box": {
          "id": "obj-93",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [240, 752, 64, 18],
          "presentation": 1,
          "presentation_rect": [133, 138, 42, 18],
          "text": "Offset",
          "textjustification": 0
        }
      },
      {
        "box": {
          "id": "obj-89",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [144, 752, 56, 18],
          "presentation": 1,
          "presentation_rect": [176, 108, 46, 18],
          "text": "Smooth.",
          "textjustification": 0
        }
      },
      {
        "box": {
          "id": "obj-88",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [48, 752, 64, 18],
          "presentation": 1,
          "presentation_rect": [133, 108, 42, 18],
          "text": "Levels",
          "textjustification": 0
        }
      },
      {
        "box": {
          "id": "obj-109",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [312, 488, 72, 18],
          "presentation": 1,
          "presentation_rect": [0, 0, 64, 18],
          "text": "Luminosity",
          "textjustification": 0
        }
      },
      {
        "box": {
          "id": "obj-108",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [416, 488, 48, 18],
          "presentation": 1,
          "presentation_rect": [65, 0, 42, 18],
          "text": "Mix",
          "textjustification": 0
        }
      }
    ],
    "lines": [
      {"patchline": {"destination": ["obj-42", 4], "source": ["obj-1", 0]}},
      {"patchline": {"destination": ["obj-140", 0], "source": ["obj-100", 0]}},
      {"patchline": {"destination": ["obj-139", 0], "source": ["obj-104", 0]}},
      {"patchline": {"destination": ["obj-127", 0], "source": ["obj-105", 0]}},
      {"patchline": {"destination": ["obj-125", 0], "source": ["obj-106", 1]}},
      {"patchline": {"destination": ["obj-126", 0], "source": ["obj-107", 1]}},
      {"patchline": {"destination": ["obj-10", 1], "source": ["obj-11", 1]}},
      {"patchline": {"destination": ["obj-10", 0], "source": ["obj-11", 0]}},
      {"patchline": {"destination": ["obj-128", 0], "source": ["obj-110", 0]}},
      {"patchline": {"destination": ["obj-129", 0], "source": ["obj-111", 0]}},
      {"patchline": {"destination": ["obj-130", 0], "source": ["obj-112", 0]}},
      {"patchline": {"destination": ["obj-138", 0], "source": ["obj-113", 0]}},
      {"patchline": {"destination": ["obj-137", 0], "source": ["obj-116", 0]}},
      {"patchline": {"destination": ["obj-143", 0], "source": ["obj-117", 0]}},
      {"patchline": {"destination": ["obj-133", 0], "source": ["obj-118", 0]}},
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
      {"patchline": {"destination": ["obj-124", 0], "source": ["obj-123", 0]}},
      {"patchline": {"destination": ["obj-124", 0], "source": ["obj-125", 0]}},
      {"patchline": {"destination": ["obj-124", 0], "source": ["obj-126", 0]}},
      {"patchline": {"destination": ["obj-124", 0], "source": ["obj-127", 0]}},
      {"patchline": {"destination": ["obj-124", 0], "source": ["obj-128", 0]}},
      {"patchline": {"destination": ["obj-124", 0], "source": ["obj-129", 0]}},
      {
        "patchline": {
          "destination": ["obj-32", 1],
          "order": 1,
          "source": ["obj-13", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-43", 0],
          "order": 0,
          "source": ["obj-13", 0]
        }
      },
      {"patchline": {"destination": ["obj-124", 0], "source": ["obj-130", 0]}},
      {"patchline": {"destination": ["obj-124", 0], "source": ["obj-131", 0]}},
      {"patchline": {"destination": ["obj-124", 0], "source": ["obj-132", 0]}},
      {"patchline": {"destination": ["obj-142", 0], "source": ["obj-133", 0]}},
      {"patchline": {"destination": ["obj-142", 0], "source": ["obj-134", 0]}},
      {"patchline": {"destination": ["obj-142", 0], "source": ["obj-135", 0]}},
      {"patchline": {"destination": ["obj-142", 0], "source": ["obj-136", 0]}},
      {"patchline": {"destination": ["obj-142", 0], "source": ["obj-137", 0]}},
      {"patchline": {"destination": ["obj-142", 0], "source": ["obj-138", 0]}},
      {"patchline": {"destination": ["obj-142", 0], "source": ["obj-139", 0]}},
      {
        "patchline": {
          "destination": ["obj-32", 2],
          "order": 1,
          "source": ["obj-14", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-44", 0],
          "order": 0,
          "source": ["obj-14", 0]
        }
      },
      {"patchline": {"destination": ["obj-124", 0], "source": ["obj-140", 0]}},
      {"patchline": {"destination": ["obj-124", 0], "source": ["obj-141", 0]}},
      {"patchline": {"destination": ["obj-142", 0], "source": ["obj-143", 0]}},
      {"patchline": {"destination": ["obj-15", 0], "source": ["obj-17", 0]}},
      {"patchline": {"destination": ["obj-1", 0], "source": ["obj-2", 0]}},
      {"patchline": {"destination": ["obj-30", 0], "source": ["obj-27", 0]}},
      {"patchline": {"destination": ["obj-5", 0], "source": ["obj-3", 0]}},
      {"patchline": {"destination": ["obj-8", 0], "source": ["obj-3", 1]}},
      {"patchline": {"destination": ["obj-13", 0], "source": ["obj-30", 1]}},
      {"patchline": {"destination": ["obj-14", 0], "source": ["obj-30", 2]}},
      {"patchline": {"destination": ["obj-4", 0], "source": ["obj-30", 0]}},
      {"patchline": {"destination": ["obj-12", 1], "source": ["obj-309", 0]}},
      {"patchline": {"destination": ["obj-33", 0], "source": ["obj-31", 0]}},
      {"patchline": {"destination": ["obj-27", 0], "source": ["obj-32", 0]}},
      {"patchline": {"destination": ["obj-27", 0], "source": ["obj-33", 0]}},
      {"patchline": {"destination": ["obj-42", 0], "source": ["obj-366", 0]}},
      {"patchline": {"destination": ["obj-376", 0], "source": ["obj-372", 0]}},
      {"patchline": {"destination": ["obj-366", 0], "source": ["obj-376", 0]}},
      {
        "patchline": {
          "destination": ["obj-32", 0],
          "order": 1,
          "source": ["obj-4", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-41", 0],
          "order": 0,
          "source": ["obj-4", 0]
        }
      },
      {"patchline": {"destination": ["obj-45", 0], "source": ["obj-41", 0]}},
      {"patchline": {"destination": ["obj-12", 0], "source": ["obj-42", 4]}},
      {"patchline": {"destination": ["obj-366", 0], "source": ["obj-42", 2]}},
      {"patchline": {"destination": ["obj-45", 1], "source": ["obj-43", 0]}},
      {"patchline": {"destination": ["obj-45", 2], "source": ["obj-44", 0]}},
      {
        "patchline": {
          "destination": ["obj-31", 0],
          "order": 0,
          "source": ["obj-45", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-46", 0],
          "order": 1,
          "source": ["obj-45", 0]
        }
      },
      {"patchline": {"destination": ["obj-47", 0], "source": ["obj-46", 0]}},
      {"patchline": {"destination": ["obj-48", 0], "source": ["obj-49", 0]}},
      {"patchline": {"destination": ["obj-42", 3], "source": ["obj-5", 0]}},
      {
        "patchline": {
          "destination": ["obj-49", 0],
          "order": 1,
          "source": ["obj-50", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-56", 0],
          "order": 0,
          "source": ["obj-50", 0]
        }
      },
      {"patchline": {"destination": ["obj-50", 2], "source": ["obj-51", 0]}},
      {"patchline": {"destination": ["obj-50", 1], "source": ["obj-52", 0]}},
      {"patchline": {"destination": ["obj-50", 0], "source": ["obj-53", 0]}},
      {"patchline": {"destination": ["obj-58", 0], "source": ["obj-54", 0]}},
      {"patchline": {"destination": ["obj-58", 0], "source": ["obj-55", 0]}},
      {"patchline": {"destination": ["obj-54", 0], "source": ["obj-56", 0]}},
      {"patchline": {"destination": ["obj-59", 0], "source": ["obj-57", 2]}},
      {"patchline": {"destination": ["obj-60", 0], "source": ["obj-57", 1]}},
      {"patchline": {"destination": ["obj-61", 0], "source": ["obj-57", 0]}},
      {"patchline": {"destination": ["obj-57", 0], "source": ["obj-58", 0]}},
      {
        "patchline": {
          "destination": ["obj-51", 0],
          "order": 0,
          "source": ["obj-59", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-55", 2],
          "order": 1,
          "source": ["obj-59", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-52", 0],
          "order": 0,
          "source": ["obj-60", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-55", 1],
          "order": 1,
          "source": ["obj-60", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-53", 0],
          "order": 0,
          "source": ["obj-61", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-55", 0],
          "order": 1,
          "source": ["obj-61", 0]
        }
      },
      {"patchline": {"destination": ["obj-62", 0], "source": ["obj-63", 0]}},
      {
        "patchline": {
          "destination": ["obj-63", 0],
          "order": 1,
          "source": ["obj-64", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-70", 0],
          "order": 0,
          "source": ["obj-64", 0]
        }
      },
      {"patchline": {"destination": ["obj-64", 2], "source": ["obj-65", 0]}},
      {"patchline": {"destination": ["obj-64", 1], "source": ["obj-66", 0]}},
      {"patchline": {"destination": ["obj-64", 0], "source": ["obj-67", 0]}},
      {"patchline": {"destination": ["obj-72", 0], "source": ["obj-68", 0]}},
      {"patchline": {"destination": ["obj-72", 0], "source": ["obj-69", 0]}},
      {"patchline": {"destination": ["obj-68", 0], "source": ["obj-70", 0]}},
      {"patchline": {"destination": ["obj-73", 0], "source": ["obj-71", 2]}},
      {"patchline": {"destination": ["obj-74", 0], "source": ["obj-71", 1]}},
      {"patchline": {"destination": ["obj-75", 0], "source": ["obj-71", 0]}},
      {"patchline": {"destination": ["obj-71", 0], "source": ["obj-72", 0]}},
      {
        "patchline": {
          "destination": ["obj-65", 0],
          "order": 0,
          "source": ["obj-73", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-69", 2],
          "order": 1,
          "source": ["obj-73", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-66", 0],
          "order": 0,
          "source": ["obj-74", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-69", 1],
          "order": 1,
          "source": ["obj-74", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-67", 0],
          "order": 0,
          "source": ["obj-75", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-69", 0],
          "order": 1,
          "source": ["obj-75", 0]
        }
      },
      {"patchline": {"destination": ["obj-78", 0], "source": ["obj-77", 0]}},
      {"patchline": {"destination": ["obj-5", 0], "source": ["obj-78", 0]}},
      {"patchline": {"destination": ["obj-132", 0], "source": ["obj-79", 0]}},
      {"patchline": {"destination": ["obj-2", 1], "source": ["obj-8", 3]}},
      {"patchline": {"destination": ["obj-2", 0], "source": ["obj-8", 2]}},
      {"patchline": {"destination": ["obj-131", 0], "source": ["obj-82", 0]}},
      {"patchline": {"destination": ["obj-123", 0], "source": ["obj-83", 0]}},
      {"patchline": {"destination": ["obj-122", 0], "source": ["obj-87", 0]}},
      {"patchline": {"destination": ["obj-6", 0], "source": ["obj-9", 0]}},
      {"patchline": {"destination": ["obj-134", 0], "source": ["obj-90", 0]}},
      {"patchline": {"destination": ["obj-136", 0], "source": ["obj-91", 0]}},
      {"patchline": {"destination": ["obj-135", 0], "source": ["obj-94", 0]}},
      {"patchline": {"destination": ["obj-141", 0], "source": ["obj-97", 0]}}
    ],
    "parameters": {
      "obj-100": ["live.numbox[20]", "live.numbox", 0],
      "obj-104": ["live.numbox[22]", "live.numbox", 0],
      "obj-105": ["live.text[1]", "live.text", 0],
      "obj-106": ["live.numbox[23]", "live.numbox", 0],
      "obj-107": ["live.numbox[24]", "live.numbox", 0],
      "obj-110": ["live.text[9]", "live.text", 0],
      "obj-111": ["live.text[10]", "live.text", 0],
      "obj-112": ["live.menu", "live.menu", 0],
      "obj-113": ["live.numbox[25]", "live.numbox", 0],
      "obj-116": ["live.numbox[26]", "live.numbox", 0],
      "obj-117": ["live.text[11]", "live.text", 0],
      "obj-118": ["live.numbox[27]", "live.numbox", 0],
      "obj-13": ["live.numbox[1]", "live.numbox", 0],
      "obj-14": ["live.numbox[2]", "live.numbox", 0],
      "obj-33": ["live.button", "live.button", 0],
      "obj-366": ["Channel", "Channel", 0],
      "obj-4": ["live.numbox", "live.numbox", 0],
      "obj-54": ["live.button[2]", "live.button", 0],
      "obj-59": ["live.numbox[8]", "live.numbox", 0],
      "obj-60": ["live.numbox[9]", "live.numbox", 0],
      "obj-61": ["live.numbox[10]", "live.numbox", 0],
      "obj-68": ["live.button[3]", "live.button", 0],
      "obj-73": ["live.numbox[11]", "live.numbox", 0],
      "obj-74": ["live.numbox[12]", "live.numbox", 0],
      "obj-75": ["live.numbox[13]", "live.numbox", 0],
      "obj-79": ["live.numbox[14]", "live.numbox", 0],
      "obj-82": ["live.numbox[15]", "live.numbox", 0],
      "obj-83": ["live.text", "live.text", 0],
      "obj-87": ["live.text[8]", "live.text", 0],
      "obj-90": ["live.numbox[16]", "live.numbox", 0],
      "obj-91": ["live.numbox[17]", "live.numbox", 0],
      "obj-94": ["live.numbox[18]", "live.numbox", 0],
      "obj-97": ["live.numbox[19]", "live.numbox", 0],
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