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
    "rect": [133, 71, 574, 508],
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
          "id": "obj-34",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["int", "int", "int"],
          "patching_rect": [832, 40, 40, 22],
          "text": "t i i i"
        }
      },
      {
        "box": {
          "id": "obj-29",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [984, 40, 41, 22],
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
          "patching_rect": [984, 176, 67, 22],
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
          "patching_rect": [984, 80, 64, 22],
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
          "patching_rect": [984, 128, 147, 22],
          "text": "prepend script send tabed"
        }
      },
      {
        "box": {
          "id": "obj-19",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [512, 360, 71, 22],
          "text": "prepend file"
        }
      },
      {
        "box": {
          "id": "obj-18",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [768, 312, 83, 22],
          "text": "cf.sharpen.jxs"
        }
      },
      {
        "box": {
          "id": "obj-16",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [680, 312, 88, 22],
          "text": "cf.radialblur.jxs"
        }
      },
      {
        "box": {
          "id": "obj-14",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [576, 312, 104, 22],
          "text": "cf.gaussian.2p.jxs"
        }
      },
      {
        "box": {
          "id": "obj-13",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [512, 312, 59, 22],
          "text": "cf.blur.jxs"
        }
      },
      {
        "box": {
          "id": "obj-7",
          "maxclass": "newobj",
          "numinlets": 5,
          "numoutlets": 5,
          "outlettype": ["", "", "", "", ""],
          "patching_rect": [512, 264, 176, 22],
          "text": "route 0 1 2 3"
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
          "id": "obj-4",
          "maxclass": "live.tab",
          "num_lines_patching": 1,
          "num_lines_presentation": 2,
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["", "", "float"],
          "parameter_enable": 1,
          "patching_rect": [832, 8, 100, 20],
          "presentation": 1,
          "presentation_rect": [2, 2, 126, 28],
          "saved_attribute_attributes": {
            "focusbordercolor": {"expression": ""},
            "valueof": {
              "parameter_enum": ["Blur", "Gaussian", "Radial", "Sharpen"],
              "parameter_longname": "Blur",
              "parameter_mmax": 3,
              "parameter_modmode": 0,
              "parameter_shortname": "Blur",
              "parameter_type": 2,
              "parameter_unitstyle": 9,
              "parameter_annotation_name": "Blur"
            }
          },
          "spacing_x": 3,
          "spacing_y": 3,
          "varname": "live.tab",
          "annotation_name": "Blur"
        }
      },
      {
        "box": {
          "filename": "cf.blur.jxs",
          "id": "obj-5",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["jit_gl_texture", ""],
          "patching_rect": [280, 224, 196, 22],
          "text": "jit.gl.slab px-stream @file cf.blur.jxs",
          "textfile": {
            "filename": "cf.blur.jxs",
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
          "patching_rect": [8, 280, 100, 20],
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
          "varname": "live.tab[1]"
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
          "bgmode": 0,
          "border": 0,
          "clickthrough": 0,
          "embed": 1,
          "enablehscroll": 0,
          "enablevscroll": 0,
          "id": "obj-31",
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "maxclass": "bpatcher",
          "numinlets": 1,
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
            "rect": [33, 82, 585, 498],
            "openinpresentation": 1,
            "gridonopen": 2,
            "gridsize": [8, 8],
            "gridsnaponopen": 2,
            "objectsnaponopen": 0,
            "integercoordinates": 1,
            "boxes": [
              {
                "box": {
                  "appearance": 3,
                  "id": "obj-10",
                  "maxclass": "live.dial",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", "float"],
                  "parameter_enable": 1,
                  "patching_rect": [104, 1504, 50, 63],
                  "presentation": 1,
                  "presentation_rect": [40, 397, 50, 63],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [4],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "Sharpen Width",
                      "parameter_mmax": 200,
                      "parameter_modmode": 3,
                      "parameter_shortname": "Sharpen Width",
                      "parameter_steps": 1001,
                      "parameter_type": 0,
                      "parameter_unitstyle": 1,
                      "parameter_annotation_name": "Sharpen Width"
                    }
                  },
                  "varname": "live.dial[3]",
                  "annotation_name": "Sharpen Width"
                }
              },
              {
                "box": {
                  "appearance": 3,
                  "id": "obj-9",
                  "maxclass": "live.dial",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", "float"],
                  "parameter_enable": 1,
                  "patching_rect": [136, 608, 50, 63],
                  "presentation": 1,
                  "presentation_rect": [40, 13, 50, 63],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [4],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "Blur Width",
                      "parameter_mmax": 200,
                      "parameter_modmode": 3,
                      "parameter_shortname": "Blur Width",
                      "parameter_steps": 1001,
                      "parameter_type": 0,
                      "parameter_unitstyle": 1,
                      "parameter_annotation_name": "Blur Width"
                    }
                  },
                  "varname": "live.dial",
                  "annotation_name": "Blur Width"
                }
              },
              {
                "box": {
                  "id": "obj-8",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [408, 1072, 41, 22],
                  "text": "pak f f"
                }
              },
              {
                "box": {
                  "id": "obj-7",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [40, 1808, 34, 22],
                  "text": "r ---b"
                }
              },
              {
                "box": {
                  "id": "obj-84",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [304, 1584, 63, 22],
                  "text": "prepend 3"
                }
              },
              {
                "box": {
                  "id": "obj-91",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [112, 1584, 121, 22],
                  "text": "prepend param width"
                }
              },
              {
                "box": {
                  "id": "obj-22",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [40, 1216, 34, 22],
                  "text": "r ---b"
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
                  "patching_rect": [112, 1104, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [65, 348, 48, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [0.5],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "Y",
                      "parameter_mmax": 3,
                      "parameter_mmin": -2,
                      "parameter_modmode": 3,
                      "parameter_shortname": "Y",
                      "parameter_steps": 1001,
                      "parameter_type": 0,
                      "parameter_units": "y",
                      "parameter_unitstyle": 9,
                      "parameter_annotation_name": "Y"
                    }
                  },
                  "varname": "live.numbox[13]",
                  "annotation_name": "Y"
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
                  "patching_rect": [112, 1024, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [17, 348, 48, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [0.5],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "X",
                      "parameter_mmax": 3,
                      "parameter_mmin": -2,
                      "parameter_modmode": 3,
                      "parameter_shortname": "X",
                      "parameter_steps": 1001,
                      "parameter_type": 0,
                      "parameter_units": "x",
                      "parameter_unitstyle": 9,
                      "parameter_annotation_name": "X"
                    }
                  },
                  "varname": "live.numbox[17]",
                  "annotation_name": "X"
                }
              },
              {
                "box": {
                  "id": "obj-60",
                  "maxclass": "live.comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [176, 1024, 150, 18],
                  "presentation": 1,
                  "presentation_rect": [15, 333, 56, 18],
                  "text": "Center",
                  "textjustification": 0
                }
              },
              {
                "box": {
                  "id": "obj-62",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [304, 984, 63, 22],
                  "text": "prepend 2"
                }
              },
              {
                "box": {
                  "id": "obj-67",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [408, 1128, 123, 22],
                  "text": "prepend param origin"
                }
              },
              {
                "box": {
                  "id": "obj-69",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [112, 984, 121, 22],
                  "text": "prepend param width"
                }
              },
              {
                "box": {
                  "id": "obj-20",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [56, 776, 34, 22],
                  "text": "r ---b"
                }
              },
              {
                "box": {
                  "id": "obj-19",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [64, 304, 34, 22],
                  "text": "r ---b"
                }
              },
              {
                "box": {
                  "id": "obj-6",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [448, 80, 36, 22],
                  "text": "s ---b"
                }
              },
              {
                "box": {
                  "id": "obj-5",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["bang", "int"],
                  "patching_rect": [528, 72, 30, 22],
                  "text": "t b i"
                }
              },
              {
                "box": {
                  "id": "obj-50",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [328, 696, 63, 22],
                  "text": "prepend 0"
                }
              },
              {
                "box": {
                  "id": "obj-58",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [136, 696, 121, 22],
                  "text": "prepend param width"
                }
              },
              {
                "box": {
                  "id": "obj-4",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [328, 72, 63, 22],
                  "text": "prepend 1"
                }
              },
              {
                "box": {
                  "id": "obj-3",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "patching_rect": [480, 136, 46, 22],
                  "text": "route 0"
                }
              },
              {
                "box": {
                  "id": "obj-30",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [136, 72, 121, 22],
                  "text": "prepend param width"
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-2",
                  "index": 1,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [496, 232, 30, 30]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-1",
                  "index": 1,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [496, 32, 30, 30]
                }
              },
              {
                "box": {
                  "appearance": 3,
                  "id": "obj-13",
                  "maxclass": "live.dial",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", "float"],
                  "parameter_enable": 1,
                  "patching_rect": [160, 144, 50, 63],
                  "presentation": 1,
                  "presentation_rect": [40, 141, 50, 63],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [4],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "Gaussian Width",
                      "parameter_mmax": 100,
                      "parameter_modmode": 3,
                      "parameter_shortname": "Gaussian Width",
                      "parameter_steps": 1001,
                      "parameter_type": 0,
                      "parameter_unitstyle": 1,
                      "parameter_annotation_name": "Gaussian Width"
                    }
                  },
                  "varname": "live.dial[1]",
                  "annotation_name": "Gaussian Width"
                }
              },
              {
                "box": {
                  "appearance": 3,
                  "id": "obj-15",
                  "maxclass": "live.dial",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", "float"],
                  "parameter_enable": 1,
                  "patching_rect": [128, 864, 50, 63],
                  "presentation": 1,
                  "presentation_rect": [40, 269, 50, 63],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [0.5],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "Radial Width",
                      "parameter_mmax": 2,
                      "parameter_modmode": 3,
                      "parameter_shortname": "Radial Width",
                      "parameter_steps": 1001,
                      "parameter_type": 0,
                      "parameter_unitstyle": 1,
                      "parameter_annotation_name": "Radial Width"
                    }
                  },
                  "varname": "live.dial[2]",
                  "annotation_name": "Radial Width"
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
                  "destination": ["obj-91", 0],
                  "source": ["obj-10", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-30", 0],
                  "source": ["obj-13", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-69", 0],
                  "source": ["obj-15", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-13", 0],
                  "source": ["obj-19", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-9", 0],
                  "source": ["obj-20", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-15", 0],
                  "order": 0,
                  "source": ["obj-22", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-28", 0],
                  "order": 1,
                  "source": ["obj-22", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-47", 0],
                  "order": 2,
                  "source": ["obj-22", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-8", 1],
                  "source": ["obj-28", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-2", 0],
                  "source": ["obj-3", 0]
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
                  "destination": ["obj-3", 0],
                  "source": ["obj-4", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-8", 0],
                  "source": ["obj-47", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-3", 1],
                  "source": ["obj-5", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-6", 0],
                  "source": ["obj-5", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-3", 0],
                  "source": ["obj-50", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-50", 0],
                  "source": ["obj-58", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-3", 0],
                  "source": ["obj-62", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-62", 0],
                  "source": ["obj-67", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-62", 0],
                  "source": ["obj-69", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-10", 0],
                  "source": ["obj-7", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-67", 0],
                  "source": ["obj-8", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-3", 0],
                  "source": ["obj-84", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-58", 0],
                  "source": ["obj-9", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-84", 0],
                  "source": ["obj-91", 0]
                }
              }
            ]
          },
          "patching_rect": [832, 80, 130, 124],
          "presentation": 1,
          "presentation_rect": [0, 30, 130, 124],
          "varname": "tabed",
          "viewvisibility": 1
        }
      }
    ],
    "lines": [
      {"patchline": {"destination": ["obj-42", 4], "source": ["obj-1", 0]}},
      {"patchline": {"destination": ["obj-10", 1], "source": ["obj-11", 1]}},
      {"patchline": {"destination": ["obj-10", 0], "source": ["obj-11", 0]}},
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
      {"patchline": {"destination": ["obj-19", 0], "source": ["obj-13", 0]}},
      {"patchline": {"destination": ["obj-19", 0], "source": ["obj-14", 0]}},
      {"patchline": {"destination": ["obj-19", 0], "source": ["obj-16", 0]}},
      {"patchline": {"destination": ["obj-15", 0], "source": ["obj-17", 0]}},
      {"patchline": {"destination": ["obj-19", 0], "source": ["obj-18", 0]}},
      {"patchline": {"destination": ["obj-5", 0], "source": ["obj-19", 0]}},
      {"patchline": {"destination": ["obj-1", 0], "source": ["obj-2", 0]}},
      {"patchline": {"destination": ["obj-30", 0], "source": ["obj-28", 0]}},
      {"patchline": {"destination": ["obj-28", 0], "source": ["obj-29", 0]}},
      {"patchline": {"destination": ["obj-5", 0], "source": ["obj-3", 0]}},
      {"patchline": {"destination": ["obj-8", 0], "source": ["obj-3", 1]}},
      {"patchline": {"destination": ["obj-26", 0], "source": ["obj-30", 0]}},
      {"patchline": {"destination": ["obj-12", 1], "source": ["obj-309", 0]}},
      {"patchline": {"destination": ["obj-5", 0], "source": ["obj-31", 0]}},
      {"patchline": {"destination": ["obj-29", 0], "source": ["obj-34", 1]}},
      {"patchline": {"destination": ["obj-31", 0], "source": ["obj-34", 0]}},
      {"patchline": {"destination": ["obj-7", 0], "source": ["obj-34", 2]}},
      {"patchline": {"destination": ["obj-42", 0], "source": ["obj-366", 0]}},
      {"patchline": {"destination": ["obj-376", 0], "source": ["obj-372", 0]}},
      {"patchline": {"destination": ["obj-366", 0], "source": ["obj-376", 0]}},
      {"patchline": {"destination": ["obj-34", 0], "source": ["obj-4", 0]}},
      {"patchline": {"destination": ["obj-12", 0], "source": ["obj-42", 4]}},
      {"patchline": {"destination": ["obj-366", 0], "source": ["obj-42", 2]}},
      {"patchline": {"destination": ["obj-42", 3], "source": ["obj-5", 0]}},
      {"patchline": {"destination": ["obj-13", 0], "source": ["obj-7", 0]}},
      {"patchline": {"destination": ["obj-14", 0], "source": ["obj-7", 1]}},
      {"patchline": {"destination": ["obj-16", 0], "source": ["obj-7", 2]}},
      {"patchline": {"destination": ["obj-18", 0], "source": ["obj-7", 3]}},
      {"patchline": {"destination": ["obj-2", 1], "source": ["obj-8", 3]}},
      {"patchline": {"destination": ["obj-2", 0], "source": ["obj-8", 2]}},
      {"patchline": {"destination": ["obj-6", 0], "source": ["obj-9", 0]}}
    ],
    "parameters": {
      "obj-31::obj-10": ["Sharpen Width", "Sharpen Width", 0],
      "obj-31::obj-13": ["Gaussian Width", "Gaussian Width", 0],
      "obj-31::obj-15": ["Radial Width", "Radial Width", 0],
      "obj-31::obj-28": ["Y", "Y", 0],
      "obj-31::obj-47": ["X", "X", 0],
      "obj-31::obj-9": ["Blur Width", "Blur Width", 0],
      "obj-366": ["Channel", "Channel", 0],
      "obj-4": ["Blur", "Blur", 0],
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