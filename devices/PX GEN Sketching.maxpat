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
          "id": "obj-71",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1288, 1000, 107, 22],
          "text": "prepend max_skip"
        }
      },
      {
        "box": {
          "id": "obj-66",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["", "", "float"],
          "parameter_enable": 1,
          "patching_rect": [1288, 968, 100, 15],
          "presentation": 1,
          "presentation_rect": [132, 153, 44, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_enum": ["Even", "Last"],
              "parameter_longname": "Max Skip",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "Max Skip",
              "parameter_type": 2,
              "parameter_annotation_name": "Max Skip"
            }
          },
          "varname": "live.menu",
          "annotation_name": "Max Skip"
        }
      },
      {
        "box": {
          "id": "obj-65",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [1288, 936, 71, 18],
          "presentation": 1,
          "presentation_rect": [130, 138, 56, 18],
          "text": "Max skip",
          "textjustification": 0
        }
      },
      {
        "box": {
          "id": "obj-20",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [168, 224, 73, 22],
          "text": "r ---to_script"
        }
      },
      {
        "box": {
          "id": "obj-70",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [440, 272, 32, 22],
          "text": "gate"
        }
      },
      {
        "box": {
          "id": "obj-69",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [440, 224, 80, 22],
          "text": "r ---play_gate"
        }
      },
      {
        "box": {
          "id": "obj-68",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [1392, 896, 82, 22],
          "text": "s ---play_gate"
        }
      },
      {
        "box": {
          "id": "obj-67",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["int", "int"],
          "patching_rect": [1280, 832, 30, 22],
          "text": "t i i"
        }
      },
      {
        "box": {
          "id": "obj-64",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1280, 896, 101, 22],
          "text": "prepend set_play"
        }
      },
      {
        "box": {
          "id": "obj-63",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1024, 1110, 119, 22],
          "text": "prepend max_circles"
        }
      },
      {
        "box": {
          "id": "obj-62",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1024, 1071, 141, 22],
          "text": "prepend max_rectangles"
        }
      },
      {
        "box": {
          "id": "obj-61",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1024, 1031, 131, 22],
          "text": "prepend max_triangles"
        }
      },
      {
        "box": {
          "id": "obj-59",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1024, 992, 110, 22],
          "text": "prepend max_lines"
        }
      },
      {
        "box": {
          "id": "obj-58",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1024, 959, 117, 22],
          "text": "prepend max_points"
        }
      },
      {
        "box": {
          "id": "obj-57",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1024, 919, 117, 22],
          "text": "prepend set_disable"
        }
      },
      {
        "box": {
          "id": "obj-56",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1024, 880, 107, 22],
          "text": "prepend set_delay"
        }
      },
      {
        "box": {
          "id": "obj-53",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [1170, 953, 75, 22],
          "text": "s ---to_script"
        }
      },
      {
        "box": {
          "id": "obj-52",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["float"],
          "patching_rect": [970, 840, 39, 22],
          "text": "/ 100."
        }
      },
      {
        "box": {
          "id": "obj-51",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["float"],
          "patching_rect": [970, 798, 39, 22],
          "text": "/ 100."
        }
      },
      {
        "box": {
          "id": "obj-50",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1024, 840, 109, 22],
          "text": "prepend line_scale"
        }
      },
      {
        "box": {
          "id": "obj-49",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1024, 798, 117, 22],
          "text": "prepend point_scale"
        }
      },
      {
        "box": {
          "id": "obj-48",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [520, 80, 145, 22],
          "text": "expr 130 + ($i1 == 1) * 96"
        }
      },
      {
        "box": {
          "id": "obj-44",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["bang", "int", "int"],
          "patching_rect": [520, 168, 83, 22],
          "text": "live.thisdevice"
        }
      },
      {
        "box": {
          "id": "obj-42",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [897, 1110, 44, 15],
          "presentation": 1,
          "presentation_rect": [180, 153, 44, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [1000],
              "parameter_initial_enable": 1,
              "parameter_longname": "Max Circles",
              "parameter_mmax": 99999,
              "parameter_mmin": 1,
              "parameter_modmode": 4,
              "parameter_shortname": "Max Circles",
              "parameter_type": 0,
              "parameter_unitstyle": 0,
              "parameter_annotation_name": "Max Circles"
            }
          },
          "varname": "live.numbox[8]",
          "annotation_name": "Max Circles"
        }
      },
      {
        "box": {
          "id": "obj-43",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [839, 1110, 71, 18],
          "presentation": 1,
          "presentation_rect": [178, 138, 56, 18],
          "text": "Max circs",
          "textjustification": 0
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
          "patching_rect": [891, 1074, 44, 15],
          "presentation": 1,
          "presentation_rect": [180, 118, 44, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [1000],
              "parameter_initial_enable": 1,
              "parameter_longname": "Max Rectangles",
              "parameter_mmax": 99999,
              "parameter_mmin": 1,
              "parameter_modmode": 4,
              "parameter_shortname": "Max Rectangles",
              "parameter_type": 0,
              "parameter_unitstyle": 0,
              "parameter_annotation_name": "Max Rectangles"
            }
          },
          "varname": "live.numbox[7]",
          "annotation_name": "Max Rectangles"
        }
      },
      {
        "box": {
          "id": "obj-41",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [836, 1074, 71, 18],
          "presentation": 1,
          "presentation_rect": [178, 103, 56, 18],
          "text": "Max rects",
          "textjustification": 0
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
          "patching_rect": [894, 1034, 44, 15],
          "presentation": 1,
          "presentation_rect": [180, 83, 44, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [1000],
              "parameter_initial_enable": 1,
              "parameter_longname": "Max Triangles",
              "parameter_mmax": 99999,
              "parameter_mmin": 1,
              "parameter_modmode": 4,
              "parameter_shortname": "Max Triangles",
              "parameter_type": 0,
              "parameter_unitstyle": 0,
              "parameter_annotation_name": "Max Triangles"
            }
          },
          "varname": "live.numbox[6]",
          "annotation_name": "Max Triangles"
        }
      },
      {
        "box": {
          "id": "obj-39",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [836, 1031, 71, 18],
          "presentation": 1,
          "presentation_rect": [178, 68, 48, 18],
          "text": "Max tris",
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
          "patching_rect": [897, 992, 44, 15],
          "presentation": 1,
          "presentation_rect": [180, 49, 44, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [2000],
              "parameter_initial_enable": 1,
              "parameter_longname": "Max Lines",
              "parameter_mmax": 99999,
              "parameter_mmin": 1,
              "parameter_modmode": 4,
              "parameter_shortname": "Max Lines",
              "parameter_type": 0,
              "parameter_unitstyle": 0,
              "parameter_annotation_name": "Max Lines"
            }
          },
          "varname": "live.numbox[5]",
          "annotation_name": "Max Lines"
        }
      },
      {
        "box": {
          "id": "obj-37",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [836, 992, 71, 18],
          "presentation": 1,
          "presentation_rect": [178, 35, 48, 18],
          "text": "Max lines",
          "textjustification": 0
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
          "patching_rect": [894, 956, 44, 15],
          "presentation": 1,
          "presentation_rect": [180, 15, 44, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [4000],
              "parameter_initial_enable": 1,
              "parameter_longname": "Max Points",
              "parameter_mmax": 99999,
              "parameter_mmin": 1,
              "parameter_modmode": 4,
              "parameter_shortname": "Max Points",
              "parameter_type": 0,
              "parameter_unitstyle": 0,
              "parameter_annotation_name": "Max Points"
            }
          },
          "varname": "live.numbox[4]",
          "annotation_name": "Max Points"
        }
      },
      {
        "box": {
          "id": "obj-34",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [836, 956, 71, 18],
          "presentation": 1,
          "presentation_rect": [178, 0, 56, 18],
          "text": "Max pts",
          "textjustification": 0
        }
      },
      {
        "box": {
          "id": "obj-31",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "parameter_enable": 1,
          "patching_rect": [1280, 800, 44, 15],
          "presentation": 1,
          "presentation_rect": [72, 135, 27, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_enum": ["val1", "val2"],
              "parameter_initial": [1],
              "parameter_initial_enable": 1,
              "parameter_longname": "Play / Stop",
              "parameter_mmax": 1,
              "parameter_modmode": 4,
              "parameter_shortname": "Play / Stop",
              "parameter_type": 1,
              "parameter_annotation_name": "Play / Stop"
            }
          },
          "text": "Stop",
          "texton": "Play",
          "varname": "live.text",
          "annotation_name": "Play / Stop"
        }
      },
      {
        "box": {
          "id": "obj-28",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [894, 916, 44, 15],
          "presentation": 1,
          "presentation_rect": [132, 118, 44, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [50],
              "parameter_initial_enable": 1,
              "parameter_longname": "Max Run",
              "parameter_mmax": 500,
              "parameter_modmode": 3,
              "parameter_shortname": "Max Run",
              "parameter_type": 0,
              "parameter_unitstyle": 2,
              "parameter_annotation_name": "Max Run"
            }
          },
          "varname": "live.numbox[3]",
          "annotation_name": "Max Run"
        }
      },
      {
        "box": {
          "id": "obj-29",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [839, 916, 71, 18],
          "presentation": 1,
          "presentation_rect": [130, 103, 56, 18],
          "text": "Max run",
          "textjustification": 0
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
          "patching_rect": [897, 880, 44, 15],
          "presentation": 1,
          "presentation_rect": [132, 83, 44, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [10],
              "parameter_initial_enable": 1,
              "parameter_longname": "Delay",
              "parameter_mmax": 2000,
              "parameter_modmode": 3,
              "parameter_shortname": "Delay",
              "parameter_type": 0,
              "parameter_unitstyle": 2,
              "parameter_annotation_name": "Delay"
            }
          },
          "varname": "live.numbox[2]",
          "annotation_name": "Delay"
        }
      },
      {
        "box": {
          "id": "obj-27",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [839, 877, 71, 18],
          "presentation": 1,
          "presentation_rect": [130, 68, 56, 18],
          "text": "Delay",
          "textjustification": 0
        }
      },
      {
        "box": {
          "id": "obj-21",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [897, 837, 44, 15],
          "presentation": 1,
          "presentation_rect": [132, 49, 44, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [100],
              "parameter_initial_enable": 1,
              "parameter_longname": "Line Size",
              "parameter_mmax": 4000,
              "parameter_modmode": 3,
              "parameter_shortname": "Line Size",
              "parameter_type": 0,
              "parameter_unitstyle": 5,
              "parameter_annotation_name": "Line Size"
            }
          },
          "varname": "live.numbox[1]",
          "annotation_name": "Line Size"
        }
      },
      {
        "box": {
          "id": "obj-22",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [842, 837, 71, 18],
          "presentation": 1,
          "presentation_rect": [130, 35, 56, 18],
          "text": "Line size",
          "textjustification": 0
        }
      },
      {
        "box": {
          "id": "obj-16",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [897, 801, 44, 15],
          "presentation": 1,
          "presentation_rect": [132, 15, 44, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [100],
              "parameter_initial_enable": 1,
              "parameter_longname": "Point Size",
              "parameter_mmax": 4000,
              "parameter_modmode": 3,
              "parameter_shortname": "Point Size",
              "parameter_type": 0,
              "parameter_unitstyle": 5,
              "parameter_annotation_name": "Point Size"
            }
          },
          "varname": "live.numbox",
          "annotation_name": "Point Size"
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
          "annotation_name": "Show Parameters",
          "id": "obj-4",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "parameter_enable": 1,
          "patching_rect": [520, 40, 44, 15],
          "presentation": 1,
          "presentation_rect": [101, 135, 28, 15],
          "saved_attribute_attributes": {
            "activebgoncolor": {"expression": "themecolor.live_value_arc"},
            "valueof": {
              "parameter_annotation_name": "Show Parameters",
              "parameter_enum": ["val1", "val2"],
              "parameter_initial": [1],
              "parameter_initial_enable": 1,
              "parameter_longname": "Show Parameters",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "Show Parameters",
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
          "id": "obj-3",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [960, 705, 72, 22],
          "text": "prepend set"
        }
      },
      {
        "box": {
          "id": "obj-2",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [960, 648, 57, 22],
          "text": "tosymbol"
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
          "id": "obj-1",
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
            "rect": [33, 71, 567, 508],
            "openinpresentation": 1,
            "gridsize": [15, 15],
            "integercoordinates": 1,
            "boxes": [
              {
                "box": {
                  "comment": "",
                  "id": "obj-2",
                  "index": 1,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [149, 50, 30, 30]
                }
              },
              {
                "box": {
                  "fontname": "Ableton Sans Light",
                  "id": "obj-1",
                  "maxclass": "live.comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [79, 109, 151, 18],
                  "presentation": 1,
                  "presentation_rect": [2, 0, 122, 18],
                  "textjustification": 0
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "destination": ["obj-1", 0],
                  "source": ["obj-2", 0]
                }
              }
            ]
          },
          "patching_rect": [1080, 616, 128, 128],
          "presentation": 1,
          "presentation_rect": [2, 40, 126, 86],
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "id": "obj-13",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [840, 440, 102, 22],
          "text": "prepend read_file"
        }
      },
      {
        "box": {
          "code": "function read_file(f) {\r\n\tconst file = new File(f, 'read')\r\n\toutlet(0, file.readstring(1e6)) // mi-mi-milions!\r\n}",
          "filename": "none",
          "fontface": 0,
          "fontname": "<Monospaced>",
          "fontsize": 12,
          "id": "obj-8",
          "maxclass": "v8.codebox",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [840, 488, 456, 104],
          "saved_object_attributes": {"parameter_enable": 0}
        }
      },
      {
        "box": {
          "id": "obj-26",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [264, 272, 79, 22],
          "text": "prepend load"
        }
      },
      {
        "box": {
          "id": "obj-25",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [264, 224, 86, 22],
          "text": "r ---loaded_file"
        }
      },
      {
        "box": {
          "id": "obj-23",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [840, 648, 88, 22],
          "text": "s ---loaded_file"
        }
      },
      {
        "box": {
          "id": "obj-19",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [840, 400, 43, 22],
          "text": "r ---file"
        }
      },
      {
        "box": {
          "id": "obj-7",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [327, 448, 80, 22],
          "text": "r ---this_bang"
        }
      },
      {
        "box": {
          "id": "obj-121",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [600, 576, 75, 22],
          "text": "loadmess .js"
        }
      },
      {
        "box": {
          "bgmode": 0,
          "border": 0,
          "clickthrough": 0,
          "enablehscroll": 0,
          "enablevscroll": 0,
          "id": "obj-112",
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "maxclass": "bpatcher",
          "name": "PX._menu.maxpat",
          "numinlets": 3,
          "numoutlets": 1,
          "offset": [0, 0],
          "outlettype": [""],
          "patching_rect": [472, 624, 130, 19],
          "presentation": 1,
          "presentation_rect": [0, 0, 130, 19],
          "varname": "PX._menu",
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "id": "obj-115",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [527, 576, 54, 22],
          "text": "r ---reset"
        }
      },
      {
        "box": {
          "annotation_name": "Reload",
          "fontsize": 8,
          "id": "obj-362",
          "maxclass": "live.text",
          "mode": 0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "parameter_enable": 1,
          "patching_rect": [527, 527, 32, 32],
          "pictures": ["refresh.svg", "refresh.svg"],
          "presentation": 1,
          "presentation_rect": [86, 20, 42, 16],
          "remapsvgcolors": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "Reload",
              "parameter_enum": ["val1", "val2"],
              "parameter_longname": "Reload",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "Reload",
              "parameter_type": 2
            }
          },
          "text": "Reload",
          "usesvgviewbox": 1,
          "varname": "live.text[10]"
        }
      },
      {
        "box": {
          "id": "obj-359",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [472, 760, 105, 22],
          "text": "sprintf \\\"%s%s.js\\\""
        }
      },
      {
        "box": {
          "id": "obj-346",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [472, 817, 45, 22],
          "text": "s ---file"
        }
      },
      {
        "box": {
          "id": "obj-345",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [327, 679, 60, 22],
          "text": "s ---folder"
        }
      },
      {
        "box": {
          "id": "obj-192",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [327, 621, 127, 22],
          "text": "sprintf \\\"%ssketches/\\\""
        }
      },
      {
        "box": {
          "id": "obj-297",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["bang", "bang", "bang"],
          "patching_rect": [327, 494, 42, 22],
          "text": "t b b b"
        }
      },
      {
        "box": {
          "id": "obj-190",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [458, 542, 53, 22],
          "text": "types .js"
        }
      },
      {
        "box": {
          "id": "obj-188",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [416, 680, 31, 22],
          "text": "t s s"
        }
      },
      {
        "box": {
          "id": "obj-187",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "int"],
          "patching_rect": [458, 576, 39, 22],
          "text": "folder"
        }
      },
      {
        "box": {
          "id": "obj-137",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["bang", ""],
          "patching_rect": [472, 680, 64, 22],
          "text": "t b l"
        }
      },
      {
        "box": {
          "id": "obj-60",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [472, 715, 38, 22],
          "text": "zl.reg"
        }
      },
      {
        "box": {
          "id": "obj-74",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [327, 542, 32, 22],
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
          "patching_rect": [327, 576, 67, 22],
          "save": ["#N", "thispatcher", ";", "#Q", "end", ";"],
          "text": "thispatcher"
        }
      },
      {
        "box": {
          "id": "obj-358",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [184, 505, 57, 22],
          "text": "tosymbol"
        }
      },
      {
        "box": {
          "annotation_name": "Open Folder",
          "fontsize": 8,
          "id": "obj-361",
          "maxclass": "live.text",
          "mode": 0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "parameter_enable": 1,
          "patching_rect": [0, 449, 32, 32],
          "pictures": ["refresh.svg", "refresh.svg"],
          "presentation": 1,
          "presentation_rect": [44, 20, 42, 16],
          "remapsvgcolors": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "Open Folder",
              "parameter_enum": ["val1", "val2"],
              "parameter_invisible": 2,
              "parameter_longname": "Open Folder",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "Open Folder",
              "parameter_type": 2
            }
          },
          "text": "Folder",
          "usesvgviewbox": 1,
          "varname": "live.text[9]"
        }
      },
      {
        "box": {
          "annotation_name": "Edit",
          "fontsize": 8,
          "id": "obj-360",
          "maxclass": "live.text",
          "mode": 0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "parameter_enable": 1,
          "patching_rect": [144, 449, 32, 32],
          "pictures": ["refresh.svg", "refresh.svg"],
          "presentation": 1,
          "presentation_rect": [2, 20, 42, 16],
          "remapsvgcolors": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "Edit",
              "parameter_enum": ["val1", "val2"],
              "parameter_invisible": 2,
              "parameter_longname": "Edit",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "Edit",
              "parameter_type": 2
            }
          },
          "text": "Edit",
          "usesvgviewbox": 1,
          "varname": "live.text[8]"
        }
      },
      {
        "box": {
          "id": "obj-357",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [56, 505, 57, 22],
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
          "patching_rect": [184, 457, 43, 22],
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
          "patching_rect": [56, 457, 58, 22],
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
          "patching_rect": [144, 545, 38, 22],
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
          "patching_rect": [0, 545, 38, 22],
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
          "patching_rect": [0, 633, 57, 22],
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
          "patching_rect": [0, 593, 87, 22],
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
          "patching_rect": [0, 673, 129, 35],
          "text": ";\rmax launchbrowser $1"
        }
      },
      {
        "box": {
          "filename": "PX GEN Sketching._sketching.js",
          "id": "obj-5",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [264, 320, 207, 22],
          "saved_object_attributes": {"parameter_enable": 0},
          "text": "v8 \"PX GEN Sketching._sketching.js\"",
          "textfile": {
            "filename": "PX GEN Sketching._sketching.js",
            "flags": 0,
            "embed": 0,
            "autowatch": 1
          }
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 13,
          "id": "obj-14",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [8, 408, 659, 23],
          "text": "jit.gl.sketch px-stream @drawto ---sketch @blend_enable 1 @automatic 1 @transform_reset 1 @depth_enable 0"
        }
      },
      {
        "box": {
          "bgmode": 0,
          "border": 0,
          "clickthrough": 0,
          "enablehscroll": 0,
          "enablevscroll": 0,
          "id": "obj-35",
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "maxclass": "bpatcher",
          "name": "PX._dimensions.maxpat",
          "numinlets": 1,
          "numoutlets": 1,
          "offset": [0, 0],
          "outlettype": [""],
          "patching_rect": [1296, 209, 72, 17],
          "presentation": 1,
          "presentation_rect": [0, 133, 72, 17],
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "id": "obj-109",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": ["bang"],
          "patching_rect": [280, 96, 22, 22],
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
          "id": "obj-85",
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "maxclass": "bpatcher",
          "name": "PX._channel.maxpat",
          "numinlets": 5,
          "numoutlets": 6,
          "offset": [0, 0],
          "outlettype": ["int", "bang", "", "", "", ""],
          "patching_rect": [760, 272, 239, 32],
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
          "patching_rect": [8, 0, 351, 47],
          "saved_attribute_attributes": {
            "textcolor": {"expression": "themecolor.live_control_fg"}
          },
          "text": "PX Text by darosh\nhttps://github.com/darosh/px-stream"
        }
      },
      {
        "box": {
          "id": "obj-55",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["int", "int"],
          "patching_rect": [1319, 258, 47, 22],
          "text": "unpack"
        }
      },
      {
        "box": {
          "id": "obj-54",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [1319, 296, 63, 22],
          "text": "s ---height"
        }
      },
      {
        "box": {
          "id": "obj-46",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [1296, 169, 31, 22],
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
          "patching_rect": [1296, 128, 54, 22],
          "text": "r ---reset"
        }
      },
      {
        "box": {
          "id": "obj-33",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1296, 328, 75, 22],
          "text": "prepend dim"
        }
      },
      {
        "box": {
          "id": "obj-30",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["jit_gl_texture", "", ""],
          "patching_rect": [752, 368, 737, 22],
          "text": "jit.gl.node px-stream @name ---sketch @adapt 0 @capture 1 @erase_color 0 0 0 0 @automatic 1 @transform_reset 1 @depth_enable 0"
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
          "patching_rect": [1096, 224, 80, 22],
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
          "patching_rect": [1016, 272, 240, 32],
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
          "patching_rect": [760, 160, 31, 22],
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
          "patching_rect": [760, 128, 54, 22],
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
          "patching_rect": [760, 224, 100, 20],
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
          "patching_rect": [280, 64, 100, 22],
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
          "angle": 270,
          "bgcolor": [0.235, 0.235, 0.235, 1],
          "id": "obj-369",
          "maxclass": "panel",
          "mode": 0,
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [8, 192, 128, 128],
          "presentation": 1,
          "presentation_rect": [3, 40, 124, 90],
          "proportion": 0.39,
          "saved_attribute_attributes": {
            "bgfillcolor": {"expression": "themecolor.live_control_text_bg"}
          }
        }
      },
      {
        "box": {
          "id": "obj-18",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [842, 798, 71, 18],
          "presentation": 1,
          "presentation_rect": [130, 0, 56, 18],
          "text": "Point size",
          "textjustification": 0
        }
      },
      {
        "box": {
          "id": "obj-47",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [520, 128, 69, 22],
          "text": "setwidth $1"
        }
      }
    ],
    "lines": [
      {"patchline": {"destination": ["obj-6", 0], "source": ["obj-109", 0]}},
      {"patchline": {"destination": ["obj-10", 1], "source": ["obj-11", 1]}},
      {"patchline": {"destination": ["obj-10", 0], "source": ["obj-11", 0]}},
      {"patchline": {"destination": ["obj-137", 0], "source": ["obj-112", 0]}},
      {"patchline": {"destination": ["obj-112", 1], "source": ["obj-115", 0]}},
      {"patchline": {"destination": ["obj-85", 2], "source": ["obj-12", 0]}},
      {"patchline": {"destination": ["obj-112", 2], "source": ["obj-121", 0]}},
      {"patchline": {"destination": ["obj-8", 0], "source": ["obj-13", 0]}},
      {"patchline": {"destination": ["obj-359", 1], "source": ["obj-137", 1]}},
      {"patchline": {"destination": ["obj-60", 0], "source": ["obj-137", 0]}},
      {"patchline": {"destination": ["obj-51", 0], "source": ["obj-16", 0]}},
      {"patchline": {"destination": ["obj-15", 0], "source": ["obj-17", 0]}},
      {"patchline": {"destination": ["obj-112", 0], "source": ["obj-187", 1]}},
      {"patchline": {"destination": ["obj-112", 0], "source": ["obj-187", 0]}},
      {"patchline": {"destination": ["obj-187", 0], "source": ["obj-188", 0]}},
      {"patchline": {"destination": ["obj-60", 1], "source": ["obj-188", 1]}},
      {"patchline": {"destination": ["obj-13", 0], "source": ["obj-19", 0]}},
      {"patchline": {"destination": ["obj-187", 0], "source": ["obj-190", 0]}},
      {
        "patchline": {
          "destination": ["obj-188", 0],
          "order": 0,
          "source": ["obj-192", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-345", 0],
          "order": 1,
          "source": ["obj-192", 0]
        }
      },
      {"patchline": {"destination": ["obj-3", 0], "source": ["obj-2", 0]}},
      {"patchline": {"destination": ["obj-5", 0], "source": ["obj-20", 0]}},
      {"patchline": {"destination": ["obj-52", 0], "source": ["obj-21", 0]}},
      {"patchline": {"destination": ["obj-56", 0], "source": ["obj-24", 0]}},
      {"patchline": {"destination": ["obj-26", 0], "source": ["obj-25", 0]}},
      {"patchline": {"destination": ["obj-5", 0], "source": ["obj-26", 0]}},
      {"patchline": {"destination": ["obj-57", 0], "source": ["obj-28", 0]}},
      {"patchline": {"destination": ["obj-190", 0], "source": ["obj-297", 1]}},
      {"patchline": {"destination": ["obj-74", 0], "source": ["obj-297", 0]}},
      {"patchline": {"destination": ["obj-1", 0], "source": ["obj-3", 0]}},
      {"patchline": {"destination": ["obj-85", 3], "source": ["obj-30", 0]}},
      {"patchline": {"destination": ["obj-12", 1], "source": ["obj-309", 0]}},
      {"patchline": {"destination": ["obj-67", 0], "source": ["obj-31", 0]}},
      {"patchline": {"destination": ["obj-58", 0], "source": ["obj-32", 0]}},
      {"patchline": {"destination": ["obj-335", 0], "source": ["obj-326", 0]}},
      {
        "patchline": {
          "destination": ["obj-30", 0],
          "order": 0,
          "source": ["obj-33", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-5", 0],
          "order": 1,
          "source": ["obj-33", 0]
        }
      },
      {"patchline": {"destination": ["obj-336", 0], "source": ["obj-335", 0]}},
      {"patchline": {"destination": ["obj-326", 0], "source": ["obj-337", 0]}},
      {"patchline": {"destination": ["obj-326", 0], "source": ["obj-342", 0]}},
      {"patchline": {"destination": ["obj-357", 0], "source": ["obj-343", 0]}},
      {"patchline": {"destination": ["obj-358", 0], "source": ["obj-344", 0]}},
      {
        "patchline": {
          "destination": ["obj-33", 0],
          "order": 1,
          "source": ["obj-35", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-55", 0],
          "order": 0,
          "source": ["obj-35", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-85", 4],
          "order": 2,
          "source": ["obj-35", 0]
        }
      },
      {"patchline": {"destination": ["obj-337", 1], "source": ["obj-357", 0]}},
      {"patchline": {"destination": ["obj-342", 1], "source": ["obj-358", 0]}},
      {"patchline": {"destination": ["obj-346", 0], "source": ["obj-359", 0]}},
      {"patchline": {"destination": ["obj-59", 0], "source": ["obj-36", 0]}},
      {"patchline": {"destination": ["obj-342", 0], "source": ["obj-360", 0]}},
      {"patchline": {"destination": ["obj-337", 0], "source": ["obj-361", 0]}},
      {"patchline": {"destination": ["obj-187", 0], "source": ["obj-362", 0]}},
      {"patchline": {"destination": ["obj-85", 0], "source": ["obj-366", 0]}},
      {"patchline": {"destination": ["obj-376", 0], "source": ["obj-372", 0]}},
      {"patchline": {"destination": ["obj-366", 0], "source": ["obj-376", 0]}},
      {"patchline": {"destination": ["obj-61", 0], "source": ["obj-38", 0]}},
      {"patchline": {"destination": ["obj-48", 0], "source": ["obj-4", 0]}},
      {"patchline": {"destination": ["obj-62", 0], "source": ["obj-40", 0]}},
      {"patchline": {"destination": ["obj-63", 0], "source": ["obj-42", 0]}},
      {"patchline": {"destination": ["obj-46", 0], "source": ["obj-45", 0]}},
      {"patchline": {"destination": ["obj-35", 0], "source": ["obj-46", 0]}},
      {"patchline": {"destination": ["obj-44", 0], "source": ["obj-47", 0]}},
      {"patchline": {"destination": ["obj-47", 0], "source": ["obj-48", 0]}},
      {"patchline": {"destination": ["obj-53", 0], "source": ["obj-49", 0]}},
      {"patchline": {"destination": ["obj-14", 0], "source": ["obj-5", 0]}},
      {"patchline": {"destination": ["obj-30", 0], "source": ["obj-5", 1]}},
      {"patchline": {"destination": ["obj-53", 0], "source": ["obj-50", 0]}},
      {"patchline": {"destination": ["obj-49", 0], "source": ["obj-51", 0]}},
      {"patchline": {"destination": ["obj-50", 0], "source": ["obj-52", 0]}},
      {"patchline": {"destination": ["obj-54", 0], "source": ["obj-55", 1]}},
      {"patchline": {"destination": ["obj-53", 0], "source": ["obj-56", 0]}},
      {"patchline": {"destination": ["obj-53", 0], "source": ["obj-57", 0]}},
      {"patchline": {"destination": ["obj-53", 0], "source": ["obj-58", 0]}},
      {"patchline": {"destination": ["obj-53", 0], "source": ["obj-59", 0]}},
      {"patchline": {"destination": ["obj-359", 0], "source": ["obj-60", 0]}},
      {"patchline": {"destination": ["obj-53", 0], "source": ["obj-61", 0]}},
      {"patchline": {"destination": ["obj-53", 0], "source": ["obj-62", 0]}},
      {"patchline": {"destination": ["obj-53", 0], "source": ["obj-63", 0]}},
      {"patchline": {"destination": ["obj-53", 0], "source": ["obj-64", 0]}},
      {"patchline": {"destination": ["obj-71", 0], "source": ["obj-66", 0]}},
      {"patchline": {"destination": ["obj-64", 0], "source": ["obj-67", 0]}},
      {"patchline": {"destination": ["obj-68", 0], "source": ["obj-67", 1]}},
      {"patchline": {"destination": ["obj-70", 0], "source": ["obj-69", 0]}},
      {"patchline": {"destination": ["obj-297", 0], "source": ["obj-7", 0]}},
      {"patchline": {"destination": ["obj-5", 0], "source": ["obj-70", 0]}},
      {"patchline": {"destination": ["obj-53", 0], "source": ["obj-71", 0]}},
      {"patchline": {"destination": ["obj-192", 0], "source": ["obj-73", 1]}},
      {"patchline": {"destination": ["obj-73", 0], "source": ["obj-74", 0]}},
      {
        "patchline": {
          "destination": ["obj-2", 0],
          "order": 0,
          "source": ["obj-8", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-23", 0],
          "order": 1,
          "source": ["obj-8", 0]
        }
      },
      {"patchline": {"destination": ["obj-12", 0], "source": ["obj-85", 4]}},
      {"patchline": {"destination": ["obj-366", 0], "source": ["obj-85", 2]}},
      {"patchline": {"destination": ["obj-70", 1], "source": ["obj-85", 3]}},
      {"patchline": {"destination": ["obj-109", 0], "source": ["obj-9", 1]}}
    ],
    "parameters": {
      "obj-112::obj-4": ["FileName", "FileName", 0],
      "obj-112::obj-6": ["File Automation", "File", 0],
      "obj-112::obj-76": ["File[", "File", 0],
      "obj-16": ["Point Size", "live.numbox", 0],
      "obj-21": ["Line Size", "live.numbox", 0],
      "obj-24": ["Delay", "live.numbox", 0],
      "obj-28": ["Max Run", "live.numbox", 0],
      "obj-31": ["Play / Stop", "live.text", 0],
      "obj-32": ["Max Points", "live.numbox", 0],
      "obj-35::obj-151": ["Dimensions[2]", "Dimensions", 0],
      "obj-36": ["Max Lines", "live.numbox", 0],
      "obj-360": ["Edit", "Edit", 0],
      "obj-361": ["Open Folder", "Open Folder", 0],
      "obj-362": ["Reload", "Reload", 0],
      "obj-366": ["Channel", "Channel", 0],
      "obj-38": ["Max Triangles", "live.numbox", 0],
      "obj-4": ["Show Parameters", "Show Parameters", 0],
      "obj-40": ["Max Rectangles", "live.numbox", 0],
      "obj-42": ["Max Circles", "live.numbox", 0],
      "obj-66": ["Max Skip", "live.menu", 0],
      "parameterbanks": {
        "0": {
          "index": 0,
          "name": "",
          "parameters": ["-", "-", "-", "-", "-", "-", "-", "-"]
        }
      },
      "parameter_overrides": {
        "obj-112::obj-76": {
          "parameter_invisible": 2,
          "parameter_modmode": 0,
          "parameter_range": ["Loading...", " "],
          "parameter_type": 2,
          "parameter_unitstyle": 10
        },
        "obj-35::obj-151": {"parameter_longname": "Dimensions[2]"}
      },
      "inherited_shortname": 1
    },
    "dependency_cache": [
      {
        "name": "PX GEN Sketching._sketching.js",
        "bootpath": "~/Documents/GitHub/px-stream/devices",
        "patcherrelativepath": ".",
        "type": "TEXT",
        "implicit": 1
      },
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
        "name": "PX._menu.maxpat",
        "bootpath": "~/Documents/GitHub/px-stream/devices",
        "patcherrelativepath": ".",
        "type": "JSON",
        "implicit": 1
      }
    ],
    "autosave": 0
  }
}