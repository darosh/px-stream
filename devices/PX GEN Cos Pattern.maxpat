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
    "rect": [33, 71, 567, 508],
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
          "id": "obj-109",
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "maxclass": "bpatcher",
          "name": "PX._dimensions.maxpat",
          "numinlets": 1,
          "numoutlets": 1,
          "offset": [0, 0],
          "outlettype": [""],
          "patching_rect": [1144, 96, 72, 17],
          "presentation": 1,
          "presentation_rect": [0, 133, 72, 17],
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "id": "obj-55",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [760, 88, 47, 22],
          "text": "r ---dim"
        }
      },
      {
        "box": {
          "id": "obj-54",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [640, 184, 76, 22],
          "text": "s ---px_bang"
        }
      },
      {
        "box": {
          "id": "obj-108",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["bang", ""],
          "patching_rect": [96, 736, 50, 22],
          "text": "select 1"
        }
      },
      {
        "box": {
          "id": "obj-107",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [360, 936, 135, 22],
          "text": "prepend param value_1"
        }
      },
      {
        "box": {
          "id": "obj-106",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [520, 904, 120, 22],
          "text": "prepend param on_g"
        }
      },
      {
        "box": {
          "id": "obj-105",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [520, 832, 117, 22],
          "text": "prepend param on_r"
        }
      },
      {
        "box": {
          "id": "obj-104",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [520, 768, 120, 22],
          "text": "prepend param on_a"
        }
      },
      {
        "box": {
          "id": "obj-103",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [520, 704, 120, 22],
          "text": "prepend param on_b"
        }
      },
      {
        "box": {
          "id": "obj-102",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": ["bang"],
          "patching_rect": [96, 776, 22, 22],
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
          "patching_rect": [40, 712, 30, 22],
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
          "patching_rect": [96, 688, 33, 22],
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
          "patching_rect": [40, 752, 30, 22],
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
          "patching_rect": [40, 792, 42, 22],
          "text": "gate 2"
        }
      },
      {
        "box": {
          "id": "obj-77",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [272, 872, 142, 22],
          "text": "prepend param hue_shift"
        }
      },
      {
        "box": {
          "annotation_name": "Shift Hue",
          "id": "obj-72",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [272, 848, 44, 15],
          "presentation": 1,
          "presentation_rect": [261, 103, 52, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "Shift Hue",
              "parameter_initial": [0],
              "parameter_initial_enable": 1,
              "parameter_longname": "Shift Hue",
              "parameter_mmax": 1,
              "parameter_modmode": 3,
              "parameter_shortname": "Shift Hue",
              "parameter_type": 0,
              "parameter_units": "hue",
              "parameter_unitstyle": 9
            }
          },
          "varname": "live.numbox[24]"
        }
      },
      {
        "box": {
          "id": "obj-71",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [24, 304, 30, 22],
          "text": "+ 1"
        }
      },
      {
        "box": {
          "id": "obj-70",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [1320, 416, 150, 18],
          "presentation": 1,
          "presentation_rect": [145, 151, 40, 18],
          "text": "Preset",
          "textjustification": 2
        }
      },
      {
        "box": {
          "annotation_name": "Color Preset",
          "button": 1,
          "focusbordercolor": [
            0.752941176470588,
            0.752941176470588,
            0.752941176470588,
            0
          ],
          "id": "obj-60",
          "maxclass": "live.tab",
          "multiline": 0,
          "num_lines_patching": 1,
          "num_lines_presentation": 1,
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["", "", "float"],
          "parameter_enable": 1,
          "patching_rect": [8, 264, 100, 20],
          "presentation": 1,
          "presentation_rect": [186, 152, 127, 16],
          "saved_attribute_attributes": {
            "focusbordercolor": {"expression": ""},
            "valueof": {
              "parameter_annotation_name": "Color Preset",
              "parameter_enum": ["A", "B", "C", "D", "E", "F", "G", "H"],
              "parameter_initial": [8],
              "parameter_initial_enable": 1,
              "parameter_longname": "Color Preset",
              "parameter_mmax": 7,
              "parameter_modmode": 0,
              "parameter_shortname": "Color Preset",
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
          "annotation_name": "Value",
          "id": "obj-97",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [392, 912, 44, 15],
          "presentation": 1,
          "presentation_rect": [249, 119, 64, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "Value",
              "parameter_initial": [0],
              "parameter_longname": "Value",
              "parameter_mmax": 10,
              "parameter_mmin": -10,
              "parameter_modmode": 4,
              "parameter_shortname": "Value",
              "parameter_type": 0,
              "parameter_units": "value",
              "parameter_unitstyle": 9
            }
          },
          "varname": "live.numbox[23]"
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
          "patching_rect": [40, 680, 40, 15],
          "presentation": 1,
          "presentation_rect": [277, 87, 32, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_enum": ["val1", "val2"],
              "parameter_initial": [1],
              "parameter_initial_enable": 1,
              "parameter_longname": "Keep Scale Ratio",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "Keep Scale Ratio",
              "parameter_type": 1,
              "parameter_annotation_name": "Keep Scale Ratio"
            }
          },
          "text": "x=y",
          "texton": "x=y",
          "annotation_name": "Keep Scale Ratio"
        }
      },
      {
        "box": {
          "annotation_name": "B",
          "appearance": 1,
          "id": "obj-95",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "parameter_enable": 1,
          "patching_rect": [520, 680, 96, 15],
          "presentation": 1,
          "presentation_rect": [249, 4, 32, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "B",
              "parameter_enum": ["val1", "val2"],
              "parameter_initial": [1],
              "parameter_initial_enable": 1,
              "parameter_longname": "B",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "B",
              "parameter_type": 1
            }
          },
          "text": "B",
          "varname": "live.text[4]"
        }
      },
      {
        "box": {
          "annotation_name": "G",
          "appearance": 1,
          "id": "obj-94",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "parameter_enable": 1,
          "patching_rect": [520, 880, 96, 15],
          "presentation": 1,
          "presentation_rect": [217, 4, 32, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "G",
              "parameter_enum": ["val1", "val2"],
              "parameter_initial": [1],
              "parameter_initial_enable": 1,
              "parameter_longname": "G",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "G",
              "parameter_type": 1
            }
          },
          "text": "G",
          "texton": "G",
          "varname": "live.text[3]"
        }
      },
      {
        "box": {
          "annotation_name": "R",
          "appearance": 1,
          "id": "obj-93",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "parameter_enable": 1,
          "patching_rect": [520, 808, 96, 15],
          "presentation": 1,
          "presentation_rect": [185, 4, 32, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "R",
              "parameter_enum": ["val1", "val2"],
              "parameter_initial": [1],
              "parameter_initial_enable": 1,
              "parameter_longname": "R",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "R",
              "parameter_type": 1
            }
          },
          "text": "R",
          "texton": "R",
          "varname": "live.text[2]"
        }
      },
      {
        "box": {
          "annotation_name": "A",
          "appearance": 1,
          "id": "obj-90",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "parameter_enable": 1,
          "patching_rect": [520, 744, 96, 15],
          "presentation": 1,
          "presentation_rect": [281, 4, 32, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "A",
              "parameter_enum": ["val1", "val2"],
              "parameter_initial": [1],
              "parameter_initial_enable": 1,
              "parameter_longname": "A",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "A",
              "parameter_type": 1
            }
          },
          "texton": "A",
          "varname": "live.text[1]"
        }
      },
      {
        "box": {
          "id": "obj-91",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [360, 552, 122, 22],
          "text": "prepend param steps"
        }
      },
      {
        "box": {
          "annotation_name": "Steps",
          "id": "obj-92",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [360, 520, 44, 15],
          "presentation": 1,
          "presentation_rect": [249, 135, 64, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "Steps",
              "parameter_initial": [0],
              "parameter_initial_enable": 1,
              "parameter_longname": "Steps",
              "parameter_modmode": 4,
              "parameter_shortname": "Steps",
              "parameter_type": 1,
              "parameter_units": "steps",
              "parameter_unitstyle": 9
            }
          },
          "varname": "live.numbox[22]"
        }
      },
      {
        "box": {
          "active1": [0.9, 0.65, 0.05, 1],
          "bubblesize": 12,
          "fontname": "Ableton Sans Medium",
          "fontsize": 9,
          "id": "obj-87",
          "maxclass": "preset",
          "numinlets": 1,
          "numoutlets": 5,
          "outlettype": ["preset", "int", "preset", "int", ""],
          "patching_rect": [40, 176, 136, 24],
          "preset_data": [
            {
              "number": 1,
              "data": [
                5,
                "obj-8",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-10",
                "live.numbox",
                "float",
                1,
                5,
                "obj-17",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-14",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-33",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-30",
                "live.numbox",
                "float",
                1,
                5,
                "obj-26",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-27",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-34",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-31",
                "live.numbox",
                "float",
                1,
                5,
                "obj-28",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-25",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-35",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-32",
                "live.numbox",
                "float",
                1,
                5,
                "obj-29",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-24",
                "live.numbox",
                "float",
                0.5
              ]
            },
            {
              "number": 2,
              "data": [
                5,
                "obj-8",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-10",
                "live.numbox",
                "float",
                1,
                5,
                "obj-17",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-14",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-33",
                "live.numbox",
                "float",
                0.200000002980232,
                5,
                "obj-30",
                "live.numbox",
                "float",
                1,
                5,
                "obj-26",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-27",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-34",
                "live.numbox",
                "float",
                0.100000001490116,
                5,
                "obj-31",
                "live.numbox",
                "float",
                1,
                5,
                "obj-28",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-25",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-35",
                "live.numbox",
                "float",
                0,
                5,
                "obj-32",
                "live.numbox",
                "float",
                1,
                5,
                "obj-29",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-24",
                "live.numbox",
                "float",
                0.5
              ]
            },
            {
              "number": 3,
              "data": [
                5,
                "obj-8",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-10",
                "live.numbox",
                "float",
                1,
                5,
                "obj-17",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-14",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-33",
                "live.numbox",
                "float",
                0.200000002980232,
                5,
                "obj-30",
                "live.numbox",
                "float",
                1,
                5,
                "obj-26",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-27",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-34",
                "live.numbox",
                "float",
                0.200000002980232,
                5,
                "obj-31",
                "live.numbox",
                "float",
                1,
                5,
                "obj-28",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-25",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-35",
                "live.numbox",
                "float",
                0.300000011920929,
                5,
                "obj-32",
                "live.numbox",
                "float",
                1,
                5,
                "obj-29",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-24",
                "live.numbox",
                "float",
                0.5
              ]
            },
            {
              "number": 4,
              "data": [
                5,
                "obj-8",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-10",
                "live.numbox",
                "float",
                1,
                5,
                "obj-17",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-14",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-33",
                "live.numbox",
                "float",
                0.670000016689301,
                5,
                "obj-30",
                "live.numbox",
                "float",
                1,
                5,
                "obj-26",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-27",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-34",
                "live.numbox",
                "float",
                0.330000013113022,
                5,
                "obj-31",
                "live.numbox",
                "float",
                1,
                5,
                "obj-28",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-25",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-35",
                "live.numbox",
                "float",
                0,
                5,
                "obj-32",
                "live.numbox",
                "float",
                1,
                5,
                "obj-29",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-24",
                "live.numbox",
                "float",
                0.5
              ]
            },
            {
              "number": 5,
              "data": [
                5,
                "obj-8",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-10",
                "live.numbox",
                "float",
                1,
                5,
                "obj-17",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-14",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-33",
                "live.numbox",
                "float",
                0,
                5,
                "obj-30",
                "live.numbox",
                "float",
                0,
                5,
                "obj-26",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-27",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-34",
                "live.numbox",
                "float",
                0.251968502998352,
                5,
                "obj-31",
                "live.numbox",
                "float",
                1,
                5,
                "obj-28",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-25",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-35",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-32",
                "live.numbox",
                "float",
                2,
                5,
                "obj-29",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-24",
                "live.numbox",
                "float",
                0.5
              ]
            },
            {
              "number": 6,
              "data": [
                5,
                "obj-8",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-10",
                "live.numbox",
                "float",
                1,
                5,
                "obj-17",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-14",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-33",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-30",
                "live.numbox",
                "float",
                1,
                5,
                "obj-26",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-27",
                "live.numbox",
                "float",
                0.448818892240524,
                5,
                "obj-34",
                "live.numbox",
                "float",
                0.598425209522247,
                5,
                "obj-31",
                "live.numbox",
                "float",
                1,
                5,
                "obj-28",
                "live.numbox",
                "float",
                0.409448832273483,
                5,
                "obj-25",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-35",
                "live.numbox",
                "float",
                0.800000011920929,
                5,
                "obj-32",
                "live.numbox",
                "float",
                1,
                5,
                "obj-29",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-24",
                "live.numbox",
                "float",
                0.5
              ]
            },
            {
              "number": 7,
              "data": [
                5,
                "obj-8",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-10",
                "live.numbox",
                "float",
                1,
                5,
                "obj-17",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-14",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-33",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-30",
                "live.numbox",
                "float",
                1,
                5,
                "obj-26",
                "live.numbox",
                "float",
                0,
                5,
                "obj-27",
                "live.numbox",
                "float",
                0,
                5,
                "obj-34",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-31",
                "live.numbox",
                "float",
                1,
                5,
                "obj-28",
                "live.numbox",
                "float",
                0,
                5,
                "obj-25",
                "live.numbox",
                "float",
                0,
                5,
                "obj-35",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-32",
                "live.numbox",
                "float",
                2,
                5,
                "obj-29",
                "live.numbox",
                "float",
                0.984251976013184,
                5,
                "obj-24",
                "live.numbox",
                "float",
                0.322834640741348
              ]
            },
            {
              "number": 8,
              "data": [
                5,
                "obj-8",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-10",
                "live.numbox",
                "float",
                1,
                5,
                "obj-17",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-14",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-33",
                "live.numbox",
                "float",
                1,
                5,
                "obj-30",
                "live.numbox",
                "float",
                1,
                5,
                "obj-26",
                "live.numbox",
                "float",
                0,
                5,
                "obj-27",
                "live.numbox",
                "float",
                1,
                5,
                "obj-34",
                "live.numbox",
                "float",
                0,
                5,
                "obj-31",
                "live.numbox",
                "float",
                2,
                5,
                "obj-28",
                "live.numbox",
                "float",
                0.503937005996704,
                5,
                "obj-25",
                "live.numbox",
                "float",
                0,
                5,
                "obj-35",
                "live.numbox",
                "float",
                0.5,
                5,
                "obj-32",
                "live.numbox",
                "float",
                1,
                5,
                "obj-29",
                "live.numbox",
                "float",
                1,
                5,
                "obj-24",
                "live.numbox",
                "float",
                0
              ]
            }
          ],
          "saved_attribute_attributes": {
            "active1": {"expression": "themecolor.live_control_selection"}
          }
        }
      },
      {
        "box": {
          "id": "obj-84",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [352, 800, 128, 22],
          "text": "prepend param shift_y"
        }
      },
      {
        "box": {
          "id": "obj-86",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [352, 760, 128, 22],
          "text": "prepend param shift_x"
        }
      },
      {
        "box": {
          "id": "obj-82",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [112, 880, 134, 22],
          "text": "prepend param scale_y"
        }
      },
      {
        "box": {
          "id": "obj-81",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [112, 840, 134, 22],
          "text": "prepend param scale_x"
        }
      },
      {
        "box": {
          "id": "obj-80",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [1320, 368, 150, 18],
          "presentation": 1,
          "presentation_rect": [145, 134, 40, 18],
          "text": "Density",
          "textjustification": 2
        }
      },
      {
        "box": {
          "id": "obj-79",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [1320, 320, 150, 18],
          "presentation": 1,
          "presentation_rect": [145, 118, 40, 18],
          "text": "Angle",
          "textjustification": 2
        }
      },
      {
        "box": {
          "annotation_name": "Shift Y",
          "id": "obj-74",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [416, 728, 44, 15],
          "presentation": 1,
          "presentation_rect": [223, 103, 38, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "Shift Y",
              "parameter_initial": [0],
              "parameter_initial_enable": 1,
              "parameter_longname": "Shift Y",
              "parameter_mmax": 100,
              "parameter_mmin": -100,
              "parameter_modmode": 3,
              "parameter_shortname": "Shift Y",
              "parameter_steps": 2001,
              "parameter_type": 0,
              "parameter_units": "y",
              "parameter_unitstyle": 9
            }
          },
          "varname": "live.numbox[20]"
        }
      },
      {
        "box": {
          "annotation_name": "Shift X",
          "id": "obj-75",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [352, 728, 44, 15],
          "presentation": 1,
          "presentation_rect": [185, 103, 38, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "Shift X",
              "parameter_initial": [0],
              "parameter_initial_enable": 1,
              "parameter_longname": "Shift X",
              "parameter_mmax": 100,
              "parameter_mmin": -100,
              "parameter_modmode": 3,
              "parameter_shortname": "Shift X",
              "parameter_steps": 2001,
              "parameter_type": 0,
              "parameter_units": "x",
              "parameter_unitstyle": 9
            }
          },
          "varname": "live.numbox[21]"
        }
      },
      {
        "box": {
          "id": "obj-65",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [1320, 264, 150, 18],
          "presentation": 1,
          "presentation_rect": [145, 102, 40, 18],
          "text": "Shift",
          "textjustification": 2
        }
      },
      {
        "box": {
          "annotation_name": "Scale Y",
          "id": "obj-63",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [176, 744, 44, 15],
          "presentation": 1,
          "presentation_rect": [231, 87, 46, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "Scale Y",
              "parameter_initial": [1],
              "parameter_initial_enable": 1,
              "parameter_longname": "Scale Y",
              "parameter_mmax": 100,
              "parameter_mmin": -100,
              "parameter_modmode": 3,
              "parameter_shortname": "Scale Y",
              "parameter_steps": 2001,
              "parameter_type": 0,
              "parameter_units": "y",
              "parameter_unitstyle": 9
            }
          },
          "varname": "live.numbox[19]"
        }
      },
      {
        "box": {
          "annotation_name": "Scale X",
          "id": "obj-62",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [144, 776, 44, 15],
          "presentation": 1,
          "presentation_rect": [185, 87, 46, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "Scale X",
              "parameter_initial": [1],
              "parameter_initial_enable": 1,
              "parameter_longname": "Scale X",
              "parameter_mmax": 100,
              "parameter_mmin": -100,
              "parameter_modmode": 3,
              "parameter_shortname": "Scale X",
              "parameter_steps": 2001,
              "parameter_type": 0,
              "parameter_units": "x",
              "parameter_unitstyle": 9
            }
          },
          "varname": "live.numbox[18]"
        }
      },
      {
        "box": {
          "id": "obj-61",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [1320, 216, 150, 18],
          "presentation": 1,
          "presentation_rect": [145, 86, 40, 18],
          "text": "Scale",
          "textjustification": 2
        }
      },
      {
        "box": {
          "annotation_name": "Phase A",
          "id": "obj-8",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [464, 264, 44, 15],
          "presentation": 1,
          "presentation_rect": [281, 68, 32, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "Phase A",
              "parameter_initial": [0.5],
              "parameter_initial_enable": 1,
              "parameter_longname": "Phase A",
              "parameter_mmax": 1,
              "parameter_modmode": 3,
              "parameter_shortname": "Phase A",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "live.numbox[14]"
        }
      },
      {
        "box": {
          "annotation_name": "Frequency A",
          "id": "obj-10",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [464, 200, 44, 15],
          "presentation": 1,
          "presentation_rect": [281, 53, 32, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "Frequency A",
              "parameter_initial": [1],
              "parameter_initial_enable": 1,
              "parameter_longname": "Frequency A",
              "parameter_mmax": 2,
              "parameter_modmode": 3,
              "parameter_shortname": "Frequency A",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "live.numbox[15]"
        }
      },
      {
        "box": {
          "annotation_name": "Amplitude A",
          "id": "obj-14",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [464, 136, 44, 15],
          "presentation": 1,
          "presentation_rect": [281, 37, 32, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "Amplitude A",
              "parameter_initial": [0.5],
              "parameter_initial_enable": 1,
              "parameter_longname": "Amplitude A",
              "parameter_mmax": 1,
              "parameter_modmode": 3,
              "parameter_shortname": "Amplitude A",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "live.numbox[16]"
        }
      },
      {
        "box": {
          "annotation_name": "Offset A",
          "id": "obj-17",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [464, 80, 44, 15],
          "presentation": 1,
          "presentation_rect": [281, 21, 32, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "Offset A",
              "parameter_initial": [0.5],
              "parameter_initial_enable": 1,
              "parameter_longname": "Offset A",
              "parameter_mmax": 1,
              "parameter_modmode": 3,
              "parameter_shortname": "Offset A",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "live.numbox[17]"
        }
      },
      {
        "box": {
          "id": "obj-18",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [464, 296, 76, 22],
          "text": "prepend d_a"
        }
      },
      {
        "box": {
          "id": "obj-22",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [464, 224, 75, 22],
          "text": "prepend c_a"
        }
      },
      {
        "box": {
          "id": "obj-37",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [464, 160, 76, 22],
          "text": "prepend b_a"
        }
      },
      {
        "box": {
          "id": "obj-48",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [464, 104, 76, 22],
          "text": "prepend a_a"
        }
      },
      {
        "box": {
          "id": "obj-59",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [480, 408, 90, 22],
          "text": "prepend param"
        }
      },
      {
        "box": {
          "id": "obj-16",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["bang", ""],
          "patching_rect": [648, 360, 30, 22],
          "text": "t b l"
        }
      },
      {
        "box": {
          "id": "obj-15",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [640, 320, 54, 22],
          "text": "r ---draw"
        }
      },
      {
        "box": {
          "id": "obj-11",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [704, 600, 38, 22],
          "text": "zl.reg"
        }
      },
      {
        "box": {
          "id": "obj-76",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": ["bang"],
          "patching_rect": [728, 208, 58, 22],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "id": "obj-78",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [728, 264, 101, 22],
          "text": "drawto px-stream"
        }
      },
      {
        "box": {
          "id": "obj-89",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [672, 520, 74, 22],
          "text": "r ---px_bang"
        }
      },
      {
        "box": {
          "id": "obj-88",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["jit_gl_texture", ""],
          "patching_rect": [840, 264, 70, 22],
          "text": "jit.gl.texture"
        }
      },
      {
        "box": {
          "code": "// Cos Palette Texture Generator for jit.gen~\n// Based on Íñigo Quílez's cos palette technique\n// Formula: color = a + b * cos(6.28318 * (c * t + d))\n\n// Parameters (these would be connected as inlets in your jit.gen~ object)\nParam a_r(0.5);    // Red component - DC offset\nParam a_g(0.5);    // Green component - DC offset\nParam a_b(0.5);    // Blue component - DC offset\nParam a_a(0.5);\n\nParam b_r(0.5);    // Red component - Amplitude\nParam b_g(0.5);    // Green component - Amplitude\nParam b_b(0.5);    // Blue component - Amplitude\nParam b_a(0.5);\n\nParam c_r(1.0);    // Red component - Frequency\nParam c_g(1.0);    // Green component - Frequency\nParam c_b(1.0);    // Blue component - Frequency\nParam c_a(1.0);\n\nParam d_r(0.5);    // Red component - Phase\nParam d_g(0.5);  // Green component - Phase\nParam d_b(0.5);  // Blue component - Phase\nParam d_a(0.5);\n\nParam on_r(1);   \nParam on_g(1);  \nParam on_b(1);  \nParam on_a(1);\n\nParam angle(0.0);  // Rotation angle in radians\nParam density(1.0);  // Scale factor for the gradient\n\nParam keep_aspect(1);  // 0 = stretch, 1 = maintain aspect ratio\nParam scale_x(1.0);    // X axis scaling\nParam scale_y(1.0);    // Y axis scaling\nParam shift_x(0.0);    // X axis shift (proportional to image size)\nParam shift_y(0.0);    // Y axis shift (proportional to image size)\n\nParam steps(0);\nParam pat(1.0);\nParam hue_shift(0);\nParam value_1(0);\n\n// Center normalized coordinates around 0\ncx = norm.x - 0.5;\ncy = norm.y - 0.5;\n\n// 1. ASPECT CORRECTION\nif (keep_aspect) {\n    width = dim(\"x\");\n    height = dim(\"y\");\n    aspect = dim.x / dim.y;\n\n    if (aspect > 1.0) {\n        cx = cx * aspect;  // Wider than tall\n    } else {\n        cy = cy / aspect;  // Taller than wide\n    }\n}\n\n// 2. SCALING\ncx = cx * scale_x;\ncy = cy * scale_y;\n\n// 3. SHIFTING\ncx = cx + shift_x;\ncy = cy + shift_y;\n\n// 4. ROTATION\n// angle = angle_deg * 3.14159265359 / 180.0;\ncos_a = cos(angle);\nsin_a = sin(angle);\n\nx = cx * cos_a - cy * sin_a;\ny = cx * sin_a + cy * cos_a;\n\n// Create gradient parameter t\nt = 0;\n// Linear Radial Spiral Log Flower Twisted Ripples Hyperbolic Plasma Board Waves Liquid Veins Cells Clouds Fractal Flowing Turbulence Random Grid Noise Constant\nif(pat < 1) {\n    t = (x + y) * density;\n} else if(pat < 2) {\n    t = sqrt(x*x + y*y) * density;\n} else if(pat < 3) {\n    t = (atan2(y, x) / 6.28318 + sqrt(x*x + y*y)) * density;\n} else if(pat < 4) {\n    t = (atan2(y, x) / 6.28318 + log(sqrt(x*x + y*y) + 0.001)) * density;\n} else if(pat < 5) {\n    t = (atan2(y, x) * (5.0 + value_1) / 6.28318 + sqrt(x*x + y*y)) * density;\n} else if(pat < 6) {\n    t = ((x + y) + sin(x * (5 + value_1)) * 0.1) * density;\n} else if(pat < 7) {\n    t = sin(sqrt(x * x + y * y) * (5 + value_1)) * density;\n} else if(pat < 8) {\n    t = (x * y) * 2 * density;\n} else if(pat < 9) {\n    t = (sin(x * (5 + value_1)) + sin(y * (5 + value_1)) + sin((x + y) * (2.5 + value_1 / 2.))) * density;\n} else if(pat < 10) {\n    t = (sin(x * (10 + value_1)) * sin(y * (10 + value_1))) * density;\n} else if(pat < 11) {\n    t = (sin(x * 3 + y * 2) + sin(x * 5 - y * 3) * 0.7 + sin(x * 7 + y * 4) * 0.5) * density;\n} else if(pat < 12) {\n    t = (sin(x * 4) + cos(y * 3) + sin((x + y) * 2.5) * 0.8 + cos((x - y) * 1.7) * 0.6) * density;\n} else if(pat < 13) {\n    t = (sin((x + sin(y * 8) * 0.3) * 6) + cos(y * 4) * 0.7) * density;\n} else if(pat < 14) {\n    t = (sin(x * 6 + sin(y * 4) * 2) + cos(y * 5 + cos(x * 3) * 1.5)) * density;\n} else if(pat < 15) {\n    t = (sin(x * 2.3 + cos(y * 1.7) * 1.2) + sin(y * 3.1 + sin(x * 2.8) * 0.8) + cos((x + y) * 1.9) * 0.6) * density;\n} else if(pat < 16) {\n    branch1 = sin(x * 5 + sin(y * 3) * 2);\n    branch2 = cos(y * 4 + cos(x * 6) * 1.5);\n    t = (branch1 + branch2 * 0.7 + sin((branch1 + branch2) * 3) * 0.5) * density;\n} else if(pat < 17) {\n    wave1 = sin(x * 2.1 + y * 0.8);\n    wave2 = cos(y * 3.2 + x * 1.3);\n    wave3 = sin((x + y) * 1.7 + wave1 * 1.5);\n    t = (wave1 + wave2 * 0.8 + wave3 * 0.6 + cos(x * 4.5) * 0.4) * density;\n} else if(pat < 18) {\n    turb = sin(x * 4 + sin(y * 3) * 2) + sin(x * 8 + cos(y * 6) * 1) * 0.5 + sin(x * 16 + sin(y * 12) * 0.5) * 0.25;\n    t = turb * density;\n} else if(pat < 19) {\n\tn = vec(x, y);\n\td = vec(0.0, 1.0);\n\tb = floor(n);\n\tf = smoothstep(vec(0, 0), vec(1, 1), fract(n));\n\trb = fract(sin(b.x + b.y * 100.0) * 43758.545312);\n\tryx = fract(sin(b.x + 1.0 + b.y * 100.0) * 43758.545312);\n\trxy = fract(sin(b.x + (b.y + 1.0) * 100.0) * 43758.545312);\n\tryy = fract(sin(b.x + 1.0 + (b.y + 1.0) * 100.0) * 43758.545312);\n\tt = mix(mix(rb, ryx, f.r), mix(rxy, ryy, f.r), f.g) * density;\n} else if(pat < 20) {\n    gx = floor(x * 16);\n    gy = floor(y * 16);\n    fx = x * 8;\n    fx = fx - floor(fx);\n    fy = y * 8;\n    fy = fy - floor(fy);\n    h = sin(gx * 12.9898 + gy * 78.233) * 43758.5453;\n    t = h * density;\n} else if(pat < 21) {\n    t = (sin(x * 12.9898) * cos(y * 78.233) * 43758.5453) * density;\n} else if(pat < 22) {\n    t = .5;\n}\n\nif (steps > 0) {\n\tintPart = floor(t);\n    fracPart = t - intPart;\n    steppedFrac = floor(fracPart * steps) / steps;\n    t = intPart + steppedFrac;\n}\n\n// Apply cos palette formula for each color channel\n// color = a + b * cos(2π * (c * t + d))\nr = on_r ? (a_r + b_r * cos(6.28318530718 * (c_r * t + d_r))) : 0;\ng = on_g ? (a_g + b_g * cos(6.28318530718 * (c_g * t + d_g))) : 0;\nb = on_b ? (a_b + b_b * cos(6.28318530718 * (c_b * t + d_b))) : 0;\na = on_a ? (a_a + b_a * cos(6.28318530718 * (c_a * t + d_a))) : 1;\n\n// Clamp values to 0-1 range\nr = clamp(r, 0, 1);\ng = clamp(g, 0, 1);\nb = clamp(b, 0, 1);\na = clamp(a, 0, 1);\n\nrgba = vec(r, g, b, a);\n\nif (hue_shift > 0) {\n\thsl = rgb2hsl(rgba);\n\thsl = hsl + vec(hue_shift, 0, 0);\n\trgba = hsl2rgb(hsl);\n}\n\n// Output RGBA\nout1 = rgba;\n",
          "fontface": 0,
          "fontname": "<Monospaced>",
          "fontsize": 13,
          "id": "obj-73",
          "maxclass": "jit.gl.pix.codebox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["jit_gl_texture", ""],
          "patching_rect": [792, 392, 472, 447]
        }
      },
      {
        "box": {
          "annotation_name": "Phase B",
          "id": "obj-33",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [376, 264, 44, 15],
          "presentation": 1,
          "presentation_rect": [249, 68, 32, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "Phase B",
              "parameter_initial": [0.5],
              "parameter_initial_enable": 1,
              "parameter_longname": "Phase B",
              "parameter_mmax": 1,
              "parameter_modmode": 3,
              "parameter_shortname": "Phase B",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "live.numbox[10]"
        }
      },
      {
        "box": {
          "annotation_name": "Phase G",
          "id": "obj-34",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [288, 264, 44, 15],
          "presentation": 1,
          "presentation_rect": [217, 68, 32, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "Phase G",
              "parameter_initial": [0.5],
              "parameter_initial_enable": 1,
              "parameter_longname": "Phase G",
              "parameter_mmax": 1,
              "parameter_modmode": 3,
              "parameter_shortname": "Phase G",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "live.numbox[11]"
        }
      },
      {
        "box": {
          "annotation_name": "Phase R",
          "id": "obj-35",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [200, 264, 44, 15],
          "presentation": 1,
          "presentation_rect": [185, 68, 32, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "Phase R",
              "parameter_initial": [0.5],
              "parameter_initial_enable": 1,
              "parameter_longname": "Phase R",
              "parameter_mmax": 1,
              "parameter_modmode": 3,
              "parameter_shortname": "Phase R",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "live.numbox[12]"
        }
      },
      {
        "box": {
          "annotation_name": "Frequency B",
          "id": "obj-30",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [376, 200, 44, 15],
          "presentation": 1,
          "presentation_rect": [249, 53, 32, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "Frequency B",
              "parameter_initial": [1],
              "parameter_initial_enable": 1,
              "parameter_longname": "Frequency B",
              "parameter_mmax": 2,
              "parameter_modmode": 3,
              "parameter_shortname": "Frequency B",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "live.numbox[7]"
        }
      },
      {
        "box": {
          "annotation_name": "Frequency G",
          "id": "obj-31",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [288, 200, 44, 15],
          "presentation": 1,
          "presentation_rect": [217, 53, 32, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "Frequency G",
              "parameter_initial": [1],
              "parameter_initial_enable": 1,
              "parameter_longname": "Frequency G",
              "parameter_mmax": 2,
              "parameter_modmode": 3,
              "parameter_shortname": "Frequency G",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "live.numbox[8]"
        }
      },
      {
        "box": {
          "annotation_name": "Frequency R",
          "id": "obj-32",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [200, 200, 44, 15],
          "presentation": 1,
          "presentation_rect": [185, 53, 32, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "Frequency R",
              "parameter_initial": [1],
              "parameter_initial_enable": 1,
              "parameter_longname": "Frequency R",
              "parameter_mmax": 2,
              "parameter_modmode": 3,
              "parameter_shortname": "Frequency R",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "live.numbox[9]"
        }
      },
      {
        "box": {
          "annotation_name": "Amplitude B",
          "id": "obj-27",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [376, 136, 44, 15],
          "presentation": 1,
          "presentation_rect": [249, 37, 32, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "Amplitude B",
              "parameter_initial": [0.5],
              "parameter_initial_enable": 1,
              "parameter_longname": "Amplitude B",
              "parameter_mmax": 1,
              "parameter_modmode": 3,
              "parameter_shortname": "Amplitude B",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "live.numbox[4]"
        }
      },
      {
        "box": {
          "annotation_name": "Amplitude G",
          "id": "obj-28",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [288, 136, 44, 15],
          "presentation": 1,
          "presentation_rect": [217, 37, 32, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "Amplitude G",
              "parameter_initial": [0.5],
              "parameter_initial_enable": 1,
              "parameter_longname": "Amplitude G",
              "parameter_mmax": 1,
              "parameter_modmode": 3,
              "parameter_shortname": "Amplitude G",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "live.numbox[5]"
        }
      },
      {
        "box": {
          "annotation_name": "Amplitude R",
          "id": "obj-29",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [200, 136, 44, 15],
          "presentation": 1,
          "presentation_rect": [185, 37, 32, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "Amplitude R",
              "parameter_initial": [0.5],
              "parameter_initial_enable": 1,
              "parameter_longname": "Amplitude R",
              "parameter_mmax": 1,
              "parameter_modmode": 3,
              "parameter_shortname": "Amplitude R",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "live.numbox[6]"
        }
      },
      {
        "box": {
          "annotation_name": "Offset B",
          "id": "obj-26",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [376, 80, 44, 15],
          "presentation": 1,
          "presentation_rect": [249, 21, 32, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "Offset B",
              "parameter_initial": [0.5],
              "parameter_initial_enable": 1,
              "parameter_longname": "Offset B",
              "parameter_mmax": 1,
              "parameter_modmode": 3,
              "parameter_shortname": "Offset B",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "live.numbox[3]"
        }
      },
      {
        "box": {
          "annotation_name": "Offset G",
          "id": "obj-25",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [288, 80, 44, 15],
          "presentation": 1,
          "presentation_rect": [217, 21, 32, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "Offset G",
              "parameter_initial": [0.5],
              "parameter_initial_enable": 1,
              "parameter_longname": "Offset G",
              "parameter_mmax": 1,
              "parameter_modmode": 3,
              "parameter_shortname": "Offset G",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "live.numbox[2]"
        }
      },
      {
        "box": {
          "annotation_name": "Offset R",
          "id": "obj-24",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [200, 80, 44, 15],
          "presentation": 1,
          "presentation_rect": [185, 21, 32, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "Offset R",
              "parameter_initial": [0.5],
              "parameter_initial_enable": 1,
              "parameter_longname": "Offset R",
              "parameter_mmax": 1,
              "parameter_modmode": 3,
              "parameter_shortname": "Offset R",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "live.numbox[1]"
        }
      },
      {
        "box": {
          "id": "obj-69",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [1320, 168, 150, 18],
          "presentation": 1,
          "presentation_rect": [145, 36, 40, 18],
          "text": "Amp.",
          "textjustification": 2
        }
      },
      {
        "box": {
          "id": "obj-68",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [1320, 64, 150, 18],
          "presentation": 1,
          "presentation_rect": [145, 52, 40, 18],
          "text": "Freq.",
          "textjustification": 2
        }
      },
      {
        "box": {
          "id": "obj-67",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [1320, 120, 150, 18],
          "presentation": 1,
          "presentation_rect": [145, 67, 40, 18],
          "text": "Phase",
          "textjustification": 2
        }
      },
      {
        "box": {
          "id": "obj-66",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [1320, 16, 150, 18],
          "presentation": 1,
          "presentation_rect": [145, 20, 40, 18],
          "text": "Offset",
          "textjustification": 2
        }
      },
      {
        "box": {
          "id": "obj-64",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [424, 640, 161, 22],
          "text": "prepend param keep_aspect"
        }
      },
      {
        "box": {
          "annotation_name": "Keep Ratio",
          "appearance": 1,
          "id": "obj-6",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "parameter_enable": 1,
          "patching_rect": [424, 600, 96, 15],
          "presentation": 1,
          "presentation_rect": [74, 135, 70, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "Keep Ratio",
              "parameter_enum": ["val1", "val2"],
              "parameter_initial": [1],
              "parameter_initial_enable": 1,
              "parameter_longname": "Keep Ratio",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "Keep Ratio",
              "parameter_type": 1
            }
          },
          "text": "Keep ratio",
          "texton": "Keep ratio",
          "varname": "live.text"
        }
      },
      {
        "box": {
          "id": "obj-58",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [640, 456, 75, 22],
          "text": "prepend dim"
        }
      },
      {
        "box": {
          "id": "obj-12",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [640, 408, 47, 22],
          "text": "r ---dim"
        }
      },
      {
        "box": {
          "id": "obj-49",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [272, 640, 131, 22],
          "text": "prepend param density"
        }
      },
      {
        "box": {
          "annotation_name": "Density",
          "id": "obj-13",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [272, 600, 44, 15],
          "presentation": 1,
          "presentation_rect": [185, 135, 64, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "Density",
              "parameter_initial": [1],
              "parameter_initial_enable": 1,
              "parameter_longname": "Density",
              "parameter_mmax": 4,
              "parameter_mmin": -4,
              "parameter_modmode": 3,
              "parameter_shortname": "Density",
              "parameter_steps": 1001,
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "live.numbox[13]"
        }
      },
      {
        "box": {
          "id": "obj-53",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [376, 296, 76, 22],
          "text": "prepend d_b"
        }
      },
      {
        "box": {
          "id": "obj-56",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [288, 296, 76, 22],
          "text": "prepend d_g"
        }
      },
      {
        "box": {
          "id": "obj-57",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [200, 296, 73, 22],
          "text": "prepend d_r"
        }
      },
      {
        "box": {
          "id": "obj-50",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [376, 224, 75, 22],
          "text": "prepend c_b"
        }
      },
      {
        "box": {
          "id": "obj-51",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [288, 224, 75, 22],
          "text": "prepend c_g"
        }
      },
      {
        "box": {
          "id": "obj-52",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [200, 224, 73, 22],
          "text": "prepend c_r"
        }
      },
      {
        "box": {
          "id": "obj-43",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [376, 160, 76, 22],
          "text": "prepend b_b"
        }
      },
      {
        "box": {
          "id": "obj-44",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [288, 160, 76, 22],
          "text": "prepend b_g"
        }
      },
      {
        "box": {
          "id": "obj-47",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [200, 160, 73, 22],
          "text": "prepend b_r"
        }
      },
      {
        "box": {
          "id": "obj-42",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [376, 104, 76, 22],
          "text": "prepend a_b"
        }
      },
      {
        "box": {
          "id": "obj-40",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [288, 104, 76, 22],
          "text": "prepend a_g"
        }
      },
      {
        "box": {
          "id": "obj-38",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [200, 104, 73, 22],
          "text": "prepend a_r"
        }
      },
      {
        "box": {
          "id": "obj-36",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [376, 408, 90, 22],
          "text": "prepend param"
        }
      },
      {
        "box": {
          "id": "obj-21",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [136, 640, 123, 22],
          "text": "prepend param angle"
        }
      },
      {
        "box": {
          "id": "obj-20",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [96, 600, 140, 22],
          "text": "expr $f1 * 3.14159 / 180."
        }
      },
      {
        "box": {
          "annotation_name": "Angle",
          "id": "obj-19",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [96, 560, 44, 15],
          "presentation": 1,
          "presentation_rect": [185, 119, 64, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "Angle",
              "parameter_longname": "Angle",
              "parameter_mmax": 360,
              "parameter_modmode": 3,
              "parameter_shortname": "Angle",
              "parameter_type": 0,
              "parameter_units": "°",
              "parameter_unitstyle": 9
            }
          },
          "varname": "live.numbox"
        }
      },
      {
        "box": {
          "id": "obj-5",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [24, 640, 110, 22],
          "text": "prepend param pat"
        }
      },
      {
        "box": {
          "annotation_name": "Pattern",
          "focusbordercolor": [
            0.752941176470588,
            0.752941176470588,
            0.752941176470588,
            0
          ],
          "fontsize": 9,
          "id": "obj-4",
          "maxclass": "live.tab",
          "num_lines_patching": 4,
          "num_lines_presentation": 11,
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["", "", "float"],
          "parameter_enable": 1,
          "patching_rect": [24, 496, 304, 48],
          "presentation": 1,
          "presentation_rect": [2, 2, 142, 126],
          "saved_attribute_attributes": {
            "focusbordercolor": {"expression": ""},
            "valueof": {
              "parameter_annotation_name": "Pattern",
              "parameter_enum": [
                "Linear",
                "Radial",
                "Spiral",
                "Log",
                "Flower",
                "Twisted",
                "Ripples",
                "Hyperbolic",
                "Plasma",
                "Board",
                "Waves",
                "Liquid",
                "Veins",
                "Cells",
                "Clouds",
                "Fractal",
                "Flowing",
                "Turbulence",
                "Random",
                "Grid",
                "Noise",
                "Constant"
              ],
              "parameter_longname": "Pattern",
              "parameter_mmax": 21,
              "parameter_modmode": 0,
              "parameter_shortname": "Pattern",
              "parameter_type": 2,
              "parameter_unitstyle": 9
            }
          },
          "spacing_x": 3,
          "spacing_y": 3,
          "varname": "live.tab[1]"
        }
      },
      {
        "box": {
          "id": "obj-3",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [272, 728, 56, 22],
          "text": "s ---draw"
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
          "id": "obj-83",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [1144, 152, 49, 22],
          "text": "s ---dim"
        }
      },
      {
        "box": {
          "id": "obj-41",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [80, 120, 82, 22],
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
          "patching_rect": [80, 80, 100, 22],
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
          "patching_rect": [568, 128, 238, 34],
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
          "patching_rect": [1144, 48, 31, 22],
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
          "patching_rect": [1144, 16, 54, 22],
          "text": "r ---reset"
        }
      },
      {
        "box": {
          "id": "obj-309",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [912, 88, 80, 22],
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
          "patching_rect": [824, 128, 247, 36],
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
          "patching_rect": [568, 56, 31, 22],
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
          "patching_rect": [568, 24, 54, 22],
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
          "patching_rect": [568, 88, 100, 20],
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
          "varname": "live.tab[2]"
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
          "id": "obj-1",
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
          "id": "obj-7",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [792, 360, 83, 22],
          "text": "exportcode isf"
        }
      }
    ],
    "lines": [
      {"patchline": {"destination": ["obj-2", 1], "source": ["obj-1", 1]}},
      {"patchline": {"destination": ["obj-2", 0], "source": ["obj-1", 0]}},
      {"patchline": {"destination": ["obj-22", 0], "source": ["obj-10", 0]}},
      {"patchline": {"destination": ["obj-108", 0], "source": ["obj-100", 0]}},
      {"patchline": {"destination": ["obj-100", 0], "source": ["obj-101", 0]}},
      {"patchline": {"destination": ["obj-99", 0], "source": ["obj-101", 1]}},
      {"patchline": {"destination": ["obj-62", 0], "source": ["obj-102", 0]}},
      {"patchline": {"destination": ["obj-3", 0], "source": ["obj-103", 0]}},
      {"patchline": {"destination": ["obj-3", 0], "source": ["obj-104", 0]}},
      {"patchline": {"destination": ["obj-3", 0], "source": ["obj-105", 0]}},
      {"patchline": {"destination": ["obj-3", 0], "source": ["obj-106", 0]}},
      {"patchline": {"destination": ["obj-3", 0], "source": ["obj-107", 0]}},
      {"patchline": {"destination": ["obj-102", 0], "source": ["obj-108", 0]}},
      {"patchline": {"destination": ["obj-83", 0], "source": ["obj-109", 0]}},
      {"patchline": {"destination": ["obj-85", 3], "source": ["obj-11", 0]}},
      {"patchline": {"destination": ["obj-58", 0], "source": ["obj-12", 0]}},
      {"patchline": {"destination": ["obj-49", 0], "source": ["obj-13", 0]}},
      {"patchline": {"destination": ["obj-37", 0], "source": ["obj-14", 0]}},
      {"patchline": {"destination": ["obj-16", 0], "source": ["obj-15", 0]}},
      {"patchline": {"destination": ["obj-73", 0], "source": ["obj-16", 1]}},
      {"patchline": {"destination": ["obj-88", 0], "source": ["obj-16", 0]}},
      {"patchline": {"destination": ["obj-48", 0], "source": ["obj-17", 0]}},
      {"patchline": {"destination": ["obj-59", 0], "source": ["obj-18", 0]}},
      {"patchline": {"destination": ["obj-23", 0], "source": ["obj-180", 0]}},
      {"patchline": {"destination": ["obj-20", 0], "source": ["obj-19", 0]}},
      {"patchline": {"destination": ["obj-21", 0], "source": ["obj-20", 0]}},
      {"patchline": {"destination": ["obj-3", 0], "source": ["obj-21", 0]}},
      {"patchline": {"destination": ["obj-59", 0], "source": ["obj-22", 0]}},
      {"patchline": {"destination": ["obj-38", 0], "source": ["obj-24", 0]}},
      {"patchline": {"destination": ["obj-40", 0], "source": ["obj-25", 0]}},
      {"patchline": {"destination": ["obj-42", 0], "source": ["obj-26", 0]}},
      {"patchline": {"destination": ["obj-43", 0], "source": ["obj-27", 0]}},
      {"patchline": {"destination": ["obj-44", 0], "source": ["obj-28", 0]}},
      {"patchline": {"destination": ["obj-47", 0], "source": ["obj-29", 0]}},
      {"patchline": {"destination": ["obj-50", 0], "source": ["obj-30", 0]}},
      {"patchline": {"destination": ["obj-39", 1], "source": ["obj-309", 0]}},
      {"patchline": {"destination": ["obj-51", 0], "source": ["obj-31", 0]}},
      {"patchline": {"destination": ["obj-52", 0], "source": ["obj-32", 0]}},
      {"patchline": {"destination": ["obj-53", 0], "source": ["obj-33", 0]}},
      {"patchline": {"destination": ["obj-56", 0], "source": ["obj-34", 0]}},
      {"patchline": {"destination": ["obj-57", 0], "source": ["obj-35", 0]}},
      {"patchline": {"destination": ["obj-3", 0], "source": ["obj-36", 0]}},
      {"patchline": {"destination": ["obj-85", 0], "source": ["obj-366", 0]}},
      {"patchline": {"destination": ["obj-59", 0], "source": ["obj-37", 0]}},
      {"patchline": {"destination": ["obj-376", 0], "source": ["obj-372", 0]}},
      {"patchline": {"destination": ["obj-366", 0], "source": ["obj-376", 0]}},
      {"patchline": {"destination": ["obj-36", 0], "source": ["obj-38", 0]}},
      {"patchline": {"destination": ["obj-85", 2], "source": ["obj-39", 0]}},
      {"patchline": {"destination": ["obj-5", 0], "source": ["obj-4", 0]}},
      {"patchline": {"destination": ["obj-36", 0], "source": ["obj-40", 0]}},
      {"patchline": {"destination": ["obj-36", 0], "source": ["obj-42", 0]}},
      {"patchline": {"destination": ["obj-36", 0], "source": ["obj-43", 0]}},
      {"patchline": {"destination": ["obj-36", 0], "source": ["obj-44", 0]}},
      {"patchline": {"destination": ["obj-46", 0], "source": ["obj-45", 0]}},
      {"patchline": {"destination": ["obj-109", 0], "source": ["obj-46", 0]}},
      {"patchline": {"destination": ["obj-36", 0], "source": ["obj-47", 0]}},
      {"patchline": {"destination": ["obj-59", 0], "source": ["obj-48", 0]}},
      {"patchline": {"destination": ["obj-3", 0], "source": ["obj-49", 0]}},
      {"patchline": {"destination": ["obj-3", 0], "source": ["obj-5", 0]}},
      {"patchline": {"destination": ["obj-36", 0], "source": ["obj-50", 0]}},
      {"patchline": {"destination": ["obj-36", 0], "source": ["obj-51", 0]}},
      {"patchline": {"destination": ["obj-36", 0], "source": ["obj-52", 0]}},
      {"patchline": {"destination": ["obj-36", 0], "source": ["obj-53", 0]}},
      {"patchline": {"destination": ["obj-85", 4], "source": ["obj-55", 0]}},
      {"patchline": {"destination": ["obj-36", 0], "source": ["obj-56", 0]}},
      {"patchline": {"destination": ["obj-36", 0], "source": ["obj-57", 0]}},
      {
        "patchline": {
          "destination": ["obj-3", 0],
          "order": 1,
          "source": ["obj-58", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-88", 0],
          "order": 0,
          "source": ["obj-58", 0]
        }
      },
      {"patchline": {"destination": ["obj-3", 0], "source": ["obj-59", 0]}},
      {"patchline": {"destination": ["obj-64", 0], "source": ["obj-6", 0]}},
      {"patchline": {"destination": ["obj-71", 0], "source": ["obj-60", 0]}},
      {"patchline": {"destination": ["obj-98", 1], "source": ["obj-62", 0]}},
      {"patchline": {"destination": ["obj-82", 0], "source": ["obj-63", 0]}},
      {"patchline": {"destination": ["obj-3", 0], "source": ["obj-64", 0]}},
      {"patchline": {"destination": ["obj-73", 0], "source": ["obj-7", 0]}},
      {"patchline": {"destination": ["obj-87", 0], "source": ["obj-71", 0]}},
      {"patchline": {"destination": ["obj-77", 0], "source": ["obj-72", 0]}},
      {"patchline": {"destination": ["obj-11", 0], "source": ["obj-73", 0]}},
      {"patchline": {"destination": ["obj-84", 0], "source": ["obj-74", 0]}},
      {"patchline": {"destination": ["obj-86", 0], "source": ["obj-75", 0]}},
      {
        "patchline": {
          "destination": ["obj-78", 0],
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
      {"patchline": {"destination": ["obj-3", 0], "source": ["obj-77", 0]}},
      {"patchline": {"destination": ["obj-73", 0], "source": ["obj-78", 0]}},
      {"patchline": {"destination": ["obj-18", 0], "source": ["obj-8", 0]}},
      {"patchline": {"destination": ["obj-3", 0], "source": ["obj-81", 0]}},
      {"patchline": {"destination": ["obj-3", 0], "source": ["obj-82", 0]}},
      {"patchline": {"destination": ["obj-3", 0], "source": ["obj-84", 0]}},
      {"patchline": {"destination": ["obj-366", 0], "source": ["obj-85", 2]}},
      {"patchline": {"destination": ["obj-39", 0], "source": ["obj-85", 4]}},
      {"patchline": {"destination": ["obj-54", 0], "source": ["obj-85", 3]}},
      {"patchline": {"destination": ["obj-3", 0], "source": ["obj-86", 0]}},
      {
        "patchline": {
          "destination": ["obj-10", 0],
          "order": 1,
          "source": ["obj-87", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-14", 0],
          "order": 2,
          "source": ["obj-87", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-17", 0],
          "order": 3,
          "source": ["obj-87", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-24", 0],
          "order": 15,
          "source": ["obj-87", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-25", 0],
          "order": 11,
          "source": ["obj-87", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-26", 0],
          "order": 7,
          "source": ["obj-87", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-27", 0],
          "order": 6,
          "source": ["obj-87", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-28", 0],
          "order": 10,
          "source": ["obj-87", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-29", 0],
          "order": 14,
          "source": ["obj-87", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-30", 0],
          "order": 5,
          "source": ["obj-87", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-31", 0],
          "order": 9,
          "source": ["obj-87", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-32", 0],
          "order": 13,
          "source": ["obj-87", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-33", 0],
          "order": 4,
          "source": ["obj-87", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-34", 0],
          "order": 8,
          "source": ["obj-87", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-35", 0],
          "order": 12,
          "source": ["obj-87", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-8", 0],
          "order": 0,
          "source": ["obj-87", 0]
        }
      },
      {"patchline": {"destination": ["obj-73", 0], "source": ["obj-88", 0]}},
      {"patchline": {"destination": ["obj-11", 0], "source": ["obj-89", 0]}},
      {"patchline": {"destination": ["obj-41", 0], "source": ["obj-9", 0]}},
      {"patchline": {"destination": ["obj-104", 0], "source": ["obj-90", 0]}},
      {"patchline": {"destination": ["obj-3", 0], "source": ["obj-91", 0]}},
      {"patchline": {"destination": ["obj-91", 0], "source": ["obj-92", 0]}},
      {"patchline": {"destination": ["obj-105", 0], "source": ["obj-93", 0]}},
      {"patchline": {"destination": ["obj-106", 0], "source": ["obj-94", 0]}},
      {"patchline": {"destination": ["obj-103", 0], "source": ["obj-95", 0]}},
      {"patchline": {"destination": ["obj-101", 0], "source": ["obj-96", 0]}},
      {"patchline": {"destination": ["obj-107", 0], "source": ["obj-97", 0]}},
      {
        "patchline": {
          "destination": ["obj-63", 0],
          "order": 0,
          "source": ["obj-98", 1]
        }
      },
      {
        "patchline": {
          "destination": ["obj-81", 0],
          "order": 1,
          "source": ["obj-98", 1]
        }
      },
      {"patchline": {"destination": ["obj-81", 0], "source": ["obj-98", 0]}},
      {"patchline": {"destination": ["obj-98", 0], "source": ["obj-99", 0]}}
    ],
    "parameters": {
      "obj-10": ["Frequency A", "Frequency A", 0],
      "obj-109::obj-151": ["Dimensions[1]", "Dimensions", 0],
      "obj-13": ["Density", "Density", 0],
      "obj-14": ["Amplitude A", "Amplitude A", 0],
      "obj-17": ["Offset A", "Offset A", 0],
      "obj-19": ["Angle", "Angle", 0],
      "obj-24": ["Offset R", "Offset R", 0],
      "obj-25": ["Offset G", "Offset G", 0],
      "obj-26": ["Offset B", "Offset B", 0],
      "obj-27": ["Amplitude B", "Amplitude B", 0],
      "obj-28": ["Amplitude G", "Amplitude G", 0],
      "obj-29": ["Amplitude R", "Amplitude R", 0],
      "obj-30": ["Frequency B", "Frequency B", 0],
      "obj-31": ["Frequency G", "Frequency G", 0],
      "obj-32": ["Frequency R", "Frequency R", 0],
      "obj-33": ["Phase B", "Phase B", 0],
      "obj-34": ["Phase G", "Phase G", 0],
      "obj-35": ["Phase R", "Phase R", 0],
      "obj-366": ["Channel", "Channel", 0],
      "obj-4": ["Pattern", "Pattern", 0],
      "obj-6": ["Keep Ratio", "Keep Ratio", 0],
      "obj-60": ["Color Preset", "Color Preset", 0],
      "obj-62": ["Scale X", "Scale X", 0],
      "obj-63": ["Scale Y", "Scale Y", 0],
      "obj-72": ["Shift Hue", "Shift Hue", 0],
      "obj-74": ["Shift Y", "Shift Y", 0],
      "obj-75": ["Shift X", "Shift X", 0],
      "obj-8": ["Phase A", "Phase A", 0],
      "obj-90": ["A", "A", 0],
      "obj-92": ["Steps", "Steps", 0],
      "obj-93": ["R", "R", 0],
      "obj-94": ["G", "G", 0],
      "obj-95": ["B", "B", 0],
      "obj-96": ["Keep Scale Ratio", "Keep Scale Ratio", 0],
      "obj-97": ["Value", "Value", 0],
      "parameterbanks": {
        "0": {
          "index": 0,
          "name": "",
          "parameters": ["-", "-", "-", "-", "-", "-", "-", "-"]
        }
      },
      "parameter_overrides": {
        "obj-109::obj-151": {"parameter_longname": "Dimensions[1]"}
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
      }
    ],
    "autosave": 0
  }
}