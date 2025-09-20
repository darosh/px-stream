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
          "id": "obj-37",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [256, 624, 140, 22],
          "text": "prepend param progress"
        }
      },
      {
        "box": {
          "id": "obj-76",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [160, 400, 57, 22],
          "text": "tosymbol"
        }
      },
      {
        "box": {
          "id": "obj-75",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [160, 368, 115, 22],
          "text": "string.replaceall \" \" -"
        }
      },
      {
        "box": {
          "id": "obj-72",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [160, 336, 80, 22],
          "text": "string.tolower"
        }
      },
      {
        "box": {
          "id": "obj-71",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [448, 264, 30, 22],
          "text": "t l l"
        }
      },
      {
        "box": {
          "id": "obj-27",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [360, 168, 46, 22],
          "text": "pack i i"
        }
      },
      {
        "box": {
          "id": "obj-2",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 5,
          "outlettype": ["", "", "int", "int", "int"],
          "patching_rect": [360, 120, 84, 22],
          "text": "unpack s s i i i"
        }
      },
      {
        "box": {
          "id": "obj-79",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [448, 496, 30, 22],
          "text": "t l l"
        }
      },
      {
        "box": {
          "id": "obj-78",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [448, 544, 51, 22],
          "text": "zl.mth 0"
        }
      },
      {
        "box": {
          "id": "obj-77",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [504, 544, 41, 22],
          "text": "zl.mth"
        }
      },
      {
        "box": {
          "id": "obj-74",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [536, 448, 30, 22],
          "text": "* 5"
        }
      },
      {
        "box": {
          "id": "obj-73",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [536, 416, 28, 22],
          "text": "abs"
        }
      },
      {
        "box": {
          "id": "obj-70",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [536, 384, 30, 22],
          "text": "- 4"
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
          "fontsize": 7.5,
          "id": "obj-68",
          "maxclass": "live.tab",
          "num_lines_patching": 1,
          "num_lines_presentation": 4,
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["", "", "float"],
          "parameter_enable": 1,
          "patching_rect": [536, 352, 64, 16],
          "presentation": 1,
          "presentation_rect": [113, 13, 15, 59],
          "saved_attribute_attributes": {
            "activebgoncolor": {
              "expression": "themecolor.live_display_handle_two"
            },
            "valueof": {
              "parameter_enum": ["−4", "−3", "−2", "−1"],
              "parameter_initial": [3],
              "parameter_initial_enable": 1,
              "parameter_longname": "From",
              "parameter_mmax": 3,
              "parameter_modmode": 0,
              "parameter_shortname": "From",
              "parameter_type": 2,
              "parameter_unitstyle": 9,
              "parameter_annotation_name": "From",
              "parameter_info": "Selects which of previous devices will be used as origin of the transition"
            }
          },
          "spacing_x": 3,
          "spacing_y": 3,
          "varname": "live.tab",
          "annotation_name": "From",
          "annotation": "Selects which of previous devices will be used as origin of the transition"
        }
      },
      {
        "box": {
          "id": "obj-58",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": ["bang"],
          "patching_rect": [224, 440, 22, 22],
          "text": "t b"
        }
      },
      {
        "box": {
          "id": "obj-53",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["bang", ""],
          "patching_rect": [160, 440, 31, 22],
          "text": "t b s"
        }
      },
      {
        "box": {
          "id": "obj-30",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [176, 672, 176, 22],
          "text": "sprintf file PX._transition.%s.jxs"
        }
      },
      {
        "box": {
          "id": "obj-25",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["", "", "float"],
          "parameter_enable": 1,
          "patching_rect": [160, 304, 100, 15],
          "presentation": 1,
          "presentation_rect": [2, 134, 126, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_enum": [
                "Angular",
                "Book flip",
                "Bounce",
                "Bow tie horizontal",
                "Bow tie vertical",
                "Bow tie with parameter",
                "Burn",
                "Butterfly wave scrawler",
                "Cannabis leaf",
                "Circle",
                "Circle crop",
                "Circle open",
                "Color phase",
                "Colour distance",
                "Coord from in",
                "Crazy parametric fun",
                "Cross zoom",
                "Crosshatch",
                "Crosswarp",
                "Cube",
                "Directional",
                "Directional easing",
                "Directional scaled",
                "Directional warp",
                "Directional wipe",
                "Displacement",
                "Dissolve",
                "Doom screen transition",
                "Doorway",
                "Dreamy",
                "Dreamy zoom",
                "Edge transition",
                "Fade",
                "Fade color",
                "Fade grayscale",
                "Film burn",
                "Flyeye",
                "Glitch displace",
                "Glitch memories",
                "Grid flip",
                "Heart",
                "Hexagonalize",
                "Horizontal close",
                "Horizontal open",
                "Inverted page curl",
                "Kaleidoscope",
                "Left right",
                "Linear blur",
                "Luma",
                "Luminance melt",
                "Morph",
                "Mosaic",
                "Mosaic transition",
                "Multiply blend",
                "Overexposure",
                "Perlin",
                "Pinwheel",
                "Pixelize",
                "Polar function",
                "Polka dots curtain",
                "Power kaleido",
                "Radial",
                "Random noisex",
                "Random squares",
                "Rectangle",
                "Rectangle crop",
                "Ripple",
                "Rolls",
                "Rotate scale fade",
                "Rotate scale vanish",
                "Rotate transition",
                "Scale in",
                "Simple zoom",
                "Slides",
                "Squares wire",
                "Squeeze",
                "Static fade",
                "Static wipe",
                "Stereo viewer",
                "Swap",
                "Swirl",
                "Tangent motion blur",
                "Top bottom",
                "Tv static",
                "Undulating burn out",
                "Vertical close",
                "Vertical open",
                "Water drop",
                "Wind",
                "Window blinds",
                "Window slice",
                "Wipe down",
                "Wipe left",
                "Wipe right",
                "Wipe up",
                "X axis translation",
                "Zoom in circles",
                "Zoom left wipe",
                "Zoom right wipe"
              ],
              "parameter_initial": [0],
              "parameter_initial_enable": 1,
              "parameter_longname": "Transition",
              "parameter_mmax": 98,
              "parameter_modmode": 0,
              "parameter_shortname": "Transition",
              "parameter_type": 2,
              "parameter_annotation_name": "Transition",
              "parameter_info": "Selects transition"
            }
          },
          "varname": "live.menu",
          "annotation_name": "Transition",
          "annotation": "Selects transition"
        }
      },
      {
        "box": {
          "appearance": 3,
          "id": "obj-24",
          "maxclass": "live.dial",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [224, 512, 50, 63],
          "presentation": 1,
          "presentation_rect": [40, 32, 50, 63],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [50],
              "parameter_initial_enable": 1,
              "parameter_longname": "Progress",
              "parameter_mmax": 100,
              "parameter_modmode": 3,
              "parameter_shortname": "Progress",
              "parameter_steps": 1001,
              "parameter_type": 0,
              "parameter_unitstyle": 5,
              "parameter_annotation_name": "Progress",
              "parameter_info": "Transition progress"
            }
          },
          "varname": "live.dial",
          "annotation_name": "Progress",
          "annotation": "Transition progress"
        }
      },
      {
        "box": {
          "id": "obj-22",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [344, 712, 62, 22],
          "text": "r px_bang"
        }
      },
      {
        "box": {
          "id": "obj-21",
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
          "patching_rect": [576, 496, 95, 22],
          "text": "p <DRY::PACK>"
        }
      },
      {
        "box": {
          "id": "obj-20",
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
          "patching_rect": [448, 752, 94, 22],
          "text": "p <DRY::SLAB>"
        }
      },
      {
        "box": {
          "id": "obj-19",
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
          "patching_rect": [280, 432, 108, 22],
          "text": "p <DRY::SINGLE>"
        }
      },
      {
        "box": {
          "id": "obj-18",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [584, 672, 124, 22],
          "text": "prepend jit_gl_texture"
        }
      },
      {
        "box": {
          "id": "obj-14",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [448, 672, 124, 22],
          "text": "prepend jit_gl_texture"
        }
      },
      {
        "box": {
          "id": "obj-13",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [280, 384, 124, 22],
          "text": "prepend jit_gl_texture"
        }
      },
      {
        "box": {
          "id": "obj-8",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [448, 336, 30, 22],
          "text": "t l l"
        }
      },
      {
        "box": {
          "id": "obj-7",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [448, 432, 30, 22],
          "text": "+ 1"
        }
      },
      {
        "box": {
          "id": "obj-5",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [448, 464, 42, 22],
          "text": "gate 2"
        }
      },
      {
        "box": {
          "id": "obj-4",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [448, 400, 33, 22],
          "text": ">= 3"
        }
      },
      {
        "box": {
          "id": "obj-3",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [448, 368, 37, 22],
          "text": "zl.len"
        }
      },
      {
        "box": {
          "filename": "co.normal.jxs",
          "id": "obj-143",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["jit_gl_texture", ""],
          "patching_rect": [448, 712, 217, 22],
          "text": "jit.gl.slab px-stream @file co.normal.jxs",
          "textfile": {
            "filename": "co.normal.jxs",
            "flags": 0,
            "embed": 0,
            "autowatch": 1
          }
        }
      },
      {
        "box": {
          "id": "obj-1",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [448, 304, 107, 22],
          "text": "route jit_gl_texture"
        }
      },
      {
        "box": {
          "id": "obj-16",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [48, 376, 73, 22],
          "text": "s ---enabled"
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
          "patching_rect": [472, 176, 80, 22],
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
          "patching_rect": [136, 120, 31, 22],
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
          "patching_rect": [136, 72, 54, 22],
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
          "patching_rect": [136, 176, 120, 15],
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
          "fontsize": 7.5,
          "id": "obj-69",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [384, 8, 125, 15],
          "presentation": 1,
          "presentation_rect": [108, 0, 26, 15],
          "text": "From",
          "textjustification": 0
        }
      }
    ],
    "lines": [
      {"patchline": {"destination": ["obj-8", 0], "source": ["obj-1", 0]}},
      {"patchline": {"destination": ["obj-10", 1], "source": ["obj-11", 1]}},
      {"patchline": {"destination": ["obj-10", 0], "source": ["obj-11", 0]}},
      {
        "patchline": {
          "destination": ["obj-42", 2],
          "order": 1,
          "source": ["obj-12", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-71", 0],
          "order": 0,
          "source": ["obj-12", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-19", 0],
          "order": 0,
          "source": ["obj-13", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-42", 3],
          "order": 1,
          "source": ["obj-13", 0]
        }
      },
      {"patchline": {"destination": ["obj-143", 0], "source": ["obj-14", 0]}},
      {
        "patchline": {
          "destination": ["obj-20", 0],
          "order": 0,
          "source": ["obj-143", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-42", 3],
          "order": 1,
          "source": ["obj-143", 0]
        }
      },
      {"patchline": {"destination": ["obj-15", 0], "source": ["obj-17", 0]}},
      {"patchline": {"destination": ["obj-143", 1], "source": ["obj-18", 0]}},
      {"patchline": {"destination": ["obj-27", 1], "source": ["obj-2", 3]}},
      {"patchline": {"destination": ["obj-27", 0], "source": ["obj-2", 2]}},
      {"patchline": {"destination": ["obj-143", 0], "source": ["obj-22", 0]}},
      {"patchline": {"destination": ["obj-37", 0], "source": ["obj-24", 1]}},
      {"patchline": {"destination": ["obj-72", 0], "source": ["obj-25", 1]}},
      {"patchline": {"destination": ["obj-42", 4], "source": ["obj-27", 0]}},
      {"patchline": {"destination": ["obj-4", 0], "source": ["obj-3", 0]}},
      {"patchline": {"destination": ["obj-143", 0], "source": ["obj-30", 0]}},
      {"patchline": {"destination": ["obj-12", 1], "source": ["obj-309", 0]}},
      {"patchline": {"destination": ["obj-42", 0], "source": ["obj-366", 0]}},
      {"patchline": {"destination": ["obj-143", 0], "source": ["obj-37", 0]}},
      {"patchline": {"destination": ["obj-376", 0], "source": ["obj-372", 0]}},
      {"patchline": {"destination": ["obj-366", 0], "source": ["obj-376", 0]}},
      {"patchline": {"destination": ["obj-7", 0], "source": ["obj-4", 0]}},
      {"patchline": {"destination": ["obj-12", 0], "source": ["obj-42", 4]}},
      {"patchline": {"destination": ["obj-366", 0], "source": ["obj-42", 2]}},
      {"patchline": {"destination": ["obj-13", 0], "source": ["obj-5", 0]}},
      {
        "patchline": {
          "destination": ["obj-21", 0],
          "order": 0,
          "source": ["obj-5", 1]
        }
      },
      {
        "patchline": {
          "destination": ["obj-79", 0],
          "order": 1,
          "source": ["obj-5", 1]
        }
      },
      {"patchline": {"destination": ["obj-24", 0], "source": ["obj-53", 0]}},
      {"patchline": {"destination": ["obj-30", 0], "source": ["obj-53", 1]}},
      {"patchline": {"destination": ["obj-24", 0], "source": ["obj-58", 0]}},
      {"patchline": {"destination": ["obj-70", 0], "source": ["obj-68", 0]}},
      {"patchline": {"destination": ["obj-5", 0], "source": ["obj-7", 0]}},
      {"patchline": {"destination": ["obj-73", 0], "source": ["obj-70", 0]}},
      {"patchline": {"destination": ["obj-1", 0], "source": ["obj-71", 0]}},
      {"patchline": {"destination": ["obj-2", 0], "source": ["obj-71", 1]}},
      {"patchline": {"destination": ["obj-75", 0], "source": ["obj-72", 0]}},
      {"patchline": {"destination": ["obj-74", 0], "source": ["obj-73", 0]}},
      {"patchline": {"destination": ["obj-77", 1], "source": ["obj-74", 0]}},
      {"patchline": {"destination": ["obj-76", 0], "source": ["obj-75", 0]}},
      {"patchline": {"destination": ["obj-53", 0], "source": ["obj-76", 0]}},
      {"patchline": {"destination": ["obj-14", 0], "source": ["obj-77", 0]}},
      {"patchline": {"destination": ["obj-18", 0], "source": ["obj-78", 0]}},
      {"patchline": {"destination": ["obj-77", 0], "source": ["obj-79", 1]}},
      {"patchline": {"destination": ["obj-78", 0], "source": ["obj-79", 0]}},
      {"patchline": {"destination": ["obj-3", 0], "source": ["obj-8", 1]}},
      {"patchline": {"destination": ["obj-5", 1], "source": ["obj-8", 0]}},
      {"patchline": {"destination": ["obj-16", 0], "source": ["obj-9", 1]}},
      {"patchline": {"destination": ["obj-6", 0], "source": ["obj-9", 0]}}
    ],
    "parameters": {
      "obj-24": ["Progress", "Progress", 0],
      "obj-25": ["live.menu", "live.menu", 0],
      "obj-366": ["Syphon", "Syphon", 0],
      "obj-68": ["live.tab", "live.tab", 0],
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