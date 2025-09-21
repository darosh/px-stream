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
          "id": "obj-35",
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "maxclass": "bpatcher",
          "name": "PX._dimensions.maxpat",
          "numinlets": 1,
          "numoutlets": 1,
          "offset": [0, 0],
          "outlettype": [""],
          "patching_rect": [1280, 392, 72, 17],
          "presentation": 1,
          "presentation_rect": [0, 133, 72, 17],
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "id": "obj-129",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [128, 176, 80, 22],
          "text": "r ---this_bang"
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
          "id": "obj-81",
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "maxclass": "bpatcher",
          "name": "PX._menu_font.maxpat",
          "numinlets": 3,
          "numoutlets": 1,
          "offset": [0, 0],
          "outlettype": [""],
          "patching_rect": [272, 312, 130, 19],
          "presentation": 1,
          "presentation_rect": [0, 18, 98, 19],
          "varname": "PX._menu",
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "id": "obj-98",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [328, 264, 54, 22],
          "text": "r ---reset"
        }
      },
      {
        "box": {
          "id": "obj-128",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [752, 832, 30, 22],
          "text": "+ 1"
        }
      },
      {
        "box": {
          "id": "obj-127",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [864, 984, 57, 22],
          "text": "tosymbol"
        }
      },
      {
        "box": {
          "id": "obj-126",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [864, 904, 45, 22],
          "text": "$1 . $2"
        }
      },
      {
        "box": {
          "id": "obj-101",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [864, 864, 46, 22],
          "text": "pack i i"
        }
      },
      {
        "box": {
          "id": "obj-103",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [864, 944, 102, 22],
          "text": "string.fromsymlist"
        }
      },
      {
        "box": {
          "id": "obj-124",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [616, 1200, 59, 22],
          "text": "route text"
        }
      },
      {
        "box": {
          "id": "obj-123",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [752, 784, 30, 22],
          "text": "int"
        }
      },
      {
        "box": {
          "id": "obj-122",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [752, 736, 83, 22],
          "text": "expr floor($f1)"
        }
      },
      {
        "box": {
          "id": "obj-121",
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
            "rect": [50, 100, 662, 476],
            "gridsize": [8, 8],
            "gridsnaponopen": 2,
            "integercoordinates": 1,
            "boxes": [
              {
                "box": {
                  "id": "obj-116",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 3,
                  "outlettype": ["bang", "bang", ""],
                  "patching_rect": [192, 104, 115, 22],
                  "text": "select 1 0"
                }
              },
              {
                "box": {
                  "id": "obj-115",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [240, 144, 30, 22],
                  "text": "id 0"
                }
              },
              {
                "box": {
                  "id": "obj-108",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["bang", "bang"],
                  "patching_rect": [144, 144, 80, 22],
                  "text": "t b b"
                }
              },
              {
                "box": {
                  "id": "obj-91",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [16, 184, 155, 22],
                  "text": "property current_song_time"
                }
              },
              {
                "box": {
                  "id": "obj-90",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "patching_rect": [184, 240, 104, 22],
                  "saved_object_attributes": {"_persistence": 1},
                  "text": "live.observer"
                }
              },
              {
                "box": {
                  "id": "obj-80",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": ["", "", ""],
                  "patching_rect": [224, 192, 112, 22],
                  "text": "live.path live_set"
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-128",
                  "index": 1,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [192, 40, 30, 30]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-129",
                  "index": 1,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [184, 320, 30, 30]
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "destination": ["obj-80", 0],
                  "source": ["obj-108", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-91", 0],
                  "source": ["obj-108", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-90", 1],
                  "source": ["obj-115", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-108", 0],
                  "source": ["obj-116", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-115", 0],
                  "source": ["obj-116", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-116", 0],
                  "source": ["obj-128", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-90", 1],
                  "source": ["obj-80", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-129", 0],
                  "source": ["obj-90", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-90", 0],
                  "source": ["obj-91", 0]
                }
              }
            ]
          },
          "patching_rect": [784, 664, 50, 22],
          "text": "p watch"
        }
      },
      {
        "box": {
          "id": "obj-120",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [808, 552, 38, 22],
          "text": "== 11"
        }
      },
      {
        "box": {
          "id": "obj-119",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [864, 1040, 19, 22],
          "text": "t l"
        }
      },
      {
        "box": {
          "id": "obj-118",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [864, 1112, 41, 22],
          "text": "set $1"
        }
      },
      {
        "box": {
          "id": "obj-116",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [616, 1240, 66, 22],
          "text": "s ---to_text"
        }
      },
      {
        "box": {
          "id": "obj-106",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["bang", ""],
          "patching_rect": [616, 1000, 50, 22],
          "text": "select 1"
        }
      },
      {
        "box": {
          "id": "obj-105",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [760, 552, 39, 22],
          "text": "== 10"
        }
      },
      {
        "box": {
          "id": "obj-100",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1272, 608, 115, 22],
          "text": "expr ($i1 > 0) * -143"
        }
      },
      {
        "box": {
          "id": "obj-99",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1272, 656, 64, 22],
          "text": "offset 0 $1"
        }
      },
      {
        "box": {
          "id": "obj-91",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1272, 704, 153, 22],
          "text": "prepend script send texTab"
        }
      },
      {
        "box": {
          "id": "obj-71",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [1272, 744, 67, 22],
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
          "id": "obj-117",
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
            "rect": [33, 82, 574, 498],
            "openinpresentation": 1,
            "gridonopen": 2,
            "gridsize": [8, 8],
            "gridsnaponopen": 2,
            "integercoordinates": 1,
            "boxes": [
              {
                "box": {
                  "comment": "",
                  "id": "obj-4",
                  "index": 1,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [56, 168, 30, 30]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-3",
                  "index": 1,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": ["bang"],
                  "patching_rect": [56, 8, 30, 30]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-2",
                  "index": 2,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [240, 24, 30, 30]
                }
              },
              {
                "box": {
                  "fontface": 1,
                  "fontsize": 24,
                  "id": "obj-1",
                  "maxclass": "live.comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [240, 72, 257, 35],
                  "presentation": 1,
                  "presentation_rect": [0, 183, 124, 35],
                  "text": "10:14:31",
                  "textjustification": 1
                }
              },
              {
                "box": {
                  "annotation_name": "Text",
                  "bgcolor": [0.235, 0.235, 0.235, 1],
                  "border": 1,
                  "bordercolor": [
                    0.09782765023003,
                    0.097827613875914,
                    0.09782762332443,
                    1
                  ],
                  "id": "obj-116",
                  "maxclass": "textedit",
                  "numinlets": 1,
                  "numoutlets": 4,
                  "outlettype": ["", "int", "", ""],
                  "parameter_enable": 1,
                  "patching_rect": [56, 64, 100, 50],
                  "presentation": 1,
                  "presentation_rect": [0, 0, 124, 143],
                  "saved_attribute_attributes": {
                    "bgcolor": {
                      "expression": "themecolor.live_control_text_bg"
                    },
                    "bordercolor": {
                      "expression": "themecolor.live_contrast_frame"
                    },
                    "textcolor": {"expression": "themecolor.live_control_fg"},
                    "valueof": {
                      "parameter_annotation_name": "Text",
                      "parameter_invisible": 1,
                      "parameter_longname": "Text",
                      "parameter_modmode": 0,
                      "parameter_shortname": "Text",
                      "parameter_type": 3
                    }
                  },
                  "textcolor": [0.85, 0.85, 0.85, 1],
                  "varname": "textedit"
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "destination": ["obj-4", 0],
                  "source": ["obj-116", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-1", 0],
                  "source": ["obj-2", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-116", 0],
                  "source": ["obj-3", 0]
                }
              }
            ]
          },
          "patching_rect": [616, 1048, 128, 128],
          "presentation": 1,
          "presentation_rect": [133, 24, 124, 143],
          "varname": "texTab",
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "id": "obj-115",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [1120, 520, 39, 22],
          "text": "== 13"
        }
      },
      {
        "box": {
          "id": "obj-114",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [856, 552, 39, 22],
          "text": "== 12"
        }
      },
      {
        "box": {
          "id": "obj-113",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [856, 504, 30, 22],
          "text": "+ 0"
        }
      },
      {
        "box": {
          "id": "obj-112",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [856, 424, 30, 22],
          "text": "* 10"
        }
      },
      {
        "box": {
          "id": "obj-111",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["bang", "int"],
          "patching_rect": [824, 392, 30, 22],
          "text": "t b i"
        }
      },
      {
        "box": {
          "id": "obj-108",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [328, 440, 64, 22],
          "text": "r ---to_text"
        }
      },
      {
        "box": {
          "id": "obj-107",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [920, 1112, 66, 22],
          "text": "s ---to_text"
        }
      },
      {
        "box": {
          "id": "obj-102",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [824, 352, 33, 22],
          "text": "== 2"
        }
      },
      {
        "box": {
          "id": "obj-97",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1120, 744, 143, 22],
          "text": "sprintf %02d:%02d:%02d"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 13,
          "id": "obj-96",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["int", "int", "int"],
          "patching_rect": [1120, 704, 129, 23],
          "text": "unpack 0 0 0"
        }
      },
      {
        "box": {
          "id": "obj-94",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1120, 608, 31, 22],
          "text": "time"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 13,
          "id": "obj-92",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["bang"],
          "patching_rect": [1120, 560, 76, 23],
          "text": "metro 1000"
        }
      },
      {
        "box": {
          "id": "obj-90",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["list", "list", "int"],
          "patching_rect": [1120, 648, 40, 22],
          "text": "date"
        }
      },
      {
        "box": {
          "id": "obj-58",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [816, 832, 30, 22],
          "text": "int"
        }
      },
      {
        "box": {
          "id": "obj-80",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["float", "float"],
          "patching_rect": [856, 704, 30, 22],
          "text": "t f f"
        }
      },
      {
        "box": {
          "id": "obj-79",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [816, 792, 138, 22],
          "text": "expr floor($f1 % $f2) + 1"
        }
      },
      {
        "box": {
          "id": "obj-69",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [968, 824, 30, 22],
          "text": "int"
        }
      },
      {
        "box": {
          "id": "obj-44",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["int", "int", "int"],
          "patching_rect": [856, 600, 40, 22],
          "text": "t i i i"
        }
      },
      {
        "box": {
          "id": "obj-78",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["bang", "int"],
          "patching_rect": [1024, 704, 30, 22],
          "text": "t b i"
        }
      },
      {
        "box": {
          "id": "obj-77",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [968, 704, 30, 22],
          "text": "int"
        }
      },
      {
        "box": {
          "id": "obj-76",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [968, 792, 130, 22],
          "text": "expr floor($f1 / $f2) + 1"
        }
      },
      {
        "box": {
          "id": "obj-75",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [968, 744, 107, 22],
          "text": "expr $i1 * (4. / $i2)"
        }
      },
      {
        "box": {
          "id": "obj-74",
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
            "rect": [48, 100, 662, 476],
            "gridsize": [8, 8],
            "gridsnaponopen": 2,
            "integercoordinates": 1,
            "boxes": [
              {
                "box": {
                  "id": "obj-116",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 3,
                  "outlettype": ["bang", "bang", ""],
                  "patching_rect": [192, 104, 115, 22],
                  "text": "select 1 0"
                }
              },
              {
                "box": {
                  "id": "obj-115",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [240, 144, 30, 22],
                  "text": "id 0"
                }
              },
              {
                "box": {
                  "id": "obj-108",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["bang", "bang"],
                  "patching_rect": [144, 144, 80, 22],
                  "text": "t b b"
                }
              },
              {
                "box": {
                  "id": "obj-91",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [16, 184, 167, 22],
                  "text": "property signature_numerator"
                }
              },
              {
                "box": {
                  "id": "obj-90",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "patching_rect": [184, 240, 104, 22],
                  "saved_object_attributes": {"_persistence": 1},
                  "text": "live.observer"
                }
              },
              {
                "box": {
                  "id": "obj-80",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": ["", "", ""],
                  "patching_rect": [224, 192, 112, 22],
                  "text": "live.path live_set"
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-128",
                  "index": 1,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [192, 40, 30, 30]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-129",
                  "index": 1,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [184, 320, 30, 30]
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "destination": ["obj-80", 0],
                  "source": ["obj-108", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-91", 0],
                  "source": ["obj-108", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-90", 1],
                  "source": ["obj-115", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-108", 0],
                  "source": ["obj-116", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-115", 0],
                  "source": ["obj-116", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-116", 0],
                  "source": ["obj-128", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-90", 1],
                  "source": ["obj-80", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-129", 0],
                  "source": ["obj-90", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-90", 0],
                  "source": ["obj-91", 0]
                }
              }
            ]
          },
          "patching_rect": [968, 664, 50, 22],
          "text": "p watch"
        }
      },
      {
        "box": {
          "id": "obj-70",
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
            "rect": [50, 100, 662, 476],
            "gridsize": [8, 8],
            "gridsnaponopen": 2,
            "integercoordinates": 1,
            "boxes": [
              {
                "box": {
                  "id": "obj-116",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 3,
                  "outlettype": ["bang", "bang", ""],
                  "patching_rect": [192, 104, 115, 22],
                  "text": "select 1 0"
                }
              },
              {
                "box": {
                  "id": "obj-115",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [240, 144, 30, 22],
                  "text": "id 0"
                }
              },
              {
                "box": {
                  "id": "obj-108",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["bang", "bang"],
                  "patching_rect": [144, 144, 80, 22],
                  "text": "t b b"
                }
              },
              {
                "box": {
                  "id": "obj-91",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [16, 184, 179, 22],
                  "text": "property signature_denominator"
                }
              },
              {
                "box": {
                  "id": "obj-90",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "patching_rect": [184, 240, 104, 22],
                  "saved_object_attributes": {"_persistence": 1},
                  "text": "live.observer"
                }
              },
              {
                "box": {
                  "id": "obj-80",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": ["", "", ""],
                  "patching_rect": [224, 192, 112, 22],
                  "text": "live.path live_set"
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-128",
                  "index": 1,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [192, 40, 30, 30]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-129",
                  "index": 1,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [184, 320, 30, 30]
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "destination": ["obj-80", 0],
                  "source": ["obj-108", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-91", 0],
                  "source": ["obj-108", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-90", 1],
                  "source": ["obj-115", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-108", 0],
                  "source": ["obj-116", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-115", 0],
                  "source": ["obj-116", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-116", 0],
                  "source": ["obj-128", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-90", 1],
                  "source": ["obj-80", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-129", 0],
                  "source": ["obj-90", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-90", 0],
                  "source": ["obj-91", 0]
                }
              }
            ]
          },
          "patching_rect": [1024, 664, 50, 22],
          "text": "p watch"
        }
      },
      {
        "box": {
          "id": "obj-72",
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
            "rect": [50, 100, 662, 476],
            "gridsize": [8, 8],
            "gridsnaponopen": 2,
            "integercoordinates": 1,
            "boxes": [
              {
                "box": {
                  "id": "obj-116",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 3,
                  "outlettype": ["bang", "bang", ""],
                  "patching_rect": [192, 104, 115, 22],
                  "text": "select 1 0"
                }
              },
              {
                "box": {
                  "id": "obj-115",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [240, 144, 30, 22],
                  "text": "id 0"
                }
              },
              {
                "box": {
                  "id": "obj-108",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["bang", "bang"],
                  "patching_rect": [144, 144, 80, 22],
                  "text": "t b b"
                }
              },
              {
                "box": {
                  "id": "obj-91",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [16, 184, 155, 22],
                  "text": "property current_song_time"
                }
              },
              {
                "box": {
                  "id": "obj-90",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "patching_rect": [184, 240, 104, 22],
                  "saved_object_attributes": {"_persistence": 1},
                  "text": "live.observer"
                }
              },
              {
                "box": {
                  "id": "obj-80",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": ["", "", ""],
                  "patching_rect": [224, 192, 112, 22],
                  "text": "live.path live_set"
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-128",
                  "index": 1,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [192, 40, 30, 30]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-129",
                  "index": 1,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [184, 320, 30, 30]
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "destination": ["obj-80", 0],
                  "source": ["obj-108", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-91", 0],
                  "source": ["obj-108", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-90", 1],
                  "source": ["obj-115", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-108", 0],
                  "source": ["obj-116", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-115", 0],
                  "source": ["obj-116", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-116", 0],
                  "source": ["obj-128", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-90", 1],
                  "source": ["obj-80", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-129", 0],
                  "source": ["obj-90", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-90", 0],
                  "source": ["obj-91", 0]
                }
              }
            ]
          },
          "patching_rect": [856, 664, 50, 22],
          "text": "p watch"
        }
      },
      {
        "box": {
          "id": "obj-68",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [808, 88, 203, 22],
          "text": "activebgoncolor \"Control On Variant\""
        }
      },
      {
        "box": {
          "id": "obj-66",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [640, 88, 162, 22],
          "text": "activebgoncolor \"Control On\""
        }
      },
      {
        "box": {
          "id": "obj-43",
          "maxclass": "newobj",
          "numinlets": 4,
          "numoutlets": 4,
          "outlettype": ["bang", "bang", "bang", ""],
          "patching_rect": [640, 40, 70, 22],
          "text": "select 0 1 2"
        }
      },
      {
        "box": {
          "id": "obj-34",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [600, 160, 152, 22],
          "text": "expr 130 + ($i1 == 2) * 130"
        }
      },
      {
        "box": {
          "id": "obj-27",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["bang", "int", "int"],
          "patching_rect": [640, 224, 83, 22],
          "text": "live.thisdevice"
        }
      },
      {
        "box": {
          "id": "obj-22",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [640, 192, 69, 22],
          "text": "setwidth $1"
        }
      },
      {
        "box": {
          "annotation_name": "Text Type",
          "focusbordercolor": [
            0.752941176470588,
            0.752941176470588,
            0.752941176470588,
            0
          ],
          "fontsize": 9,
          "id": "obj-13",
          "maxclass": "live.tab",
          "mode": 1,
          "multiline": 0,
          "num_lines_patching": 1,
          "num_lines_presentation": 1,
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["", "", "float"],
          "parameter_enable": 1,
          "patching_rect": [856, 464, 160, 21],
          "presentation": 1,
          "presentation_rect": [132, 2, 126, 15],
          "saved_attribute_attributes": {
            "focusbordercolor": {"expression": ""},
            "valueof": {
              "parameter_annotation_name": "Text Type",
              "parameter_enum": ["Text", "Beat", "Bar.Beat", "Time"],
              "parameter_longname": "Text Type",
              "parameter_mmax": 3,
              "parameter_modmode": 0,
              "parameter_shortname": "Text Type",
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
          "id": "obj-2",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": ["bang"],
          "patching_rect": [296, 440, 22, 22],
          "text": "t b"
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
          "id": "obj-60",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [560, 104, 30, 22],
          "text": "int"
        }
      },
      {
        "box": {
          "id": "obj-61",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["bang", "int"],
          "patching_rect": [560, 40, 30, 22],
          "text": "t b i"
        }
      },
      {
        "box": {
          "id": "obj-65",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [560, 72, 54, 22],
          "text": "deferlow"
        }
      },
      {
        "box": {
          "id": "obj-39",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [464, 104, 30, 22],
          "text": "int"
        }
      },
      {
        "box": {
          "id": "obj-20",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["bang", "int"],
          "patching_rect": [464, 40, 30, 22],
          "text": "t b i"
        }
      },
      {
        "box": {
          "id": "obj-37",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [464, 72, 54, 22],
          "text": "deferlow"
        }
      },
      {
        "box": {
          "id": "obj-40",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [464, 296, 60, 22],
          "text": "zl.change"
        }
      },
      {
        "box": {
          "id": "obj-29",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [8, 528, 97, 22],
          "text": "prepend position"
        }
      },
      {
        "box": {
          "id": "obj-19",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [8, 496, 55, 22],
          "text": "pak f f 0."
        }
      },
      {
        "box": {
          "id": "obj-28",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [504, 512, 107, 22],
          "text": "prepend leadscale"
        }
      },
      {
        "box": {
          "id": "obj-25",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [8, 696, 114, 22],
          "text": "prepend line_length"
        }
      },
      {
        "box": {
          "id": "obj-24",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [624, 744, 98, 22],
          "text": "prepend tracking"
        }
      },
      {
        "box": {
          "annotation_name": "Line Length",
          "id": "obj-8",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [8, 664, 44, 15],
          "presentation": 1,
          "presentation_rect": [88, 38, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "Line Length",
              "parameter_initial": [-1],
              "parameter_initial_enable": 1,
              "parameter_longname": "Line Length",
              "parameter_mmax": 1000,
              "parameter_mmin": -1,
              "parameter_modmode": 3,
              "parameter_shortname": "Line Length",
              "parameter_steps": 1002,
              "parameter_type": 0,
              "parameter_units": "l",
              "parameter_unitstyle": 9
            }
          },
          "varname": "live.numbox[10]"
        }
      },
      {
        "box": {
          "id": "obj-5",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [504, 480, 44, 15],
          "presentation": 1,
          "presentation_rect": [45, 38, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [1],
              "parameter_initial_enable": 1,
              "parameter_longname": "Lead Scale",
              "parameter_mmax": 10,
              "parameter_modmode": 3,
              "parameter_shortname": "Lead Scale",
              "parameter_steps": 101,
              "parameter_type": 0,
              "parameter_units": "v",
              "parameter_unitstyle": 9,
              "parameter_annotation_name": "Lead Scale"
            }
          },
          "varname": "live.numbox[9]",
          "annotation_name": "Lead Scale"
        }
      },
      {
        "box": {
          "annotation_name": "Tracking",
          "id": "obj-4",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [624, 712, 44, 15],
          "presentation": 1,
          "presentation_rect": [2, 38, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "Tracking",
              "parameter_initial": [1],
              "parameter_initial_enable": 1,
              "parameter_longname": "Tracking",
              "parameter_mmax": 10,
              "parameter_modmode": 3,
              "parameter_shortname": "Tracking",
              "parameter_steps": 101,
              "parameter_type": 0,
              "parameter_units": "h",
              "parameter_unitstyle": 9
            }
          },
          "varname": "live.numbox[8]"
        }
      },
      {
        "box": {
          "id": "obj-18",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [8, 616, 81, 22],
          "text": "prepend slant"
        }
      },
      {
        "box": {
          "id": "obj-14",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [112, 528, 91, 22],
          "text": "prepend weight"
        }
      },
      {
        "box": {
          "annotation_name": "Italic",
          "id": "obj-3",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "parameter_enable": 1,
          "patching_rect": [8, 592, 44, 15],
          "presentation": 1,
          "presentation_rect": [113, 20, 15, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "Italic",
              "parameter_enum": ["val1", "val2"],
              "parameter_longname": "Italic",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "Italic",
              "parameter_type": 2
            }
          },
          "text": "I",
          "texton": "I",
          "varname": "live.text[1]"
        }
      },
      {
        "box": {
          "annotation_name": "Bold",
          "id": "obj-1",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "parameter_enable": 1,
          "patching_rect": [112, 496, 44, 15],
          "presentation": 1,
          "presentation_rect": [97, 20, 15, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "Bold",
              "parameter_enum": ["val1", "val2"],
              "parameter_longname": "Bold",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "Bold",
              "parameter_type": 2
            }
          },
          "text": "B",
          "varname": "live.text"
        }
      },
      {
        "box": {
          "id": "obj-140",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [640, 272, 33, 22],
          "text": "== 1"
        }
      },
      {
        "box": {
          "id": "obj-139",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [560, 152, 33, 22],
          "text": "== 0"
        }
      },
      {
        "box": {
          "id": "obj-138",
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
            "rect": [33, 100, 662, 476],
            "gridsize": [8, 8],
            "gridsnaponopen": 2,
            "integercoordinates": 1,
            "boxes": [
              {
                "box": {
                  "id": "obj-26",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [272, 504, 65, 22],
                  "text": "prepend id"
                }
              },
              {
                "box": {
                  "id": "obj-23",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "patching_rect": [280, 456, 46, 22],
                  "text": "route 0"
                }
              },
              {
                "box": {
                  "id": "obj-22",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "patching_rect": [280, 416, 49, 22],
                  "text": "route id"
                }
              },
              {
                "box": {
                  "id": "obj-11",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [456, 288, 32, 22],
                  "text": "gate"
                }
              },
              {
                "box": {
                  "id": "obj-16",
                  "maxclass": "button",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": ["bang"],
                  "parameter_enable": 0,
                  "patching_rect": [552, 48, 24, 24]
                }
              },
              {
                "box": {
                  "id": "obj-12",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [472, 104, 54, 22],
                  "text": "r ---reset"
                }
              },
              {
                "box": {
                  "id": "obj-10",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [568, 336, 143, 22],
                  "text": "append clip_slots \\$1 clip"
                }
              },
              {
                "box": {
                  "id": "obj-3",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "patching_rect": [448, 216, 38, 22],
                  "text": "zl.reg"
                }
              },
              {
                "box": {
                  "id": "obj-9",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [760, 88, 30, 22],
                  "text": "- 1"
                }
              },
              {
                "box": {
                  "id": "obj-7",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["bang", ""],
                  "patching_rect": [600, 88, 89, 22],
                  "text": "select 0"
                }
              },
              {
                "box": {
                  "id": "obj-6",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [552, 128, 190, 22],
                  "text": "goto this_device canonical_parent"
                }
              },
              {
                "box": {
                  "id": "obj-5",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [760, 128, 128, 22],
                  "text": "goto live_set tracks $1"
                }
              },
              {
                "box": {
                  "id": "obj-61",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["bang", "int"],
                  "patching_rect": [448, 64, 30, 22],
                  "text": "t b i"
                }
              },
              {
                "box": {
                  "annotation": "",
                  "hint": "",
                  "id": "obj-2",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": ["", "", ""],
                  "patching_rect": [512, 192, 223, 22],
                  "text": "live.path this_device canonical_parent"
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-1",
                  "index": 2,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [488, 16, 30, 30]
                }
              },
              {
                "box": {
                  "id": "obj-20",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [192, 576, 57, 22],
                  "text": "tosymbol"
                }
              },
              {
                "box": {
                  "id": "obj-135",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [400, 160, 30, 22],
                  "text": "id 0"
                }
              },
              {
                "box": {
                  "id": "obj-133",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 3,
                  "outlettype": ["bang", "bang", ""],
                  "patching_rect": [336, 112, 60, 22],
                  "text": "select 1 0"
                }
              },
              {
                "box": {
                  "id": "obj-14",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 3,
                  "outlettype": ["", "", ""],
                  "patching_rect": [192, 328, 64, 22],
                  "text": "route -1 -2"
                }
              },
              {
                "box": {
                  "id": "obj-4",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [192, 368, 54, 22],
                  "text": "deferlow"
                }
              },
              {
                "box": {
                  "id": "obj-39",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "patching_rect": [192, 296, 77, 22],
                  "saved_object_attributes": {"_persistence": 1},
                  "text": "live.observer"
                }
              },
              {
                "box": {
                  "id": "obj-29",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["bang", "int"],
                  "patching_rect": [192, 408, 30, 22],
                  "text": "t b i"
                }
              },
              {
                "box": {
                  "id": "obj-28",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [344, 440, 281, 22],
                  "text": "goto this_device canonical_parent clip_slots $1 clip"
                }
              },
              {
                "box": {
                  "id": "obj-25",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "patching_rect": [192, 528, 69, 22],
                  "text": "route name"
                }
              },
              {
                "box": {
                  "id": "obj-24",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [192, 440, 59, 22],
                  "text": "get name"
                }
              },
              {
                "box": {
                  "id": "obj-19",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [192, 504, 62, 22],
                  "saved_object_attributes": {"_persistence": 1},
                  "text": "live.object"
                }
              },
              {
                "box": {
                  "id": "obj-18",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": ["", "", ""],
                  "patching_rect": [344, 512, 53, 22],
                  "text": "live.path"
                }
              },
              {
                "box": {
                  "id": "obj-8",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["bang", "bang"],
                  "patching_rect": [296, 168, 32, 22],
                  "text": "t b b"
                }
              },
              {
                "box": {
                  "id": "obj-40",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [192, 256, 155, 22],
                  "text": "property playing_slot_index"
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-136",
                  "index": 1,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [360, 16, 30, 30]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-137",
                  "index": 1,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [192, 624, 30, 30]
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "destination": ["obj-61", 0],
                  "source": ["obj-1", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-28", 1],
                  "source": ["obj-10", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-39", 1],
                  "source": ["obj-11", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-6", 0],
                  "source": ["obj-12", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-135", 0],
                  "source": ["obj-133", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-8", 0],
                  "source": ["obj-133", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-39", 1],
                  "source": ["obj-135", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-11", 0],
                  "order": 0,
                  "source": ["obj-136", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-133", 0],
                  "order": 1,
                  "source": ["obj-136", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-4", 0],
                  "source": ["obj-14", 2]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-6", 0],
                  "source": ["obj-16", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-22", 0],
                  "source": ["obj-18", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-25", 0],
                  "source": ["obj-19", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-11", 1],
                  "order": 0,
                  "source": ["obj-2", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-3", 1],
                  "order": 1,
                  "source": ["obj-2", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-137", 0],
                  "source": ["obj-20", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-23", 0],
                  "source": ["obj-22", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-26", 0],
                  "source": ["obj-23", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-19", 0],
                  "source": ["obj-24", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-20", 0],
                  "source": ["obj-25", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-19", 1],
                  "source": ["obj-26", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-18", 0],
                  "source": ["obj-28", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-24", 0],
                  "source": ["obj-29", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-28", 0],
                  "source": ["obj-29", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-39", 1],
                  "source": ["obj-3", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-14", 0],
                  "source": ["obj-39", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-29", 0],
                  "source": ["obj-4", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-39", 0],
                  "source": ["obj-40", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-10", 0],
                  "order": 0,
                  "source": ["obj-5", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-2", 0],
                  "order": 1,
                  "source": ["obj-5", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-10", 0],
                  "order": 0,
                  "source": ["obj-6", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-2", 0],
                  "order": 1,
                  "source": ["obj-6", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-7", 0],
                  "source": ["obj-61", 1]
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
                  "destination": ["obj-9", 0],
                  "source": ["obj-7", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-3", 0],
                  "source": ["obj-8", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-40", 0],
                  "source": ["obj-8", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-5", 0],
                  "source": ["obj-9", 0]
                }
              }
            ]
          },
          "patching_rect": [464, 200, 137, 22],
          "text": "p watch_ses_clip_name"
        }
      },
      {
        "box": {
          "id": "obj-132",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 0,
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
            "gridsize": [8, 8],
            "gridsnaponopen": 2,
            "integercoordinates": 1,
            "boxes": [
              {
                "box": {
                  "id": "obj-9",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [608, 128, 30, 22],
                  "text": "- 1"
                }
              },
              {
                "box": {
                  "id": "obj-8",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "patching_rect": [224, 328, 86, 22],
                  "text": "route <empty>"
                }
              },
              {
                "box": {
                  "annotation": "",
                  "hint": "",
                  "id": "obj-3",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 4,
                  "outlettype": ["", "", "", ""],
                  "patching_rect": [280, 176, 93, 22],
                  "saved_object_attributes": {"embed": 0, "precision": 6},
                  "text": "coll ---clips"
                }
              },
              {
                "box": {
                  "id": "obj-7",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["bang", ""],
                  "patching_rect": [448, 128, 89, 22],
                  "text": "select 0"
                }
              },
              {
                "box": {
                  "id": "obj-6",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [400.00001192092896, 168, 190, 22],
                  "text": "goto this_device canonical_parent"
                }
              },
              {
                "box": {
                  "id": "obj-5",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [608, 168, 128, 22],
                  "text": "goto live_set tracks $1"
                }
              },
              {
                "box": {
                  "annotation": "",
                  "comment": "",
                  "hint": "",
                  "id": "obj-2",
                  "index": 2,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [512, 24, 62, 62]
                }
              },
              {
                "box": {
                  "annotation": "",
                  "hint": "",
                  "id": "obj-85",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [208, 744, 118, 22],
                  "text": "prepend append"
                }
              },
              {
                "box": {
                  "annotation": "",
                  "hint": "",
                  "id": "obj-81",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 4,
                  "outlettype": ["", "", "", ""],
                  "patching_rect": [208, 792, 93, 22],
                  "saved_object_attributes": {"embed": 0, "precision": 6},
                  "text": "coll ---clips"
                }
              },
              {
                "box": {
                  "annotation": "",
                  "hint": "",
                  "id": "obj-79",
                  "maxclass": "newobj",
                  "numinlets": 4,
                  "numoutlets": 4,
                  "outlettype": ["", "", "", ""],
                  "patching_rect": [208, 648, 192, 22],
                  "text": "route start_time end_time name"
                }
              },
              {
                "box": {
                  "annotation": "",
                  "hint": "",
                  "id": "obj-78",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [208, 688, 104, 22],
                  "text": "pack f f name"
                }
              },
              {
                "box": {
                  "annotation": "",
                  "hint": "",
                  "id": "obj-77",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [256, 528, 66, 22],
                  "text": "get name"
                }
              },
              {
                "box": {
                  "annotation": "",
                  "hint": "",
                  "id": "obj-76",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [168, 520, 84, 22],
                  "text": "get end_time"
                }
              },
              {
                "box": {
                  "annotation": "",
                  "hint": "",
                  "id": "obj-75",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [72, 520, 88, 22],
                  "text": "get start_time"
                }
              },
              {
                "box": {
                  "annotation": "",
                  "hint": "",
                  "id": "obj-74",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [328, 512, 45, 22],
                  "text": "id $1"
                }
              },
              {
                "box": {
                  "annotation": "",
                  "hint": "",
                  "id": "obj-72",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 4,
                  "outlettype": ["bang", "bang", "bang", "int"],
                  "patching_rect": [224, 472, 83, 22],
                  "text": "t b b b i"
                }
              },
              {
                "box": {
                  "annotation": "",
                  "hint": "",
                  "id": "obj-71",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "patching_rect": [224, 424, 77, 22],
                  "text": "route id"
                }
              },
              {
                "box": {
                  "annotation": "",
                  "hint": "",
                  "id": "obj-69",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [224, 392, 56, 22],
                  "text": "iter"
                }
              },
              {
                "box": {
                  "annotation": "",
                  "hint": "",
                  "id": "obj-66",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [224, 600, 89, 22],
                  "saved_object_attributes": {"_persistence": 1},
                  "text": "live.object"
                }
              },
              {
                "box": {
                  "annotation": "",
                  "hint": "",
                  "id": "obj-65",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "patching_rect": [224, 280, 157, 22],
                  "text": "route arrangement_clips"
                }
              },
              {
                "box": {
                  "id": "obj-61",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["bang", "int"],
                  "patching_rect": [304, 104, 30, 22],
                  "text": "t b i"
                }
              },
              {
                "box": {
                  "annotation": "",
                  "hint": "",
                  "id": "obj-60",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [136, 168, 129, 22],
                  "text": "get arrangement_clips"
                }
              },
              {
                "box": {
                  "annotation": "",
                  "hint": "",
                  "id": "obj-58",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [224, 240, 89, 22],
                  "saved_object_attributes": {"_persistence": 1},
                  "text": "live.object"
                }
              },
              {
                "box": {
                  "annotation": "",
                  "hint": "",
                  "id": "obj-1",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": ["", "", ""],
                  "patching_rect": [360, 216, 223, 22],
                  "text": "live.path this_device canonical_parent"
                }
              },
              {
                "box": {
                  "annotation": "",
                  "comment": "",
                  "hint": "",
                  "id": "obj-131",
                  "index": 1,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": ["bang"],
                  "patching_rect": [216, 24, 62, 62]
                }
              },
              {
                "box": {
                  "id": "obj-4",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [280, 144, 35, 22],
                  "text": "clear"
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "destination": ["obj-58", 1],
                  "source": ["obj-1", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-60", 0],
                  "source": ["obj-131", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-61", 0],
                  "source": ["obj-2", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-3", 0],
                  "source": ["obj-4", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-1", 0],
                  "source": ["obj-5", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-65", 0],
                  "source": ["obj-58", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-1", 0],
                  "source": ["obj-6", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-58", 0],
                  "source": ["obj-60", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-4", 0],
                  "order": 1,
                  "source": ["obj-61", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-60", 0],
                  "source": ["obj-61", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-7", 0],
                  "order": 0,
                  "source": ["obj-61", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-8", 0],
                  "source": ["obj-65", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-79", 0],
                  "source": ["obj-66", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-71", 0],
                  "source": ["obj-69", 0]
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
                  "destination": ["obj-9", 0],
                  "source": ["obj-7", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-72", 0],
                  "source": ["obj-71", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-74", 0],
                  "source": ["obj-72", 3]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-75", 0],
                  "source": ["obj-72", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-76", 0],
                  "source": ["obj-72", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-77", 0],
                  "source": ["obj-72", 2]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-66", 1],
                  "source": ["obj-74", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-66", 0],
                  "source": ["obj-75", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-66", 0],
                  "source": ["obj-76", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-66", 0],
                  "source": ["obj-77", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-85", 0],
                  "source": ["obj-78", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-78", 2],
                  "source": ["obj-79", 2]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-78", 1],
                  "source": ["obj-79", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-78", 0],
                  "source": ["obj-79", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-69", 0],
                  "source": ["obj-8", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-81", 0],
                  "source": ["obj-85", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-5", 0],
                  "source": ["obj-9", 0]
                }
              }
            ]
          },
          "patching_rect": [464, 152, 89, 22],
          "text": "p coll_arr_clips"
        }
      },
      {
        "box": {
          "id": "obj-130",
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
            "rect": [55, 100, 662, 476],
            "gridsize": [8, 8],
            "gridsnaponopen": 2,
            "integercoordinates": 1,
            "boxes": [
              {
                "box": {
                  "id": "obj-116",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 3,
                  "outlettype": ["bang", "bang", ""],
                  "patching_rect": [192, 104, 115, 22],
                  "text": "select 1 0"
                }
              },
              {
                "box": {
                  "id": "obj-115",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [240, 144, 30, 22],
                  "text": "id 0"
                }
              },
              {
                "box": {
                  "id": "obj-108",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["bang", "bang"],
                  "patching_rect": [144, 144, 80, 22],
                  "text": "t b b"
                }
              },
              {
                "box": {
                  "id": "obj-91",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [16, 184, 174, 22],
                  "text": "property current_song_time"
                }
              },
              {
                "box": {
                  "id": "obj-90",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "patching_rect": [184, 240, 104, 22],
                  "saved_object_attributes": {"_persistence": 1},
                  "text": "live.observer"
                }
              },
              {
                "box": {
                  "id": "obj-80",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": ["", "", ""],
                  "patching_rect": [224, 192, 112, 22],
                  "text": "live.path live_set"
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-128",
                  "index": 1,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [192, 40, 30, 30]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-129",
                  "index": 1,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [184, 320, 30, 30]
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "destination": ["obj-80", 0],
                  "source": ["obj-108", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-91", 0],
                  "source": ["obj-108", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-90", 1],
                  "source": ["obj-115", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-108", 0],
                  "source": ["obj-116", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-115", 0],
                  "source": ["obj-116", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-116", 0],
                  "source": ["obj-128", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-90", 1],
                  "source": ["obj-80", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-129", 0],
                  "source": ["obj-90", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-90", 0],
                  "source": ["obj-91", 0]
                }
              }
            ]
          },
          "patching_rect": [640, 320, 79, 22],
          "text": "p watch_time"
        }
      },
      {
        "box": {
          "id": "obj-125",
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
            "rect": [33, 71, 877, 508],
            "gridsize": [8, 8],
            "gridsnaponopen": 2,
            "integercoordinates": 1,
            "boxes": [
              {
                "box": {
                  "id": "obj-100",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["bang", ""],
                  "patching_rect": [288, 496, 107, 22],
                  "text": "select 1"
                }
              },
              {
                "box": {
                  "id": "obj-99",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "patching_rect": [232, 544, 96, 22],
                  "text": "zl.reg"
                }
              },
              {
                "box": {
                  "id": "obj-97",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [152, 584, 83, 22],
                  "text": "tosymbol"
                }
              },
              {
                "box": {
                  "id": "obj-123",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": ["bang"],
                  "patching_rect": [24, 184, 45, 22],
                  "text": "t b"
                }
              },
              {
                "box": {
                  "id": "obj-121",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [152, 512, 30, 22],
                  "text": "\" \""
                }
              },
              {
                "box": {
                  "id": "obj-119",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [232, 344, 30, 22],
                  "text": "+ 1"
                }
              },
              {
                "box": {
                  "id": "obj-118",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [232, 304, 30, 22],
                  "text": "> -1"
                }
              },
              {
                "box": {
                  "id": "obj-117",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": ["bang"],
                  "patching_rect": [120, 256, 56, 22],
                  "text": "t b"
                }
              },
              {
                "box": {
                  "id": "obj-114",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [232, 272, 30, 22],
                  "text": "- 1"
                }
              },
              {
                "box": {
                  "id": "obj-112",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "patching_rect": [96, 368, 77, 22],
                  "text": "gate 2"
                }
              },
              {
                "box": {
                  "id": "obj-111",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": ["float", "float", ""],
                  "patching_rect": [192, 400, 115, 22],
                  "text": "unpack f f s"
                }
              },
              {
                "box": {
                  "id": "obj-109",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [248, 448, 222, 22],
                  "text": "expr ($f3 >= $f1 && $f2 >= $f3)"
                }
              },
              {
                "box": {
                  "id": "obj-107",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 4,
                  "outlettype": ["bang", "float", "bang", "bang"],
                  "patching_rect": [160, 104, 51, 22],
                  "text": "t b f b b"
                }
              },
              {
                "box": {
                  "id": "obj-106",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [232, 240, 30, 22],
                  "text": "int"
                }
              },
              {
                "box": {
                  "id": "obj-105",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 4,
                  "outlettype": ["", "", "", ""],
                  "patching_rect": [168, 184, 113, 22],
                  "saved_object_attributes": {"embed": 0, "precision": 6},
                  "text": "coll ---clips"
                }
              },
              {
                "box": {
                  "id": "obj-98",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 4,
                  "outlettype": ["", "", "", ""],
                  "patching_rect": [88, 224, 83, 22],
                  "saved_object_attributes": {"embed": 0, "precision": 6},
                  "text": "coll ---clips"
                }
              },
              {
                "box": {
                  "id": "obj-102",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [88, 184, 61, 22],
                  "text": "start"
                }
              },
              {
                "box": {
                  "id": "obj-103",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [176, 144, 70, 22],
                  "text": "length"
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-120",
                  "index": 1,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [160, 40, 30, 30]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-124",
                  "index": 1,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [152, 648, 30, 30]
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "destination": ["obj-123", 0],
                  "source": ["obj-100", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-99", 0],
                  "source": ["obj-100", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-98", 0],
                  "source": ["obj-102", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-105", 0],
                  "source": ["obj-103", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-106", 1],
                  "source": ["obj-105", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-114", 0],
                  "source": ["obj-106", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-102", 0],
                  "source": ["obj-107", 2]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-103", 0],
                  "source": ["obj-107", 3]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-109", 2],
                  "source": ["obj-107", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-98", 0],
                  "source": ["obj-107", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-100", 0],
                  "source": ["obj-109", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-109", 1],
                  "source": ["obj-111", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-109", 0],
                  "source": ["obj-111", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-99", 1],
                  "source": ["obj-111", 2]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-111", 0],
                  "source": ["obj-112", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-121", 0],
                  "source": ["obj-112", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-106", 1],
                  "order": 0,
                  "source": ["obj-114", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-118", 0],
                  "order": 1,
                  "source": ["obj-114", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-106", 0],
                  "source": ["obj-117", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-119", 0],
                  "source": ["obj-118", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-112", 0],
                  "source": ["obj-119", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-107", 0],
                  "source": ["obj-120", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-97", 0],
                  "source": ["obj-121", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-98", 0],
                  "source": ["obj-123", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-124", 0],
                  "source": ["obj-97", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-112", 1],
                  "source": ["obj-98", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-117", 0],
                  "source": ["obj-98", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-97", 0],
                  "source": ["obj-99", 0]
                }
              }
            ]
          },
          "patching_rect": [640, 368, 124, 22],
          "text": "p arr_time_clip_name"
        }
      },
      {
        "box": {
          "id": "obj-7",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [296, 480, 38, 22],
          "text": "zl.reg"
        }
      },
      {
        "box": {
          "id": "obj-95",
          "maxclass": "button",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": ["bang"],
          "parameter_enable": 0,
          "patching_rect": [224, 176, 24, 24]
        }
      },
      {
        "box": {
          "id": "obj-93",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [128, 256, 43, 22],
          "text": "fontlist"
        }
      },
      {
        "box": {
          "id": "obj-88",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["int", "bang"],
          "patching_rect": [128, 216, 32, 22],
          "text": "t 1 b"
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
          "patching_rect": [464, 16, 44, 15],
          "presentation": 1,
          "presentation_rect": [72, 136, 56, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [0],
              "parameter_initial_enable": 1,
              "parameter_longname": "Track",
              "parameter_mmax": 99,
              "parameter_modmode": 4,
              "parameter_shortname": "Track",
              "parameter_steps": 100,
              "parameter_type": 1,
              "parameter_units": "track",
              "parameter_unitstyle": 9,
              "parameter_annotation_name": "Track"
            }
          },
          "varname": "live.numbox[7]",
          "annotation_name": "Track"
        }
      },
      {
        "box": {
          "id": "obj-67",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [400, 512, 82, 22],
          "text": "prepend color"
        }
      },
      {
        "box": {
          "id": "obj-64",
          "maxclass": "newobj",
          "numinlets": 4,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [400, 480, 55, 22],
          "text": "pak f f f f"
        }
      },
      {
        "box": {
          "annotation_name": "Y",
          "id": "obj-62",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [56, 464, 44, 15],
          "presentation": 1,
          "presentation_rect": [66, 60, 62, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "Y",
              "parameter_initial": [0],
              "parameter_initial_enable": 1,
              "parameter_longname": "Y",
              "parameter_mmax": 2,
              "parameter_mmin": -2,
              "parameter_modmode": 3,
              "parameter_shortname": "Y",
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
          "annotation_name": "X",
          "id": "obj-63",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [8, 464, 44, 15],
          "presentation": 1,
          "presentation_rect": [2, 60, 62, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "X",
              "parameter_initial": [0],
              "parameter_initial_enable": 1,
              "parameter_longname": "X",
              "parameter_mmax": 2,
              "parameter_mmin": -2,
              "parameter_modmode": 4,
              "parameter_shortname": "X",
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
          "annotation_name": "G",
          "id": "obj-56",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [448, 432, 44, 15],
          "presentation": 1,
          "presentation_rect": [66, 78, 62, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "G",
              "parameter_initial": [1],
              "parameter_initial_enable": 1,
              "parameter_longname": "G",
              "parameter_mmax": 1,
              "parameter_modmode": 3,
              "parameter_shortname": "G",
              "parameter_steps": 256,
              "parameter_type": 0,
              "parameter_units": "G",
              "parameter_unitstyle": 9
            }
          },
          "varname": "live.numbox[3]"
        }
      },
      {
        "box": {
          "annotation_name": "R",
          "id": "obj-59",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [400, 432, 44, 15],
          "presentation": 1,
          "presentation_rect": [2, 78, 62, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "R",
              "parameter_initial": [1],
              "parameter_initial_enable": 1,
              "parameter_longname": "R",
              "parameter_mmax": 1,
              "parameter_modmode": 3,
              "parameter_shortname": "R",
              "parameter_steps": 256,
              "parameter_type": 0,
              "parameter_units": "R",
              "parameter_unitstyle": 9
            }
          },
          "varname": "live.numbox[4]"
        }
      },
      {
        "box": {
          "annotation_name": "A",
          "id": "obj-32",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [544, 432, 44, 15],
          "presentation": 1,
          "presentation_rect": [66, 96, 62, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "A",
              "parameter_initial": [1],
              "parameter_initial_enable": 1,
              "parameter_longname": "A",
              "parameter_mmax": 1,
              "parameter_modmode": 3,
              "parameter_shortname": "A",
              "parameter_steps": 256,
              "parameter_type": 0,
              "parameter_units": "A",
              "parameter_unitstyle": 9
            }
          },
          "varname": "live.numbox[2]"
        }
      },
      {
        "box": {
          "annotation_name": "B",
          "id": "obj-31",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [496, 432, 44, 15],
          "presentation": 1,
          "presentation_rect": [2, 96, 62, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "B",
              "parameter_initial": [1],
              "parameter_initial_enable": 1,
              "parameter_longname": "B",
              "parameter_mmax": 1,
              "parameter_modmode": 3,
              "parameter_shortname": "B",
              "parameter_steps": 256,
              "parameter_type": 0,
              "parameter_units": "B",
              "parameter_unitstyle": 9
            }
          },
          "varname": "live.numbox[1]"
        }
      },
      {
        "box": {
          "id": "obj-57",
          "maxclass": "button",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": ["bang"],
          "parameter_enable": 0,
          "patching_rect": [424, 104, 24, 24]
        }
      },
      {
        "box": {
          "id": "obj-21",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["float"],
          "patching_rect": [672, 496, 31, 22],
          "text": "float"
        }
      },
      {
        "box": {
          "id": "obj-16",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["bang", "float"],
          "patching_rect": [624, 464, 30, 22],
          "text": "t b f"
        }
      },
      {
        "box": {
          "id": "obj-55",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["int", "int"],
          "patching_rect": [1304, 440, 47, 22],
          "text": "unpack"
        }
      },
      {
        "box": {
          "id": "obj-53",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [312, 224, 71, 22],
          "text": "s ---fontsize"
        }
      },
      {
        "box": {
          "id": "obj-54",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [1304, 480, 63, 22],
          "text": "s ---height"
        }
      },
      {
        "box": {
          "id": "obj-52",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["bang", "float"],
          "patching_rect": [672, 536, 30, 22],
          "text": "t b f"
        }
      },
      {
        "box": {
          "id": "obj-51",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["float"],
          "patching_rect": [624, 536, 31, 22],
          "text": "float"
        }
      },
      {
        "box": {
          "id": "obj-50",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [624, 432, 69, 22],
          "text": "r ---fontsize"
        }
      },
      {
        "box": {
          "id": "obj-110",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [696, 432, 61, 22],
          "text": "r ---height"
        }
      },
      {
        "box": {
          "id": "obj-104",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [624, 568, 97, 22],
          "text": "expr $f1/480*$f2"
        }
      },
      {
        "box": {
          "id": "obj-49",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [624, 600, 97, 22],
          "text": "prepend fontsize"
        }
      },
      {
        "box": {
          "annotation_name": "Font Size",
          "id": "obj-48",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [312, 176, 44, 15],
          "presentation": 1,
          "presentation_rect": [72, 118, 56, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "Font Size",
              "parameter_initial": [24],
              "parameter_initial_enable": 1,
              "parameter_longname": "Font Size",
              "parameter_modmode": 3,
              "parameter_shortname": "Font Size",
              "parameter_steps": 1271,
              "parameter_type": 0,
              "parameter_units": "px",
              "parameter_unitstyle": 9
            }
          },
          "varname": "live.numbox"
        }
      },
      {
        "box": {
          "id": "obj-47",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [208, 480, 57, 22],
          "text": "tosymbol"
        }
      },
      {
        "box": {
          "id": "obj-41",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [208, 512, 76, 22],
          "text": "prepend font"
        }
      },
      {
        "box": {
          "id": "obj-38",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [624, 672, 81, 22],
          "text": "prepend align"
        }
      },
      {
        "box": {
          "annotation_name": "Alignment",
          "id": "obj-36",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["", "", "float"],
          "parameter_enable": 1,
          "patching_rect": [624, 640, 100, 15],
          "presentation": 1,
          "presentation_rect": [2, 118, 68, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "Alignment",
              "parameter_enum": ["Left", "Center", "Right", "Justify"],
              "parameter_initial": [1],
              "parameter_initial_enable": 1,
              "parameter_longname": "Alignment",
              "parameter_mmax": 3,
              "parameter_modmode": 0,
              "parameter_shortname": "Alignment",
              "parameter_type": 2
            }
          },
          "varname": "live.menu"
        }
      },
      {
        "box": {
          "id": "obj-46",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [1280, 344, 31, 22],
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
          "patching_rect": [1280, 312, 54, 22],
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
          "patching_rect": [1280, 512, 75, 22],
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
          "patching_rect": [912, 176, 436, 22],
          "text": "jit.gl.node px-stream @name ---text @adapt 0 @capture 1 @erase_color 0 0 0 0"
        }
      },
      {
        "box": {
          "id": "obj-23",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [296, 512, 75, 22],
          "text": "prepend text"
        }
      },
      {
        "box": {
          "fontface": 1,
          "fontname": "Arial",
          "id": "obj-26",
          "linecount": 3,
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["jit_matrix", ""],
          "patching_rect": [296, 728, 263, 49],
          "text": "jit.gl.text @fontsize 24 @color 1 1 1 0.5 @position 0 0 0 @boundcalc 1 @drawto ---text @automatic 1 @antialias 1 @align 1"
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
          "annotation_name": "Clip Type",
          "focusbordercolor": [
            0.752941176470588,
            0.752941176470588,
            0.752941176470588,
            0
          ],
          "fontsize": 9,
          "id": "obj-42",
          "maxclass": "live.tab",
          "mode": 1,
          "multiline": 0,
          "num_lines_patching": 1,
          "num_lines_presentation": 1,
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["", "", "float"],
          "parameter_enable": 1,
          "patching_rect": [560, 0, 100, 20],
          "presentation": 1,
          "presentation_rect": [2, 2, 126, 15],
          "saved_attribute_attributes": {
            "focusbordercolor": {"expression": ""},
            "valueof": {
              "parameter_annotation_name": "Clip Type",
              "parameter_enum": ["Session", "Arrangement", "..."],
              "parameter_longname": "Clip Type",
              "parameter_mmax": 2,
              "parameter_modmode": 0,
              "parameter_shortname": "Clip Type",
              "parameter_type": 2,
              "parameter_unitstyle": 9
            }
          },
          "spacing_x": 3,
          "spacing_y": 3,
          "varname": "live.tab[2]"
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
      }
    ],
    "lines": [
      {"patchline": {"destination": ["obj-14", 0], "source": ["obj-1", 0]}},
      {"patchline": {"destination": ["obj-99", 0], "source": ["obj-100", 0]}},
      {"patchline": {"destination": ["obj-126", 0], "source": ["obj-101", 0]}},
      {"patchline": {"destination": ["obj-111", 0], "source": ["obj-102", 0]}},
      {"patchline": {"destination": ["obj-127", 0], "source": ["obj-103", 0]}},
      {"patchline": {"destination": ["obj-49", 0], "source": ["obj-104", 0]}},
      {"patchline": {"destination": ["obj-106", 0], "source": ["obj-105", 0]}},
      {"patchline": {"destination": ["obj-117", 0], "source": ["obj-106", 0]}},
      {"patchline": {"destination": ["obj-7", 0], "source": ["obj-108", 0]}},
      {
        "patchline": {
          "destination": ["obj-6", 0],
          "order": 1,
          "source": ["obj-109", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-73", 0],
          "order": 0,
          "source": ["obj-109", 0]
        }
      },
      {"patchline": {"destination": ["obj-10", 1], "source": ["obj-11", 1]}},
      {"patchline": {"destination": ["obj-10", 0], "source": ["obj-11", 0]}},
      {"patchline": {"destination": ["obj-21", 0], "source": ["obj-110", 0]}},
      {"patchline": {"destination": ["obj-112", 0], "source": ["obj-111", 1]}},
      {"patchline": {"destination": ["obj-13", 0], "source": ["obj-111", 0]}},
      {"patchline": {"destination": ["obj-113", 1], "source": ["obj-112", 0]}},
      {
        "patchline": {
          "destination": ["obj-105", 0],
          "order": 3,
          "source": ["obj-113", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-114", 0],
          "order": 1,
          "source": ["obj-113", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-115", 0],
          "order": 0,
          "source": ["obj-113", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-120", 0],
          "order": 2,
          "source": ["obj-113", 0]
        }
      },
      {"patchline": {"destination": ["obj-44", 0], "source": ["obj-114", 0]}},
      {"patchline": {"destination": ["obj-92", 0], "source": ["obj-115", 0]}},
      {"patchline": {"destination": ["obj-124", 0], "source": ["obj-117", 0]}},
      {"patchline": {"destination": ["obj-117", 1], "source": ["obj-118", 0]}},
      {
        "patchline": {
          "destination": ["obj-107", 0],
          "order": 0,
          "source": ["obj-119", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-118", 0],
          "order": 1,
          "source": ["obj-119", 0]
        }
      },
      {"patchline": {"destination": ["obj-85", 2], "source": ["obj-12", 0]}},
      {"patchline": {"destination": ["obj-121", 0], "source": ["obj-120", 0]}},
      {"patchline": {"destination": ["obj-122", 0], "source": ["obj-121", 0]}},
      {"patchline": {"destination": ["obj-123", 0], "source": ["obj-122", 0]}},
      {"patchline": {"destination": ["obj-128", 0], "source": ["obj-123", 0]}},
      {"patchline": {"destination": ["obj-116", 0], "source": ["obj-124", 0]}},
      {"patchline": {"destination": ["obj-40", 0], "source": ["obj-125", 0]}},
      {"patchline": {"destination": ["obj-103", 0], "source": ["obj-126", 0]}},
      {"patchline": {"destination": ["obj-119", 0], "source": ["obj-127", 0]}},
      {"patchline": {"destination": ["obj-119", 0], "source": ["obj-128", 0]}},
      {"patchline": {"destination": ["obj-88", 0], "source": ["obj-129", 0]}},
      {
        "patchline": {
          "destination": ["obj-100", 0],
          "order": 0,
          "source": ["obj-13", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-113", 0],
          "order": 1,
          "source": ["obj-13", 0]
        }
      },
      {"patchline": {"destination": ["obj-125", 0], "source": ["obj-130", 0]}},
      {"patchline": {"destination": ["obj-40", 0], "source": ["obj-138", 0]}},
      {"patchline": {"destination": ["obj-138", 0], "source": ["obj-139", 0]}},
      {"patchline": {"destination": ["obj-26", 0], "source": ["obj-14", 0]}},
      {"patchline": {"destination": ["obj-130", 0], "source": ["obj-140", 0]}},
      {"patchline": {"destination": ["obj-21", 0], "source": ["obj-16", 0]}},
      {"patchline": {"destination": ["obj-51", 0], "source": ["obj-16", 1]}},
      {"patchline": {"destination": ["obj-15", 0], "source": ["obj-17", 0]}},
      {"patchline": {"destination": ["obj-26", 0], "source": ["obj-18", 0]}},
      {"patchline": {"destination": ["obj-29", 0], "source": ["obj-19", 0]}},
      {"patchline": {"destination": ["obj-7", 0], "source": ["obj-2", 0]}},
      {"patchline": {"destination": ["obj-37", 0], "source": ["obj-20", 0]}},
      {"patchline": {"destination": ["obj-39", 1], "source": ["obj-20", 1]}},
      {"patchline": {"destination": ["obj-52", 0], "source": ["obj-21", 0]}},
      {"patchline": {"destination": ["obj-27", 0], "source": ["obj-22", 0]}},
      {"patchline": {"destination": ["obj-26", 0], "source": ["obj-23", 0]}},
      {"patchline": {"destination": ["obj-26", 0], "source": ["obj-24", 0]}},
      {"patchline": {"destination": ["obj-26", 0], "source": ["obj-25", 0]}},
      {"patchline": {"destination": ["obj-26", 0], "source": ["obj-28", 0]}},
      {"patchline": {"destination": ["obj-26", 0], "source": ["obj-29", 0]}},
      {"patchline": {"destination": ["obj-18", 0], "source": ["obj-3", 0]}},
      {"patchline": {"destination": ["obj-85", 3], "source": ["obj-30", 0]}},
      {"patchline": {"destination": ["obj-12", 1], "source": ["obj-309", 0]}},
      {"patchline": {"destination": ["obj-64", 2], "source": ["obj-31", 1]}},
      {"patchline": {"destination": ["obj-64", 3], "source": ["obj-32", 1]}},
      {"patchline": {"destination": ["obj-30", 0], "source": ["obj-33", 0]}},
      {"patchline": {"destination": ["obj-22", 0], "source": ["obj-34", 0]}},
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
      {"patchline": {"destination": ["obj-38", 0], "source": ["obj-36", 0]}},
      {"patchline": {"destination": ["obj-85", 0], "source": ["obj-366", 0]}},
      {"patchline": {"destination": ["obj-39", 0], "source": ["obj-37", 0]}},
      {"patchline": {"destination": ["obj-376", 0], "source": ["obj-372", 0]}},
      {"patchline": {"destination": ["obj-366", 0], "source": ["obj-376", 0]}},
      {"patchline": {"destination": ["obj-26", 0], "source": ["obj-38", 0]}},
      {
        "patchline": {
          "destination": ["obj-132", 1],
          "order": 1,
          "source": ["obj-39", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-138", 1],
          "order": 0,
          "source": ["obj-39", 0]
        }
      },
      {"patchline": {"destination": ["obj-24", 0], "source": ["obj-4", 0]}},
      {"patchline": {"destination": ["obj-7", 0], "source": ["obj-40", 0]}},
      {"patchline": {"destination": ["obj-26", 0], "source": ["obj-41", 0]}},
      {
        "patchline": {
          "destination": ["obj-34", 0],
          "order": 1,
          "source": ["obj-42", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-43", 0],
          "order": 0,
          "source": ["obj-42", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-61", 0],
          "order": 2,
          "source": ["obj-42", 0]
        }
      },
      {"patchline": {"destination": ["obj-66", 0], "source": ["obj-43", 1]}},
      {"patchline": {"destination": ["obj-66", 0], "source": ["obj-43", 0]}},
      {"patchline": {"destination": ["obj-68", 0], "source": ["obj-43", 2]}},
      {"patchline": {"destination": ["obj-70", 0], "source": ["obj-44", 2]}},
      {"patchline": {"destination": ["obj-72", 0], "source": ["obj-44", 0]}},
      {"patchline": {"destination": ["obj-74", 0], "source": ["obj-44", 1]}},
      {"patchline": {"destination": ["obj-46", 0], "source": ["obj-45", 0]}},
      {"patchline": {"destination": ["obj-35", 0], "source": ["obj-46", 0]}},
      {"patchline": {"destination": ["obj-41", 0], "source": ["obj-47", 0]}},
      {"patchline": {"destination": ["obj-53", 0], "source": ["obj-48", 0]}},
      {"patchline": {"destination": ["obj-26", 0], "source": ["obj-49", 0]}},
      {"patchline": {"destination": ["obj-28", 0], "source": ["obj-5", 0]}},
      {"patchline": {"destination": ["obj-16", 0], "source": ["obj-50", 0]}},
      {"patchline": {"destination": ["obj-104", 0], "source": ["obj-51", 0]}},
      {"patchline": {"destination": ["obj-104", 1], "source": ["obj-52", 1]}},
      {"patchline": {"destination": ["obj-51", 0], "source": ["obj-52", 0]}},
      {"patchline": {"destination": ["obj-54", 0], "source": ["obj-55", 1]}},
      {"patchline": {"destination": ["obj-64", 1], "source": ["obj-56", 1]}},
      {"patchline": {"destination": ["obj-132", 0], "source": ["obj-57", 0]}},
      {"patchline": {"destination": ["obj-101", 1], "source": ["obj-58", 0]}},
      {"patchline": {"destination": ["obj-64", 0], "source": ["obj-59", 1]}},
      {
        "patchline": {
          "destination": ["obj-102", 0],
          "order": 0,
          "source": ["obj-60", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-139", 0],
          "order": 2,
          "source": ["obj-60", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-140", 0],
          "order": 1,
          "source": ["obj-60", 0]
        }
      },
      {"patchline": {"destination": ["obj-60", 1], "source": ["obj-61", 1]}},
      {"patchline": {"destination": ["obj-65", 0], "source": ["obj-61", 0]}},
      {"patchline": {"destination": ["obj-19", 1], "source": ["obj-62", 0]}},
      {"patchline": {"destination": ["obj-19", 0], "source": ["obj-63", 0]}},
      {"patchline": {"destination": ["obj-67", 0], "source": ["obj-64", 0]}},
      {"patchline": {"destination": ["obj-60", 0], "source": ["obj-65", 0]}},
      {"patchline": {"destination": ["obj-42", 0], "source": ["obj-66", 0]}},
      {"patchline": {"destination": ["obj-26", 0], "source": ["obj-67", 0]}},
      {"patchline": {"destination": ["obj-42", 0], "source": ["obj-68", 0]}},
      {"patchline": {"destination": ["obj-101", 0], "source": ["obj-69", 0]}},
      {"patchline": {"destination": ["obj-23", 0], "source": ["obj-7", 0]}},
      {"patchline": {"destination": ["obj-78", 0], "source": ["obj-70", 0]}},
      {"patchline": {"destination": ["obj-80", 0], "source": ["obj-72", 0]}},
      {"patchline": {"destination": ["obj-20", 0], "source": ["obj-73", 0]}},
      {"patchline": {"destination": ["obj-77", 0], "source": ["obj-74", 0]}},
      {
        "patchline": {
          "destination": ["obj-76", 1],
          "order": 0,
          "source": ["obj-75", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-79", 1],
          "order": 1,
          "source": ["obj-75", 0]
        }
      },
      {"patchline": {"destination": ["obj-69", 0], "source": ["obj-76", 0]}},
      {"patchline": {"destination": ["obj-75", 0], "source": ["obj-77", 0]}},
      {"patchline": {"destination": ["obj-75", 1], "source": ["obj-78", 1]}},
      {"patchline": {"destination": ["obj-77", 0], "source": ["obj-78", 0]}},
      {"patchline": {"destination": ["obj-58", 0], "source": ["obj-79", 0]}},
      {"patchline": {"destination": ["obj-25", 0], "source": ["obj-8", 0]}},
      {"patchline": {"destination": ["obj-76", 0], "source": ["obj-80", 0]}},
      {"patchline": {"destination": ["obj-79", 0], "source": ["obj-80", 1]}},
      {
        "patchline": {
          "destination": ["obj-2", 0],
          "order": 0,
          "source": ["obj-81", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-47", 0],
          "order": 1,
          "source": ["obj-81", 0]
        }
      },
      {"patchline": {"destination": ["obj-12", 0], "source": ["obj-85", 4]}},
      {"patchline": {"destination": ["obj-366", 0], "source": ["obj-85", 2]}},
      {"patchline": {"destination": ["obj-81", 0], "source": ["obj-88", 0]}},
      {"patchline": {"destination": ["obj-93", 0], "source": ["obj-88", 1]}},
      {"patchline": {"destination": ["obj-109", 0], "source": ["obj-9", 1]}},
      {"patchline": {"destination": ["obj-96", 0], "source": ["obj-90", 1]}},
      {"patchline": {"destination": ["obj-71", 0], "source": ["obj-91", 0]}},
      {"patchline": {"destination": ["obj-94", 0], "source": ["obj-92", 0]}},
      {"patchline": {"destination": ["obj-81", 0], "source": ["obj-93", 0]}},
      {"patchline": {"destination": ["obj-90", 0], "source": ["obj-94", 0]}},
      {"patchline": {"destination": ["obj-88", 0], "source": ["obj-95", 0]}},
      {"patchline": {"destination": ["obj-97", 2], "source": ["obj-96", 2]}},
      {"patchline": {"destination": ["obj-97", 1], "source": ["obj-96", 1]}},
      {"patchline": {"destination": ["obj-97", 0], "source": ["obj-96", 0]}},
      {"patchline": {"destination": ["obj-119", 0], "source": ["obj-97", 0]}},
      {"patchline": {"destination": ["obj-81", 1], "source": ["obj-98", 0]}},
      {"patchline": {"destination": ["obj-91", 0], "source": ["obj-99", 0]}}
    ],
    "parameters": {
      "obj-1": ["Bold", "Bold", 0],
      "obj-117::obj-116": ["Text", "Text", 0],
      "obj-13": ["Text Type", "Text Type", 0],
      "obj-3": ["Italic", "Italic", 0],
      "obj-31": ["B", "B", 0],
      "obj-32": ["A", "A", 0],
      "obj-35::obj-151": ["Dimensions[2]", "Dimensions", 0],
      "obj-36": ["Alignment", "Alignment", 0],
      "obj-366": ["Channel", "Channel", 0],
      "obj-4": ["Tracking", "Tracking", 0],
      "obj-42": ["Clip Type", "Clip Type", 0],
      "obj-48": ["Font Size", "Font Size", 0],
      "obj-5": ["Lead Scale", "live.numbox[8]", 0],
      "obj-56": ["G", "G", 0],
      "obj-59": ["R", "R", 0],
      "obj-62": ["Y", "Y", 0],
      "obj-63": ["X", "X", 0],
      "obj-73": ["Track", "live.numbox", 0],
      "obj-8": ["Line Length", "Line Length", 0],
      "obj-81::obj-4": ["FileName", "FileName", 0],
      "obj-81::obj-6": ["File", "Font", 0],
      "obj-81::obj-76": ["live.menu[1]", "Font", 0],
      "parameterbanks": {
        "0": {
          "index": 0,
          "name": "",
          "parameters": ["-", "-", "-", "-", "-", "-", "-", "-"]
        }
      },
      "parameter_overrides": {
        "obj-35::obj-151": {"parameter_longname": "Dimensions[2]"},
        "obj-81::obj-6": {"parameter_longname": "File"},
        "obj-81::obj-76": {
          "parameter_invisible": 2,
          "parameter_longname": "live.menu[1]",
          "parameter_modmode": 0,
          "parameter_range": ["Loading...", " "],
          "parameter_type": 2,
          "parameter_unitstyle": 10
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
        "name": "PX._dimensions.maxpat",
        "bootpath": "~/Documents/GitHub/px-stream/devices",
        "patcherrelativepath": ".",
        "type": "JSON",
        "implicit": 1
      },
      {
        "name": "PX._menu_font.maxpat",
        "bootpath": "~/Documents/GitHub/px-stream/devices",
        "patcherrelativepath": ".",
        "type": "JSON",
        "implicit": 1
      }
    ],
    "autosave": 0
  }
}