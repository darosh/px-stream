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
    "rect": [133, 71, 567, 508],
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
          "patching_rect": [368, 520, 122, 22],
          "text": "prepend alpha_mode"
        }
      },
      {
        "box": {
          "id": "obj-142",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [976, 584, 64, 22],
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
          "patching_rect": [1368, 448, 131, 22],
          "text": "prepend alpha_smooth"
        }
      },
      {
        "box": {
          "id": "obj-21",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1280, 488, 141, 22],
          "text": "prepend cutoff_threshold"
        }
      },
      {
        "box": {
          "id": "obj-20",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1184, 448, 133, 22],
          "text": "prepend alpha_multiply"
        }
      },
      {
        "box": {
          "id": "obj-19",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1096, 496, 132, 22],
          "text": "prepend alpha_gamma"
        }
      },
      {
        "box": {
          "id": "obj-18",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1008, 448, 137, 22],
          "text": "prepend alpha_quantize"
        }
      },
      {
        "box": {
          "id": "obj-16",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [928, 496, 116, 22],
          "text": "prepend hard_cutoff"
        }
      },
      {
        "box": {
          "id": "obj-14",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [832, 448, 121, 22],
          "text": "prepend alpha_invert"
        }
      },
      {
        "box": {
          "id": "obj-13",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [688, 448, 126, 22],
          "text": "prepend output_mode"
        }
      },
      {
        "box": {
          "id": "obj-7",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [368, 448, 134, 22],
          "text": "prepend preview_mode"
        }
      },
      {
        "box": {
          "id": "obj-4",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [176, 440, 41, 22],
          "text": "* -128"
        }
      },
      {
        "box": {
          "id": "obj-26",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [176, 576, 67, 22],
          "save": ["#N", "thispatcher", ";", "#Q", "end", ";"],
          "text": "thispatcher"
        }
      },
      {
        "box": {
          "id": "obj-28",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [176, 480, 64, 22],
          "text": "offset 0 $1"
        }
      },
      {
        "box": {
          "id": "obj-30",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [176, 528, 147, 22],
          "text": "prepend script send tabed"
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
          "id": "obj-23",
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "maxclass": "bpatcher",
          "numinlets": 0,
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
            "rect": [33, 82, 567, 498],
            "openinpresentation": 1,
            "gridonopen": 2,
            "gridsize": [8, 8],
            "gridsnaponopen": 2,
            "objectsnaponopen": 0,
            "integercoordinates": 1,
            "boxes": [
              {
                "box": {
                  "id": "obj-51",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [824, 1104, 64, 22],
                  "text": "s ---param"
                }
              },
              {
                "box": {
                  "id": "obj-50",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [424, 1032, 118, 22],
                  "text": "prepend luma_invert"
                }
              },
              {
                "box": {
                  "id": "obj-49",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [648, 568, 144, 22],
                  "text": "prepend global_tolerance"
                }
              },
              {
                "box": {
                  "id": "obj-48",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [560, 608, 132, 22],
                  "text": "prepend hue_tolerance"
                }
              },
              {
                "box": {
                  "id": "obj-42",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [472, 568, 126, 22],
                  "text": "prepend chroma_fade"
                }
              },
              {
                "box": {
                  "id": "obj-40",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [392, 616, 152, 22],
                  "text": "prepend chroma_tolerance"
                }
              },
              {
                "box": {
                  "id": "obj-38",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [304, 568, 159, 22],
                  "text": "prepend lightness_tolerance"
                }
              },
              {
                "box": {
                  "id": "obj-37",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [448, 680, 64, 22],
                  "text": "s ---param"
                }
              },
              {
                "box": {
                  "id": "obj-3",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [464, 440, 64, 22],
                  "text": "s ---param"
                }
              },
              {
                "box": {
                  "id": "obj-5",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [464, 400, 133, 22],
                  "text": "prepend distance_color"
                }
              },
              {
                "box": {
                  "id": "obj-6",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [464, 352, 48, 22],
                  "text": "pak f f f"
                }
              },
              {
                "box": {
                  "id": "obj-8",
                  "maxclass": "newobj",
                  "numinlets": 6,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [584, 304, 97, 22],
                  "text": "scale 0 255 0. 1."
                }
              },
              {
                "box": {
                  "id": "obj-9",
                  "maxclass": "newobj",
                  "numinlets": 6,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [480, 304, 97, 22],
                  "text": "scale 0 255 0. 1."
                }
              },
              {
                "box": {
                  "id": "obj-11",
                  "maxclass": "newobj",
                  "numinlets": 6,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [376, 304, 97, 22],
                  "text": "scale 0 255 0. 1."
                }
              },
              {
                "box": {
                  "activebgcolor": [0, 0, 0, 1],
                  "id": "obj-15",
                  "maxclass": "live.button",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "parameter_enable": 1,
                  "patching_rect": [464, 56, 40, 40],
                  "presentation": 1,
                  "presentation_rect": [8, 391, 28, 28],
                  "saved_attribute_attributes": {
                    "activebgcolor": {"expression": ""},
                    "valueof": {
                      "parameter_enum": ["off", "on"],
                      "parameter_invisible": 2,
                      "parameter_longname": "Distance color",
                      "parameter_mmax": 1,
                      "parameter_modmode": 0,
                      "parameter_shortname": "Distance color",
                      "parameter_type": 2,
                      "parameter_annotation_name": "Distance color"
                    }
                  },
                  "varname": "live.button[1]",
                  "annotation_name": "Distance color"
                }
              },
              {
                "box": {
                  "id": "obj-17",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [312, 304, 46, 22],
                  "text": "pak i i i"
                }
              },
              {
                "box": {
                  "id": "obj-23",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [528, 128, 139, 22],
                  "text": "activebgcolor $1 $2 $3 1"
                }
              },
              {
                "box": {
                  "id": "obj-26",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": ["float", "float", "float"],
                  "patching_rect": [424, 168, 67, 22],
                  "text": "unpack f f f"
                }
              },
              {
                "box": {
                  "id": "obj-28",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["list", "bang"],
                  "patching_rect": [352, 128, 158, 22],
                  "text": "colorpicker @compatibility 1"
                }
              },
              {
                "box": {
                  "id": "obj-29",
                  "maxclass": "live.numbox",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", "float"],
                  "parameter_enable": 1,
                  "patching_rect": [536, 240, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [2, 455, 40, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [0],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "Distance B",
                      "parameter_mmax": 255,
                      "parameter_modmode": 4,
                      "parameter_shortname": "Distance B",
                      "parameter_type": 1,
                      "parameter_units": "B",
                      "parameter_unitstyle": 9,
                      "parameter_annotation_name": "Distance B"
                    }
                  },
                  "varname": "live.numbox[7]",
                  "annotation_name": "Distance B"
                }
              },
              {
                "box": {
                  "id": "obj-34",
                  "maxclass": "live.numbox",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", "float"],
                  "parameter_enable": 1,
                  "patching_rect": [464, 240, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [2, 439, 40, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [0],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "Distance G",
                      "parameter_mmax": 255,
                      "parameter_modmode": 4,
                      "parameter_shortname": "Distance G",
                      "parameter_type": 1,
                      "parameter_units": "G",
                      "parameter_unitstyle": 9,
                      "parameter_annotation_name": "Distance G"
                    }
                  },
                  "varname": "live.numbox[8]",
                  "annotation_name": "Distance G"
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
                  "patching_rect": [392, 240, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [2, 423, 40, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [0],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "Distance R",
                      "parameter_mmax": 255,
                      "parameter_modmode": 4,
                      "parameter_shortname": "Distance R",
                      "parameter_type": 1,
                      "parameter_units": "R",
                      "parameter_unitstyle": 9,
                      "parameter_annotation_name": "Distance R"
                    }
                  },
                  "varname": "live.numbox[12]",
                  "annotation_name": "Distance R"
                }
              },
              {
                "box": {
                  "id": "obj-2",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [64, 112, 159, 22],
                  "text": "prepend extract_channel"
                }
              },
              {
                "box": {
                  "id": "obj-1",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [64, 152, 64, 22],
                  "text": "s ---param"
                }
              },
              {
                "box": {
                  "id": "obj-12",
                  "maxclass": "live.numbox",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", "float"],
                  "parameter_enable": 1,
                  "patching_rect": [960, 1000, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [88, 391, 40, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [0.1],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "Distance fade",
                      "parameter_mmax": 0.5,
                      "parameter_modmode": 4,
                      "parameter_shortname": "Distance fade",
                      "parameter_type": 0,
                      "parameter_unitstyle": 1,
                      "parameter_annotation_name": "Distance fade"
                    }
                  },
                  "varname": "live.numbox[6]",
                  "annotation_name": "Distance fade"
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
                  "patching_rect": [776, 992, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [88, 407, 40, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [0.1],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "Distance threshold",
                      "parameter_mmax": 1,
                      "parameter_modmode": 4,
                      "parameter_shortname": "Distance threshold",
                      "parameter_type": 0,
                      "parameter_unitstyle": 1,
                      "parameter_annotation_name": "Distance threshold"
                    }
                  },
                  "varname": "live.numbox[13]",
                  "annotation_name": "Distance threshold"
                }
              },
              {
                "box": {
                  "id": "obj-35",
                  "maxclass": "live.comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [960, 968, 64, 18],
                  "presentation": 1,
                  "presentation_rect": [48, 390, 48, 18],
                  "text": "Fade",
                  "textjustification": 0
                }
              },
              {
                "box": {
                  "id": "obj-39",
                  "maxclass": "live.comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [776, 960, 64, 18],
                  "presentation": 1,
                  "presentation_rect": [48, 406, 48, 18],
                  "text": "Thresh.",
                  "textjustification": 0
                }
              },
              {
                "box": {
                  "automation": "0",
                  "automationon": "1",
                  "id": "obj-10",
                  "maxclass": "live.text",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "parameter_enable": 1,
                  "patching_rect": [704, 768, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [88, 168, 40, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_enum": ["0", "1"],
                      "parameter_longname": "Invert mapping",
                      "parameter_mmax": 1,
                      "parameter_modmode": 0,
                      "parameter_shortname": "Invert mapping",
                      "parameter_type": 2,
                      "parameter_annotation_name": "Invert mapping"
                    }
                  },
                  "text": "Invert",
                  "texton": "Invert",
                  "varname": "live.text[2]",
                  "annotation_name": "Invert mapping"
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
                  "fontsize": 12,
                  "id": "obj-25",
                  "maxclass": "live.tab",
                  "multiline": 0,
                  "num_lines_patching": 1,
                  "num_lines_presentation": 1,
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": ["", "", "float"],
                  "parameter_enable": 1,
                  "patching_rect": [64, 72, 100, 20],
                  "presentation": 1,
                  "presentation_rect": [16, 536, 96, 24],
                  "saved_attribute_attributes": {
                    "focusbordercolor": {"expression": ""},
                    "valueof": {
                      "parameter_enum": ["R", "G", "B", "A"],
                      "parameter_initial": [3],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "Color channel",
                      "parameter_mmax": 3,
                      "parameter_modmode": 0,
                      "parameter_shortname": "Color channel",
                      "parameter_type": 2,
                      "parameter_unitstyle": 9,
                      "parameter_annotation_name": "Color channel"
                    }
                  },
                  "spacing_x": 3,
                  "varname": "live.tab[2]",
                  "annotation_name": "Color channel"
                }
              },
              {
                "box": {
                  "automation": "0",
                  "automationon": "1",
                  "id": "obj-22",
                  "maxclass": "live.text",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "parameter_enable": 1,
                  "patching_rect": [432, 976, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [52, 295, 40, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_enum": ["0", "1"],
                      "parameter_longname": "Luminance invert",
                      "parameter_mmax": 1,
                      "parameter_modmode": 0,
                      "parameter_shortname": "Luminance invert",
                      "parameter_type": 2,
                      "parameter_annotation_name": "Luminance invert"
                    }
                  },
                  "text": "Invert",
                  "texton": "Invert",
                  "varname": "live.text[3]",
                  "annotation_name": "Luminance invert"
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
                  "patching_rect": [472, 536, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [88, 7, 40, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [0.1],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "Fade",
                      "parameter_mmax": 0.5,
                      "parameter_modmode": 4,
                      "parameter_shortname": "Fade",
                      "parameter_type": 0,
                      "parameter_unitstyle": 1,
                      "parameter_annotation_name": "Fade"
                    }
                  },
                  "varname": "live.numbox[5]",
                  "annotation_name": "Fade"
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
                  "patching_rect": [640, 536, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [88, 71, 40, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [1],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "Global",
                      "parameter_mmax": 3,
                      "parameter_modmode": 4,
                      "parameter_shortname": "Global",
                      "parameter_type": 0,
                      "parameter_unitstyle": 1,
                      "parameter_annotation_name": "Global"
                    }
                  },
                  "varname": "live.numbox[4]",
                  "annotation_name": "Global"
                }
              },
              {
                "box": {
                  "id": "obj-7",
                  "maxclass": "live.numbox",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", "float"],
                  "parameter_enable": 1,
                  "patching_rect": [560, 536, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [88, 55, 40, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [0.1],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "Hue",
                      "parameter_mmax": 1,
                      "parameter_modmode": 4,
                      "parameter_shortname": "Hue",
                      "parameter_type": 0,
                      "parameter_unitstyle": 1,
                      "parameter_annotation_name": "Hue"
                    }
                  },
                  "varname": "live.numbox[3]",
                  "annotation_name": "Hue"
                }
              },
              {
                "box": {
                  "id": "obj-143",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [1048, 800, 140, 22],
                  "text": "prepend mapping_mirror"
                }
              },
              {
                "box": {
                  "id": "obj-142",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [264, 1096, 64, 22],
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
                  "patching_rect": [184, 792, 116, 22],
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
                  "patching_rect": [64, 792, 113, 22],
                  "text": "prepend range_min"
                }
              },
              {
                "box": {
                  "id": "obj-138",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [864, 800, 141, 22],
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
                  "patching_rect": [544, 800, 137, 22],
                  "text": "prepend mapping_scale"
                }
              },
              {
                "box": {
                  "id": "obj-134",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [240, 1032, 112, 22],
                  "text": "prepend luma_fade"
                }
              },
              {
                "box": {
                  "id": "obj-133",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [72, 1032, 138, 22],
                  "text": "prepend luma_threshold"
                }
              },
              {
                "box": {
                  "id": "obj-132",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [960, 1032, 131, 22],
                  "text": "prepend distance_fade"
                }
              },
              {
                "box": {
                  "id": "obj-131",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [776, 1024, 157, 22],
                  "text": "prepend distance_threshold"
                }
              },
              {
                "box": {
                  "id": "obj-130",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [368, 800, 139, 22],
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
                  "patching_rect": [704, 800, 138, 22],
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
                  "patching_rect": [584, 1024, 162, 22],
                  "text": "prepend use_oklab_distance"
                }
              },
              {
                "box": {
                  "id": "obj-124",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [472, 904, 64, 22],
                  "text": "s ---param"
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
                  "patching_rect": [72, 1000, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [52, 263, 40, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [0.5],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "Luminance threshold",
                      "parameter_mmax": 1,
                      "parameter_modmode": 4,
                      "parameter_shortname": "Luminance threshold",
                      "parameter_type": 0,
                      "parameter_unitstyle": 1,
                      "parameter_annotation_name": "Luminance threshold"
                    }
                  },
                  "varname": "live.numbox[16]",
                  "annotation_name": "Luminance threshold"
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
                  "patching_rect": [1048, 752, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [88, 151, 40, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_enum": ["0", "1"],
                      "parameter_initial": [0],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "Mirror",
                      "parameter_mmax": 1,
                      "parameter_modmode": 0,
                      "parameter_shortname": "Mirror",
                      "parameter_type": 1,
                      "parameter_unitstyle": 0,
                      "parameter_annotation_name": "Mirror"
                    }
                  },
                  "text": "Mirror",
                  "texton": "Mirror",
                  "varname": "live.text[4]",
                  "annotation_name": "Mirror"
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
                  "patching_rect": [544, 752, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [32, 151, 40, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [1],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "Scale",
                      "parameter_mmax": 16,
                      "parameter_mmin": 0.1,
                      "parameter_modmode": 4,
                      "parameter_shortname": "Scale",
                      "parameter_type": 0,
                      "parameter_unitstyle": 1,
                      "parameter_annotation_name": "Scale"
                    }
                  },
                  "varname": "live.numbox[21]",
                  "annotation_name": "Scale"
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
                  "patching_rect": [384, 760, 100, 15],
                  "presentation": 1,
                  "presentation_rect": [2, 135, 126, 15],
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
                      "parameter_longname": "Mapping",
                      "parameter_mmax": 7,
                      "parameter_modmode": 0,
                      "parameter_shortname": "Mapping",
                      "parameter_type": 2,
                      "parameter_annotation_name": "Mapping"
                    }
                  },
                  "varname": "live.menu",
                  "annotation_name": "Mapping"
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
                  "patching_rect": [584, 976, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [88, 423, 40, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_enum": ["0", "1"],
                      "parameter_initial": [1],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "OKLAB",
                      "parameter_mmax": 1,
                      "parameter_modmode": 0,
                      "parameter_shortname": "OKLAB",
                      "parameter_type": 2,
                      "parameter_annotation_name": "OKLAB"
                    }
                  },
                  "text": "RGB",
                  "texton": "OKLAB",
                  "varname": "live.text[1]",
                  "annotation_name": "OKLAB"
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
                  "patching_rect": [184, 760, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [32, 199, 40, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [1],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "Max",
                      "parameter_mmax": 1,
                      "parameter_modmode": 4,
                      "parameter_shortname": "Max",
                      "parameter_type": 0,
                      "parameter_unitstyle": 1,
                      "parameter_annotation_name": "Max"
                    }
                  },
                  "varname": "live.numbox[14]",
                  "annotation_name": "Max"
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
                  "patching_rect": [64, 760, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [32, 183, 40, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [0],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "Min",
                      "parameter_mmax": 1,
                      "parameter_modmode": 4,
                      "parameter_shortname": "Min",
                      "parameter_type": 0,
                      "parameter_unitstyle": 1,
                      "parameter_annotation_name": "Min"
                    }
                  },
                  "varname": "live.numbox[15]",
                  "annotation_name": "Min"
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
                  "patching_rect": [864, 752, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [32, 167, 40, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [0],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "Phase",
                      "parameter_mmax": 1,
                      "parameter_modmode": 4,
                      "parameter_shortname": "Phase",
                      "parameter_type": 0,
                      "parameter_unitstyle": 1,
                      "parameter_annotation_name": "Phase"
                    }
                  },
                  "varname": "live.numbox[17]",
                  "annotation_name": "Phase"
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
                  "patching_rect": [232, 992, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [52, 279, 40, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [0.1],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "Luminance Fade",
                      "parameter_mmax": 0.5,
                      "parameter_modmode": 4,
                      "parameter_shortname": "Luminance Fade",
                      "parameter_type": 0,
                      "parameter_unitstyle": 1,
                      "parameter_annotation_name": "Luminance Fade"
                    }
                  },
                  "varname": "live.numbox[11]",
                  "annotation_name": "Luminance Fade"
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
                  "patching_rect": [304, 536, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [88, 39, 40, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [0.2],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "Lightness",
                      "parameter_mmax": 1,
                      "parameter_modmode": 4,
                      "parameter_shortname": "Lightness",
                      "parameter_type": 0,
                      "parameter_unitstyle": 1,
                      "parameter_annotation_name": "Lightness"
                    }
                  },
                  "varname": "live.numbox[10]",
                  "annotation_name": "Lightness"
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
                  "patching_rect": [392, 536, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [88, 23, 40, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [0.1],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "Chroma",
                      "parameter_mmax": 1,
                      "parameter_modmode": 4,
                      "parameter_shortname": "Chroma",
                      "parameter_type": 0,
                      "parameter_unitstyle": 1,
                      "parameter_annotation_name": "Chroma"
                    }
                  },
                  "varname": "live.numbox[9]",
                  "annotation_name": "Chroma"
                }
              },
              {
                "box": {
                  "id": "obj-47",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [856, 440, 64, 22],
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
                  "patching_rect": [856, 400, 119, 22],
                  "text": "prepend target_color"
                }
              },
              {
                "box": {
                  "id": "obj-45",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [856, 352, 48, 22],
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
                  "patching_rect": [976, 304, 97, 22],
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
                  "patching_rect": [864, 304, 97, 22],
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
                  "patching_rect": [760, 304, 97, 22],
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
                  "patching_rect": [856, 56, 40, 40],
                  "presentation": 1,
                  "presentation_rect": [8, 7, 28, 28],
                  "saved_attribute_attributes": {
                    "activebgcolor": {"expression": ""},
                    "valueof": {
                      "parameter_enum": ["off", "on"],
                      "parameter_invisible": 2,
                      "parameter_longname": "Chroma color",
                      "parameter_mmax": 1,
                      "parameter_modmode": 0,
                      "parameter_shortname": "Chroma color",
                      "parameter_type": 2,
                      "parameter_annotation_name": "Chroma color"
                    }
                  },
                  "varname": "live.button",
                  "annotation_name": "Chroma color"
                }
              },
              {
                "box": {
                  "id": "obj-32",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [696, 304, 46, 22],
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
                  "patching_rect": [912, 128, 139, 22],
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
                  "patching_rect": [816, 168, 67, 22],
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
                  "patching_rect": [736, 128, 158, 22],
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
                  "patching_rect": [920, 240, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [2, 71, 40, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [0],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "Chroma B",
                      "parameter_mmax": 255,
                      "parameter_modmode": 4,
                      "parameter_shortname": "Chroma B",
                      "parameter_type": 1,
                      "parameter_units": "B",
                      "parameter_unitstyle": 9,
                      "parameter_annotation_name": "Chroma B"
                    }
                  },
                  "varname": "live.numbox[2]",
                  "annotation_name": "Chroma B"
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
                  "patching_rect": [856, 240, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [2, 55, 40, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [0],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "Chroma G",
                      "parameter_mmax": 255,
                      "parameter_modmode": 4,
                      "parameter_shortname": "Chroma G",
                      "parameter_type": 1,
                      "parameter_units": "G",
                      "parameter_unitstyle": 9,
                      "parameter_annotation_name": "Chroma G"
                    }
                  },
                  "varname": "live.numbox[1]",
                  "annotation_name": "Chroma G"
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
                  "patching_rect": [776, 240, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [2, 39, 40, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [0],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "Chroma R",
                      "parameter_mmax": 255,
                      "parameter_modmode": 4,
                      "parameter_shortname": "Chroma R",
                      "parameter_type": 1,
                      "parameter_units": "R",
                      "parameter_unitstyle": 9,
                      "parameter_annotation_name": "Chroma R"
                    }
                  },
                  "varname": "live.numbox",
                  "annotation_name": "Chroma R"
                }
              },
              {
                "box": {
                  "id": "obj-115",
                  "maxclass": "live.comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [552, 728, 56, 18],
                  "presentation": 1,
                  "presentation_rect": [1, 150, 42, 18],
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
                  "patching_rect": [184, 736, 64, 18],
                  "presentation": 1,
                  "presentation_rect": [1, 198, 38, 18],
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
                  "patching_rect": [64, 736, 48, 18],
                  "presentation": 1,
                  "presentation_rect": [1, 182, 42, 18],
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
                  "patching_rect": [856, 720, 64, 18],
                  "presentation": 1,
                  "presentation_rect": [1, 166, 42, 18],
                  "text": "Phase",
                  "textjustification": 0
                }
              },
              {
                "box": {
                  "id": "obj-89",
                  "maxclass": "live.comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [232, 960, 56, 18],
                  "presentation": 1,
                  "presentation_rect": [1, 278, 35, 18],
                  "text": "Fade",
                  "textjustification": 0
                }
              },
              {
                "box": {
                  "id": "obj-88",
                  "maxclass": "live.comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [72, 968, 64, 18],
                  "presentation": 1,
                  "presentation_rect": [1, 262, 51, 18],
                  "text": "Threshold",
                  "textjustification": 0
                }
              },
              {
                "box": {
                  "id": "obj-21",
                  "maxclass": "live.comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [472, 496, 64, 18],
                  "presentation": 1,
                  "presentation_rect": [48, 6, 48, 18],
                  "text": "Fade",
                  "textjustification": 0
                }
              },
              {
                "box": {
                  "id": "obj-19",
                  "maxclass": "live.comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [640, 496, 64, 18],
                  "presentation": 1,
                  "presentation_rect": [48, 70, 56, 18],
                  "text": "Global",
                  "textjustification": 0
                }
              },
              {
                "box": {
                  "id": "obj-16",
                  "maxclass": "live.comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [552, 496, 64, 18],
                  "presentation": 1,
                  "presentation_rect": [48, 54, 56, 18],
                  "text": "Hue",
                  "textjustification": 0
                }
              },
              {
                "box": {
                  "id": "obj-81",
                  "maxclass": "live.comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [304, 496, 64, 18],
                  "presentation": 1,
                  "presentation_rect": [48, 38, 56, 18],
                  "text": "Light.",
                  "textjustification": 0
                }
              },
              {
                "box": {
                  "id": "obj-80",
                  "maxclass": "live.comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [392, 496, 64, 18],
                  "presentation": 1,
                  "presentation_rect": [48, 22, 48, 18],
                  "text": "Chroma",
                  "textjustification": 0
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "destination": ["obj-128", 0],
                  "source": ["obj-10", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-140", 0],
                  "source": ["obj-100", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-138", 0],
                  "source": ["obj-104", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-127", 0],
                  "source": ["obj-105", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-6", 0],
                  "source": ["obj-11", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-130", 0],
                  "source": ["obj-112", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-137", 0],
                  "source": ["obj-116", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-143", 0],
                  "source": ["obj-117", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-133", 0],
                  "source": ["obj-118", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-132", 0],
                  "source": ["obj-12", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-51", 0],
                  "source": ["obj-127", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-124", 0],
                  "source": ["obj-128", 0]
                }
              },
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
              {
                "patchline": {
                  "destination": ["obj-124", 0],
                  "source": ["obj-130", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-51", 0],
                  "source": ["obj-131", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-51", 0],
                  "source": ["obj-132", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-142", 0],
                  "source": ["obj-133", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-142", 0],
                  "source": ["obj-134", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-124", 0],
                  "source": ["obj-137", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-124", 0],
                  "source": ["obj-138", 0]
                }
              },
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
              {
                "patchline": {
                  "destination": ["obj-124", 0],
                  "source": ["obj-140", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-124", 0],
                  "source": ["obj-141", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-124", 0],
                  "source": ["obj-143", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-28", 0],
                  "source": ["obj-15", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-28", 0],
                  "source": ["obj-17", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-49", 0],
                  "source": ["obj-18", 0]
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
                  "destination": ["obj-42", 0],
                  "source": ["obj-20", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-50", 0],
                  "source": ["obj-22", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-15", 0],
                  "source": ["obj-23", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-131", 0],
                  "source": ["obj-24", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-2", 0],
                  "source": ["obj-25", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-29", 0],
                  "source": ["obj-26", 2]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-34", 0],
                  "source": ["obj-26", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-36", 0],
                  "source": ["obj-26", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-30", 0],
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
                  "destination": ["obj-17", 2],
                  "order": 1,
                  "source": ["obj-29", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-8", 0],
                  "order": 0,
                  "source": ["obj-29", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-13", 0],
                  "source": ["obj-30", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-14", 0],
                  "source": ["obj-30", 2]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-4", 0],
                  "source": ["obj-30", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-33", 0],
                  "source": ["obj-31", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-27", 0],
                  "source": ["obj-32", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-27", 0],
                  "source": ["obj-33", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-17", 1],
                  "order": 1,
                  "source": ["obj-34", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-9", 0],
                  "order": 0,
                  "source": ["obj-34", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-11", 0],
                  "order": 0,
                  "source": ["obj-36", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-17", 0],
                  "order": 1,
                  "source": ["obj-36", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-37", 0],
                  "source": ["obj-38", 0]
                }
              },
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
              {
                "patchline": {
                  "destination": ["obj-37", 0],
                  "source": ["obj-40", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-45", 0],
                  "source": ["obj-41", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-37", 0],
                  "source": ["obj-42", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-45", 1],
                  "source": ["obj-43", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-45", 2],
                  "source": ["obj-44", 0]
                }
              },
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
              {
                "patchline": {
                  "destination": ["obj-47", 0],
                  "source": ["obj-46", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-37", 0],
                  "source": ["obj-48", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-37", 0],
                  "source": ["obj-49", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-3", 0],
                  "source": ["obj-5", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-142", 0],
                  "source": ["obj-50", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-23", 0],
                  "order": 0,
                  "source": ["obj-6", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-5", 0],
                  "order": 1,
                  "source": ["obj-6", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-48", 0],
                  "source": ["obj-7", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-40", 0],
                  "source": ["obj-79", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-6", 2],
                  "source": ["obj-8", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-38", 0],
                  "source": ["obj-82", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-6", 1],
                  "source": ["obj-9", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-134", 0],
                  "source": ["obj-90", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-141", 0],
                  "source": ["obj-97", 0]
                }
              }
            ]
          },
          "patching_rect": [8, 392, 136, 576],
          "presentation": 1,
          "presentation_rect": [0, 64, 130, 88],
          "varname": "tabed",
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "automation": "0",
          "automationon": "1",
          "id": "obj-56",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "parameter_enable": 1,
          "patching_rect": [936, 408, 44, 15],
          "presentation": 1,
          "presentation_rect": [176, 2, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_enum": ["0", "1"],
              "parameter_initial": [0],
              "parameter_initial_enable": 1,
              "parameter_longname": "Cutoff",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "Cutoff",
              "parameter_type": 2,
              "parameter_annotation_name": "Cutoff"
            }
          },
          "text": "Cutoff",
          "texton": "Cutoff",
          "varname": "live.text[5]",
          "annotation_name": "Cutoff"
        }
      },
      {
        "box": {
          "id": "obj-55",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [1320, 376, 64, 18],
          "presentation": 1,
          "presentation_rect": [174, 24, 48, 18],
          "text": "Thresh.",
          "textjustification": 0
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
          "patching_rect": [1208, 408, 44, 15],
          "presentation": 1,
          "presentation_rect": [134, 39, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [1],
              "parameter_initial_enable": 1,
              "parameter_longname": "Multiply",
              "parameter_mmax": 2,
              "parameter_modmode": 4,
              "parameter_shortname": "Multiply",
              "parameter_type": 0,
              "parameter_unitstyle": 1,
              "parameter_annotation_name": "Multiply"
            }
          },
          "varname": "live.numbox[6]",
          "annotation_name": "Multiply"
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
          "patching_rect": [1320, 408, 44, 15],
          "presentation": 1,
          "presentation_rect": [176, 39, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [0.5],
              "parameter_initial_enable": 1,
              "parameter_longname": "Threshold",
              "parameter_mmax": 1,
              "parameter_modmode": 4,
              "parameter_shortname": "Threshold",
              "parameter_type": 0,
              "parameter_unitstyle": 1,
              "parameter_annotation_name": "Threshold"
            }
          },
          "varname": "live.numbox[7]",
          "annotation_name": "Threshold"
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
          "patching_rect": [1424, 408, 44, 15],
          "presentation": 1,
          "presentation_rect": [134, 135, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [0],
              "parameter_initial_enable": 1,
              "parameter_longname": "Smooth",
              "parameter_mmax": 1,
              "parameter_modmode": 4,
              "parameter_shortname": "Smooth",
              "parameter_type": 0,
              "parameter_unitstyle": 1,
              "parameter_annotation_name": "Smooth"
            }
          },
          "varname": "live.numbox[8]",
          "annotation_name": "Smooth"
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
          "patching_rect": [1040, 408, 44, 15],
          "presentation": 1,
          "presentation_rect": [134, 103, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [0],
              "parameter_initial_enable": 1,
              "parameter_longname": "Quantize",
              "parameter_mmax": 16,
              "parameter_modmode": 4,
              "parameter_shortname": "Quantize",
              "parameter_type": 0,
              "parameter_unitstyle": 1,
              "parameter_annotation_name": "Quantize"
            }
          },
          "varname": "live.numbox[12]",
          "annotation_name": "Quantize"
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
          "patching_rect": [1128, 408, 44, 15],
          "presentation": 1,
          "presentation_rect": [134, 71, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [1],
              "parameter_initial_enable": 1,
              "parameter_longname": "Gamma",
              "parameter_mmax": 3,
              "parameter_modmode": 4,
              "parameter_shortname": "Gamma",
              "parameter_type": 0,
              "parameter_unitstyle": 1,
              "parameter_annotation_name": "Gamma"
            }
          },
          "varname": "live.numbox[13]",
          "annotation_name": "Gamma"
        }
      },
      {
        "box": {
          "id": "obj-49",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [1424, 376, 64, 18],
          "presentation": 1,
          "presentation_rect": [132, 120, 48, 18],
          "text": "Smooth",
          "textjustification": 0
        }
      },
      {
        "box": {
          "id": "obj-48",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [1040, 376, 64, 18],
          "presentation": 1,
          "presentation_rect": [132, 88, 48, 18],
          "text": "Quantize",
          "textjustification": 0
        }
      },
      {
        "box": {
          "id": "obj-40",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [1128, 376, 64, 18],
          "presentation": 1,
          "presentation_rect": [132, 56, 48, 18],
          "text": "Gamma",
          "textjustification": 0
        }
      },
      {
        "box": {
          "id": "obj-39",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [1208, 376, 64, 18],
          "presentation": 1,
          "presentation_rect": [132, 24, 48, 18],
          "text": "Multiply",
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
          "patching_rect": [424, 408, 100, 15],
          "presentation": 1,
          "presentation_rect": [46, 2, 56, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_enum": ["Normal", "Alpha", "Overlay"],
              "parameter_initial": [0],
              "parameter_initial_enable": 1,
              "parameter_longname": "Preview",
              "parameter_mmax": 2,
              "parameter_modmode": 0,
              "parameter_shortname": "Preview",
              "parameter_type": 2,
              "parameter_annotation_name": "Preview"
            }
          },
          "varname": "live.menu[3]",
          "annotation_name": "Preview"
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
          "num_lines_presentation": 2,
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["", "", "float"],
          "parameter_enable": 1,
          "patching_rect": [176, 384, 113, 27],
          "presentation": 1,
          "presentation_rect": [2, 38, 126, 28],
          "saved_attribute_attributes": {
            "focusbordercolor": {"expression": ""},
            "valueof": {
              "parameter_enum": [
                "Chroma",
                "Mapping",
                "Luminance",
                "Distance",
                "Channel"
              ],
              "parameter_initial": [0],
              "parameter_initial_enable": 1,
              "parameter_longname": "Distance R",
              "parameter_mmax": 4,
              "parameter_modmode": 0,
              "parameter_shortname": "Distance R",
              "parameter_type": 2,
              "parameter_unitstyle": 9,
              "parameter_annotation_name": "Distance R"
            }
          },
          "spacing_x": 3,
          "spacing_y": 3,
          "varname": "live.tab[4]",
          "annotation_name": "Distance R"
        }
      },
      {
        "box": {
          "id": "obj-29",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["", "", "float"],
          "parameter_enable": 1,
          "patching_rect": [688, 408, 100, 15],
          "presentation": 1,
          "presentation_rect": [72, 18, 56, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_enum": ["Replace", "Multiply", "Add", "Subtract"],
              "parameter_initial": [0],
              "parameter_initial_enable": 1,
              "parameter_longname": "Distance B",
              "parameter_mmax": 3,
              "parameter_modmode": 0,
              "parameter_shortname": "Distance B",
              "parameter_type": 2,
              "parameter_annotation_name": "Distance B"
            }
          },
          "varname": "live.menu[1]",
          "annotation_name": "Distance B"
        }
      },
      {
        "box": {
          "id": "obj-125",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [536, 448, 121, 22],
          "text": "prepend mix_amount"
        }
      },
      {
        "box": {
          "id": "obj-122",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [568, 48, 145, 22],
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
          "automation": "0",
          "automationon": "1",
          "id": "obj-110",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "parameter_enable": 1,
          "patching_rect": [832, 408, 44, 15],
          "presentation": 1,
          "presentation_rect": [134, 2, 40, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_enum": ["0", "1"],
              "parameter_initial": [0],
              "parameter_initial_enable": 1,
              "parameter_longname": "Invert",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "Invert",
              "parameter_type": 2,
              "parameter_annotation_name": "Invert"
            }
          },
          "text": "Invert",
          "texton": "Invert",
          "varname": "live.text[2]",
          "annotation_name": "Invert"
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
          "patching_rect": [600, 408, 44, 15],
          "presentation": 1,
          "presentation_rect": [23, 18, 45, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [100],
              "parameter_initial_enable": 1,
              "parameter_longname": "Mix",
              "parameter_mmax": 100,
              "parameter_modmode": 4,
              "parameter_shortname": "Mix",
              "parameter_type": 1,
              "parameter_unitstyle": 5,
              "parameter_annotation_name": "Mix"
            }
          },
          "varname": "live.numbox[18]",
          "annotation_name": "Mix"
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
              "parameter_longname": "More",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "More",
              "parameter_type": 2,
              "parameter_annotation_name": "More"
            }
          },
          "text": "...",
          "texton": "...",
          "varname": "live.text[13]",
          "annotation_name": "More"
        }
      },
      {
        "box": {
          "id": "obj-108",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [544, 408, 48, 18],
          "presentation": 1,
          "presentation_rect": [0, 17, 42, 18],
          "text": "Mix",
          "textjustification": 0
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
          "filename": "PX._alpha_oklab.jxs",
          "id": "obj-5",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["jit_gl_texture", ""],
          "patching_rect": [280, 224, 255, 22],
          "text": "jit.gl.slab px-stream @file PX._alpha_oklab.jxs",
          "textfile": {
            "filename": "PX._alpha_oklab.jxs",
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
          "patching_rect": [368, 408, 48, 18],
          "presentation": 1,
          "presentation_rect": [0, 1, 42, 18],
          "text": "Preview",
          "textjustification": 0
        }
      }
    ],
    "lines": [
      {"patchline": {"destination": ["obj-42", 4], "source": ["obj-1", 0]}},
      {"patchline": {"destination": ["obj-125", 0], "source": ["obj-106", 1]}},
      {"patchline": {"destination": ["obj-10", 1], "source": ["obj-11", 1]}},
      {"patchline": {"destination": ["obj-10", 0], "source": ["obj-11", 0]}},
      {"patchline": {"destination": ["obj-14", 0], "source": ["obj-110", 0]}},
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
      {"patchline": {"destination": ["obj-142", 0], "source": ["obj-125", 0]}},
      {"patchline": {"destination": ["obj-142", 0], "source": ["obj-13", 0]}},
      {"patchline": {"destination": ["obj-142", 0], "source": ["obj-14", 0]}},
      {"patchline": {"destination": ["obj-142", 0], "source": ["obj-16", 0]}},
      {"patchline": {"destination": ["obj-15", 0], "source": ["obj-17", 0]}},
      {"patchline": {"destination": ["obj-142", 0], "source": ["obj-18", 0]}},
      {"patchline": {"destination": ["obj-142", 0], "source": ["obj-19", 0]}},
      {"patchline": {"destination": ["obj-1", 0], "source": ["obj-2", 0]}},
      {"patchline": {"destination": ["obj-142", 0], "source": ["obj-20", 0]}},
      {"patchline": {"destination": ["obj-142", 0], "source": ["obj-21", 0]}},
      {"patchline": {"destination": ["obj-142", 0], "source": ["obj-22", 0]}},
      {"patchline": {"destination": ["obj-142", 0], "source": ["obj-24", 0]}},
      {"patchline": {"destination": ["obj-27", 0], "source": ["obj-25", 0]}},
      {"patchline": {"destination": ["obj-5", 0], "source": ["obj-27", 0]}},
      {"patchline": {"destination": ["obj-30", 0], "source": ["obj-28", 0]}},
      {"patchline": {"destination": ["obj-13", 0], "source": ["obj-29", 0]}},
      {"patchline": {"destination": ["obj-5", 0], "source": ["obj-3", 0]}},
      {"patchline": {"destination": ["obj-8", 0], "source": ["obj-3", 1]}},
      {"patchline": {"destination": ["obj-26", 0], "source": ["obj-30", 0]}},
      {"patchline": {"destination": ["obj-12", 1], "source": ["obj-309", 0]}},
      {
        "patchline": {
          "destination": ["obj-24", 0],
          "order": 0,
          "source": ["obj-36", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-4", 0],
          "order": 1,
          "source": ["obj-36", 0]
        }
      },
      {"patchline": {"destination": ["obj-42", 0], "source": ["obj-366", 0]}},
      {"patchline": {"destination": ["obj-7", 0], "source": ["obj-37", 0]}},
      {"patchline": {"destination": ["obj-376", 0], "source": ["obj-372", 0]}},
      {"patchline": {"destination": ["obj-366", 0], "source": ["obj-376", 0]}},
      {"patchline": {"destination": ["obj-28", 0], "source": ["obj-4", 0]}},
      {"patchline": {"destination": ["obj-12", 0], "source": ["obj-42", 4]}},
      {"patchline": {"destination": ["obj-366", 0], "source": ["obj-42", 2]}},
      {"patchline": {"destination": ["obj-42", 3], "source": ["obj-5", 0]}},
      {"patchline": {"destination": ["obj-20", 0], "source": ["obj-50", 0]}},
      {"patchline": {"destination": ["obj-21", 0], "source": ["obj-51", 0]}},
      {"patchline": {"destination": ["obj-22", 0], "source": ["obj-52", 0]}},
      {"patchline": {"destination": ["obj-18", 0], "source": ["obj-53", 0]}},
      {"patchline": {"destination": ["obj-19", 0], "source": ["obj-54", 0]}},
      {"patchline": {"destination": ["obj-16", 0], "source": ["obj-56", 0]}},
      {"patchline": {"destination": ["obj-142", 0], "source": ["obj-7", 0]}},
      {"patchline": {"destination": ["obj-2", 1], "source": ["obj-8", 3]}},
      {"patchline": {"destination": ["obj-2", 0], "source": ["obj-8", 2]}},
      {"patchline": {"destination": ["obj-122", 0], "source": ["obj-87", 0]}},
      {"patchline": {"destination": ["obj-6", 0], "source": ["obj-9", 0]}}
    ],
    "parameters": {
      "obj-106": ["Mix", "live.numbox", 0],
      "obj-110": ["Invert", "live.text", 0],
      "obj-23::obj-10": ["Invert mapping", "live.text", 0],
      "obj-23::obj-100": ["Min", "live.numbox", 0],
      "obj-23::obj-104": ["Phase", "live.numbox", 0],
      "obj-23::obj-105": ["OKLAB", "live.text", 0],
      "obj-23::obj-112": ["Mapping", "live.menu", 0],
      "obj-23::obj-116": ["Scale", "live.numbox", 0],
      "obj-23::obj-117": ["Mirror", "live.text", 0],
      "obj-23::obj-118": ["Luminance Threshold", "live.numbox", 0],
      "obj-23::obj-12": ["Distance fade", "live.numbox", 0],
      "obj-23::obj-13": ["Chroma G", "live.numbox", 0],
      "obj-23::obj-14": ["Chroma B", "live.numbox", 0],
      "obj-23::obj-15": ["Distance color", "live.button", 0],
      "obj-23::obj-18": ["Global", "live.numbox", 0],
      "obj-23::obj-20": ["Fade", "live.numbox", 0],
      "obj-23::obj-22": ["Luminance Invert", "live.text", 0],
      "obj-23::obj-24": ["Distance threshold", "live.numbox", 0],
      "obj-23::obj-25": ["Color channel", "Channel", 0],
      "obj-23::obj-29": ["Distance B", "live.numbox", 0],
      "obj-23::obj-33": ["Chroma color", "live.button", 0],
      "obj-23::obj-34": ["Distance G", "live.numbox", 0],
      "obj-23::obj-36": ["Distance R", "live.numbox", 0],
      "obj-23::obj-4": ["Chroma R", "live.numbox", 0],
      "obj-23::obj-7": ["Hue", "live.numbox", 0],
      "obj-23::obj-79": ["Chroma", "live.numbox", 0],
      "obj-23::obj-82": ["Lightness", "live.numbox", 0],
      "obj-23::obj-90": ["Luminance Fade", "live.numbox", 0],
      "obj-23::obj-97": ["Max", "live.numbox", 0],
      "obj-29": ["Blend", "live.menu[1]", 0],
      "obj-36": ["Mode", "Mode", 0],
      "obj-366": ["Channel", "Channel", 0],
      "obj-37": ["Preview", "live.menu[3]", 0],
      "obj-50": ["Multiply", "live.numbox", 0],
      "obj-51": ["Threshold", "live.numbox", 0],
      "obj-52": ["Smooth", "live.numbox", 0],
      "obj-53": ["Quantize", "live.numbox", 0],
      "obj-54": ["Gamma", "live.numbox", 0],
      "obj-56": ["Cutoff", "live.text", 0],
      "obj-87": ["More", "live.text", 0],
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