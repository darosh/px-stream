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
          "id": "obj-4",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [688, 232, 75, 22],
          "text": "prepend dim"
        }
      },
      {
        "box": {
          "id": "obj-34",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["int", "int", "int"],
          "patching_rect": [976, 56, 40, 22],
          "text": "t i i i"
        }
      },
      {
        "box": {
          "id": "obj-33",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1496, 144, 55, 22],
          "text": "tonemap"
        }
      },
      {
        "box": {
          "id": "obj-32",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1448, 144, 35, 22],
          "text": "grain"
        }
      },
      {
        "box": {
          "id": "obj-31",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1392, 144, 49, 22],
          "text": "gamma"
        }
      },
      {
        "box": {
          "id": "obj-30",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1352, 144, 31, 22],
          "text": "fxaa"
        }
      },
      {
        "box": {
          "id": "obj-29",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [1128, 56, 41, 22],
          "text": "* -128"
        }
      },
      {
        "box": {
          "id": "obj-23",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [1128, 192, 67, 22],
          "save": ["#N", "thispatcher", ";", "#Q", "end", ";"],
          "text": "thispatcher"
        }
      },
      {
        "box": {
          "id": "obj-21",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1128, 96, 64, 22],
          "text": "offset 0 $1"
        }
      },
      {
        "box": {
          "id": "obj-20",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1128, 144, 147, 22],
          "text": "prepend script send tabed"
        }
      },
      {
        "box": {
          "id": "obj-19",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [864, 208, 61, 22],
          "text": "enable $1"
        }
      },
      {
        "box": {
          "id": "obj-18",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [864, 176, 71, 22],
          "text": "r ---enabled"
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
          "id": "obj-14",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1272, 192, 95, 22],
          "text": "prepend fxname"
        }
      },
      {
        "box": {
          "id": "obj-13",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1560, 144, 51, 22],
          "text": "vignette"
        }
      },
      {
        "box": {
          "id": "obj-8",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1280, 144, 59, 22],
          "text": "bloom-hq"
        }
      },
      {
        "box": {
          "id": "obj-7",
          "maxclass": "newobj",
          "numinlets": 7,
          "numoutlets": 7,
          "outlettype": ["bang", "bang", "bang", "bang", "bang", "bang", ""],
          "patching_rect": [1272, 96, 100, 22],
          "text": "select 0 1 2 3 4 5"
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
          "id": "obj-25",
          "maxclass": "live.tab",
          "mode": 1,
          "num_lines_patching": 1,
          "num_lines_presentation": 2,
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["", "", "float"],
          "parameter_enable": 1,
          "patching_rect": [976, 16, 280, 16],
          "presentation": 1,
          "presentation_rect": [2, 2, 126, 28],
          "saved_attribute_attributes": {
            "focusbordercolor": {"expression": ""},
            "valueof": {
              "parameter_enum": [
                "Bloom HQ",
                "FXAA",
                "Gamma",
                "Grain",
                "Tonemap",
                "Vignette"
              ],
              "parameter_longname": "live.tab",
              "parameter_mmax": 5,
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
          "id": "obj-37",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["jit_gl_texture", "", ""],
          "patching_rect": [688, 272, 541, 22],
          "text": "jit.gl.node px-stream @name ---NODE @erase_color 0 0 0 0 @dim 512 512 @scale 1 1 1 @adapt 0"
        }
      },
      {
        "box": {
          "id": "obj-22",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["jit_matrix", ""],
          "patching_rect": [616, 392, 411, 22],
          "text": "jit.gl.videoplane ---NODE @preserve_aspect 1 @dim 512 512 @scale 1 1 1"
        }
      },
      {
        "box": {
          "filename": "bloom.jxp",
          "id": "obj-100",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["jit_gl_texture", "", ""],
          "patching_rect": [688, 328, 278, 22],
          "text": "jit.gl.pass ---NODE @fxname bloom-hq @enable 1",
          "textfile": {
            "filename": "bloom.jxp",
            "flags": 0,
            "embed": 0,
            "autowatch": 1
          }
        }
      },
      {
        "box": {
          "id": "obj-5",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [688, 192, 60, 22],
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
          "patching_rect": [616, 112, 30, 22],
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
          "patching_rect": [688, 160, 46, 22],
          "text": "pack i i"
        }
      },
      {
        "box": {
          "id": "obj-1",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 5,
          "outlettype": ["", "", "int", "int", "int"],
          "patching_rect": [688, 112, 84, 22],
          "text": "unpack s s i i i"
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
          "patching_rect": [472, 168, 80, 22],
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
          "patching_rect": [424, 216, 240, 32],
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
          "patching_rect": [136, 104, 31, 22],
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
          "patching_rect": [136, 168, 100, 20],
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
          "bgmode": 0,
          "border": 0,
          "clickthrough": 0,
          "embed": 1,
          "enablehscroll": 0,
          "enablevscroll": 0,
          "id": "obj-26",
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
            "rect": [33, 79, 567, 498],
            "openinpresentation": 1,
            "gridonopen": 2,
            "gridsize": [8, 8],
            "gridsnaponopen": 2,
            "objectsnaponopen": 0,
            "integercoordinates": 1,
            "boxes": [
              {
                "box": {
                  "id": "obj-213",
                  "maxclass": "live.numbox",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", "float"],
                  "parameter_enable": 1,
                  "patching_rect": [104, 3184, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [2, 743, 44, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [2],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.numbox[27]",
                      "parameter_mmax": 10,
                      "parameter_modmode": 3,
                      "parameter_shortname": "live.numbox[2]",
                      "parameter_steps": 1001,
                      "parameter_type": 0,
                      "parameter_unitstyle": 1
                    }
                  },
                  "varname": "live.numbox[19]"
                }
              },
              {
                "box": {
                  "id": "obj-215",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [104, 3224, 84, 22],
                  "text": "prepend falloff"
                }
              },
              {
                "box": {
                  "id": "obj-212",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [376, 2888, 41, 22],
                  "text": "pak f f"
                }
              },
              {
                "box": {
                  "id": "obj-189",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [40, 2984, 34, 22],
                  "text": "r ---b"
                }
              },
              {
                "box": {
                  "id": "obj-191",
                  "maxclass": "live.numbox",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", "float"],
                  "parameter_enable": 1,
                  "patching_rect": [112, 3096, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [58, 714, 44, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [1],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.numbox[41]",
                      "parameter_mmax": 10,
                      "parameter_modmode": 3,
                      "parameter_shortname": "live.numbox[2]",
                      "parameter_steps": 1001,
                      "parameter_type": 0,
                      "parameter_unitstyle": 1
                    }
                  },
                  "varname": "live.numbox[34]"
                }
              },
              {
                "box": {
                  "id": "obj-192",
                  "maxclass": "live.numbox",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", "float"],
                  "parameter_enable": 1,
                  "patching_rect": [112, 3016, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [2, 714, 44, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [2],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.numbox[48]",
                      "parameter_mmax": 10,
                      "parameter_modmode": 3,
                      "parameter_shortname": "live.numbox[2]",
                      "parameter_steps": 1001,
                      "parameter_type": 0,
                      "parameter_unitstyle": 1
                    }
                  },
                  "varname": "live.numbox[35]"
                }
              },
              {
                "box": {
                  "id": "obj-193",
                  "maxclass": "live.numbox",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", "float"],
                  "parameter_enable": 1,
                  "patching_rect": [112, 2872, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [2, 685, 44, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [0],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.numbox[52]",
                      "parameter_mmax": 10,
                      "parameter_modmode": 3,
                      "parameter_shortname": "live.numbox[2]",
                      "parameter_steps": 1001,
                      "parameter_type": 0,
                      "parameter_unitstyle": 1
                    }
                  },
                  "varname": "live.numbox[36]"
                }
              },
              {
                "box": {
                  "id": "obj-194",
                  "maxclass": "live.numbox",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", "float"],
                  "parameter_enable": 1,
                  "patching_rect": [112, 2952, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [58, 685, 44, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [0],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.numbox[28]",
                      "parameter_mmax": 10,
                      "parameter_modmode": 3,
                      "parameter_shortname": "live.numbox[2]",
                      "parameter_steps": 1001,
                      "parameter_type": 0,
                      "parameter_unitstyle": 1
                    }
                  },
                  "varname": "live.numbox[37]"
                }
              },
              {
                "box": {
                  "id": "obj-195",
                  "maxclass": "live.numbox",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", "float"],
                  "parameter_enable": 1,
                  "patching_rect": [112, 2792, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [2, 656, 44, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [0],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.numbox[42]",
                      "parameter_mmax": 10,
                      "parameter_modmode": 3,
                      "parameter_shortname": "live.numbox[2]",
                      "parameter_steps": 1001,
                      "parameter_type": 0,
                      "parameter_unitstyle": 1
                    }
                  },
                  "varname": "live.numbox[38]"
                }
              },
              {
                "box": {
                  "id": "obj-196",
                  "maxclass": "live.numbox",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", "float"],
                  "parameter_enable": 1,
                  "patching_rect": [112, 2712, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [58, 656, 44, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [1],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.numbox[53]",
                      "parameter_mmax": 10,
                      "parameter_modmode": 4,
                      "parameter_shortname": "live.numbox[2]",
                      "parameter_steps": 1001,
                      "parameter_type": 0,
                      "parameter_unitstyle": 1
                    }
                  },
                  "varname": "live.numbox[39]"
                }
              },
              {
                "box": {
                  "id": "obj-198",
                  "maxclass": "live.comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [168, 3112, 150, 18],
                  "presentation": 1,
                  "presentation_rect": [56, 698, 64, 18],
                  "text": "Exposure",
                  "textjustification": 0
                }
              },
              {
                "box": {
                  "id": "obj-199",
                  "maxclass": "live.comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [168, 3032, 150, 18],
                  "presentation": 1,
                  "presentation_rect": [0, 698, 56, 18],
                  "text": "Expand",
                  "textjustification": 0
                }
              },
              {
                "box": {
                  "id": "obj-200",
                  "maxclass": "live.comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [168, 2944, 150, 18],
                  "presentation": 1,
                  "presentation_rect": [56, 669, 64, 18],
                  "text": "Y",
                  "textjustification": 0
                }
              },
              {
                "box": {
                  "id": "obj-201",
                  "maxclass": "live.comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [168, 2872, 150, 18],
                  "presentation": 1,
                  "presentation_rect": [0, 669, 48, 18],
                  "text": "X",
                  "textjustification": 0
                }
              },
              {
                "box": {
                  "id": "obj-202",
                  "maxclass": "live.comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [168, 2792, 150, 18],
                  "presentation": 1,
                  "presentation_rect": [0, 640, 56, 18],
                  "text": "Bars",
                  "textjustification": 0
                }
              },
              {
                "box": {
                  "id": "obj-203",
                  "maxclass": "live.comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [168, 2712, 150, 18],
                  "presentation": 1,
                  "presentation_rect": [56, 640, 64, 18],
                  "text": "Anamorphic",
                  "textjustification": 0
                }
              },
              {
                "box": {
                  "id": "obj-204",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [304, 2752, 63, 22],
                  "text": "prepend 5"
                }
              },
              {
                "box": {
                  "id": "obj-206",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [112, 3144, 105, 22],
                  "text": "prepend exposure"
                }
              },
              {
                "box": {
                  "id": "obj-207",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [112, 3056, 95, 22],
                  "text": "prepend expand"
                }
              },
              {
                "box": {
                  "id": "obj-209",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [368, 2928, 89, 22],
                  "text": "prepend center"
                }
              },
              {
                "box": {
                  "id": "obj-210",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [112, 2832, 79, 22],
                  "text": "prepend bars"
                }
              },
              {
                "box": {
                  "id": "obj-211",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [112, 2752, 119, 22],
                  "text": "prepend anamorphic"
                }
              },
              {
                "box": {
                  "id": "obj-166",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [40, 2392, 34, 22],
                  "text": "r ---b"
                }
              },
              {
                "box": {
                  "id": "obj-170",
                  "maxclass": "live.numbox",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", "float"],
                  "parameter_enable": 1,
                  "patching_rect": [112, 2280, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [2, 557, 44, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [11.2],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.numbox[50]",
                      "parameter_mmax": 100,
                      "parameter_modmode": 3,
                      "parameter_shortname": "live.numbox[2]",
                      "parameter_steps": 1001,
                      "parameter_type": 0,
                      "parameter_unitstyle": 1
                    }
                  },
                  "varname": "live.numbox[29]"
                }
              },
              {
                "box": {
                  "id": "obj-172",
                  "maxclass": "live.numbox",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", "float"],
                  "parameter_enable": 1,
                  "patching_rect": [112, 2200, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [58, 528, 44, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [0.555555],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.numbox[40]",
                      "parameter_mmax": 10,
                      "parameter_modmode": 3,
                      "parameter_shortname": "live.numbox[2]",
                      "parameter_steps": 1001,
                      "parameter_type": 0,
                      "parameter_unitstyle": 1
                    }
                  },
                  "varname": "live.numbox[31]"
                }
              },
              {
                "box": {
                  "id": "obj-173",
                  "maxclass": "live.numbox",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", "float"],
                  "parameter_enable": 1,
                  "patching_rect": [112, 2120, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [2, 528, 44, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [2],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.numbox[47]",
                      "parameter_mmax": 10,
                      "parameter_modmode": 4,
                      "parameter_shortname": "live.numbox[2]",
                      "parameter_steps": 1001,
                      "parameter_type": 0,
                      "parameter_unitstyle": 1
                    }
                  },
                  "varname": "live.numbox[32]"
                }
              },
              {
                "box": {
                  "id": "obj-178",
                  "maxclass": "live.comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [176, 2280, 150, 18],
                  "presentation": 1,
                  "presentation_rect": [0, 541, 48, 18],
                  "text": "White",
                  "textjustification": 0
                }
              },
              {
                "box": {
                  "id": "obj-179",
                  "maxclass": "live.comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [176, 2200, 150, 18],
                  "presentation": 1,
                  "presentation_rect": [56, 512, 56, 18],
                  "text": "Inv. gamma",
                  "textjustification": 0
                }
              },
              {
                "box": {
                  "id": "obj-180",
                  "maxclass": "live.comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [176, 2120, 150, 18],
                  "presentation": 1,
                  "presentation_rect": [0, 512, 56, 18],
                  "text": "Exposure",
                  "textjustification": 0
                }
              },
              {
                "box": {
                  "id": "obj-181",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [304, 2160, 63, 22],
                  "text": "prepend 4"
                }
              },
              {
                "box": {
                  "id": "obj-186",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [112, 2320, 117, 22],
                  "text": "prepend white_point"
                }
              },
              {
                "box": {
                  "id": "obj-187",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [112, 2240, 118, 22],
                  "text": "prepend inv_gamma"
                }
              },
              {
                "box": {
                  "id": "obj-188",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [112, 2160, 134, 22],
                  "text": "prepend exposure_bias"
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
                  "id": "obj-72",
                  "maxclass": "live.numbox",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", "float"],
                  "parameter_enable": 1,
                  "patching_rect": [112, 1848, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [2, 458, 44, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [1],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.numbox[22]",
                      "parameter_mmax": 10,
                      "parameter_modmode": 3,
                      "parameter_shortname": "live.numbox[2]",
                      "parameter_steps": 1001,
                      "parameter_type": 0,
                      "parameter_unitstyle": 1
                    }
                  },
                  "varname": "live.numbox[21]"
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
                  "patching_rect": [112, 1704, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [2, 429, 44, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [0.25],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.numbox[23]",
                      "parameter_mmax": 10,
                      "parameter_modmode": 3,
                      "parameter_shortname": "live.numbox[2]",
                      "parameter_steps": 1001,
                      "parameter_type": 0,
                      "parameter_unitstyle": 1
                    }
                  },
                  "varname": "live.numbox[22]"
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
                  "patching_rect": [112, 1784, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [58, 429, 44, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [2.5],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.numbox[24]",
                      "parameter_mmax": 10,
                      "parameter_modmode": 3,
                      "parameter_shortname": "live.numbox[2]",
                      "parameter_steps": 1001,
                      "parameter_type": 0,
                      "parameter_unitstyle": 1
                    }
                  },
                  "varname": "live.numbox[23]"
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
                  "patching_rect": [112, 1624, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [58, 400, 44, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [1],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.numbox[25]",
                      "parameter_mmax": 10,
                      "parameter_modmode": 3,
                      "parameter_shortname": "live.numbox[2]",
                      "parameter_steps": 1001,
                      "parameter_type": 0,
                      "parameter_unitstyle": 1
                    }
                  },
                  "varname": "live.numbox[24]"
                }
              },
              {
                "box": {
                  "id": "obj-76",
                  "maxclass": "live.numbox",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", "float"],
                  "parameter_enable": 1,
                  "patching_rect": [112, 1544, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [2, 400, 44, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [0.7],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.numbox[26]",
                      "parameter_mmax": 10,
                      "parameter_modmode": 4,
                      "parameter_shortname": "live.numbox[2]",
                      "parameter_steps": 1001,
                      "parameter_type": 0,
                      "parameter_unitstyle": 1
                    }
                  },
                  "varname": "live.numbox[25]"
                }
              },
              {
                "box": {
                  "id": "obj-79",
                  "maxclass": "live.comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [176, 1864, 150, 18],
                  "presentation": 1,
                  "presentation_rect": [0, 442, 56, 18],
                  "text": "Luma",
                  "textjustification": 0
                }
              },
              {
                "box": {
                  "id": "obj-80",
                  "maxclass": "live.comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [176, 1784, 150, 18],
                  "presentation": 1,
                  "presentation_rect": [56, 413, 64, 18],
                  "text": "Size",
                  "textjustification": 0
                }
              },
              {
                "box": {
                  "id": "obj-81",
                  "maxclass": "live.comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [176, 1704, 150, 18],
                  "presentation": 1,
                  "presentation_rect": [0, 413, 48, 18],
                  "text": "Amount",
                  "textjustification": 0
                }
              },
              {
                "box": {
                  "id": "obj-82",
                  "maxclass": "live.comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [176, 1624, 150, 18],
                  "presentation": 1,
                  "presentation_rect": [56, 384, 56, 18],
                  "text": "Colored",
                  "textjustification": 0
                }
              },
              {
                "box": {
                  "id": "obj-83",
                  "maxclass": "live.comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [176, 1544, 150, 18],
                  "presentation": 1,
                  "presentation_rect": [0, 384, 64, 18],
                  "text": "Tint",
                  "textjustification": 0
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
                  "id": "obj-87",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [112, 1888, 129, 22],
                  "text": "prepend luma_amount"
                }
              },
              {
                "box": {
                  "id": "obj-88",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [112, 1816, 111, 22],
                  "text": "prepend grain_size"
                }
              },
              {
                "box": {
                  "id": "obj-89",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [112, 1744, 129, 22],
                  "text": "prepend grain_amount"
                }
              },
              {
                "box": {
                  "id": "obj-90",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [112, 1664, 95, 22],
                  "text": "prepend colored"
                }
              },
              {
                "box": {
                  "id": "obj-91",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [112, 1584, 105, 22],
                  "text": "prepend color_tint"
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
                  "id": "obj-23",
                  "maxclass": "live.numbox",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", "float"],
                  "parameter_enable": 1,
                  "patching_rect": [112, 1400, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [2, 359, 44, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [1],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.numbox[10]",
                      "parameter_mmax": 10,
                      "parameter_modmode": 3,
                      "parameter_shortname": "live.numbox[2]",
                      "parameter_steps": 1001,
                      "parameter_type": 0,
                      "parameter_unitstyle": 1
                    }
                  },
                  "varname": "live.numbox[1]"
                }
              },
              {
                "box": {
                  "id": "obj-26",
                  "maxclass": "live.numbox",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", "float"],
                  "parameter_enable": 1,
                  "patching_rect": [112, 1328, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [58, 330, 44, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [0],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.numbox[11]",
                      "parameter_mmax": 10,
                      "parameter_modmode": 3,
                      "parameter_shortname": "live.numbox[2]",
                      "parameter_steps": 1001,
                      "parameter_type": 0,
                      "parameter_unitstyle": 1
                    }
                  },
                  "varname": "live.numbox[10]"
                }
              },
              {
                "box": {
                  "id": "obj-27",
                  "maxclass": "live.numbox",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", "float"],
                  "parameter_enable": 1,
                  "patching_rect": [112, 1248, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [2, 330, 44, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [3],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.numbox[14]",
                      "parameter_mmax": 10,
                      "parameter_modmode": 3,
                      "parameter_shortname": "live.numbox[2]",
                      "parameter_steps": 1001,
                      "parameter_type": 0,
                      "parameter_unitstyle": 1
                    }
                  },
                  "varname": "live.numbox[11]"
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
                  "presentation_rect": [2, 301, 44, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [1],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.numbox[18]",
                      "parameter_mmax": 10,
                      "parameter_modmode": 3,
                      "parameter_shortname": "live.numbox[2]",
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
                  "id": "obj-42",
                  "maxclass": "live.numbox",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", "float"],
                  "parameter_enable": 1,
                  "patching_rect": [112, 1184, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [58, 301, 44, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [0],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.numbox[15]",
                      "parameter_mmax": 10,
                      "parameter_modmode": 3,
                      "parameter_shortname": "live.numbox[2]",
                      "parameter_steps": 1001,
                      "parameter_type": 0,
                      "parameter_unitstyle": 1
                    }
                  },
                  "varname": "live.numbox[14]"
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
                  "presentation_rect": [58, 272, 44, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [0],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.numbox[19]",
                      "parameter_mmax": 10,
                      "parameter_modmode": 3,
                      "parameter_shortname": "live.numbox[2]",
                      "parameter_steps": 1001,
                      "parameter_type": 0,
                      "parameter_unitstyle": 1
                    }
                  },
                  "varname": "live.numbox[17]"
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
                  "patching_rect": [112, 944, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [2, 272, 44, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [256],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.numbox[20]",
                      "parameter_mmax": 256,
                      "parameter_modmode": 4,
                      "parameter_shortname": "live.numbox[2]",
                      "parameter_steps": 257,
                      "parameter_type": 0,
                      "parameter_unitstyle": 0
                    }
                  },
                  "varname": "live.numbox[18]"
                }
              },
              {
                "box": {
                  "id": "obj-52",
                  "maxclass": "live.comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [176, 1416, 150, 18],
                  "presentation": 1,
                  "presentation_linecount": 2,
                  "presentation_rect": [0, 343, 64, 29],
                  "text": "Tonemapping",
                  "textjustification": 0
                }
              },
              {
                "box": {
                  "id": "obj-53",
                  "maxclass": "live.comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [176, 1344, 150, 18],
                  "presentation": 1,
                  "presentation_rect": [56, 314, 64, 18],
                  "text": "Show clipped",
                  "textjustification": 0
                }
              },
              {
                "box": {
                  "id": "obj-55",
                  "maxclass": "live.comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [176, 1264, 150, 18],
                  "presentation": 1,
                  "presentation_rect": [0, 314, 56, 18],
                  "text": "max white",
                  "textjustification": 0
                }
              },
              {
                "box": {
                  "id": "obj-56",
                  "maxclass": "live.comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [176, 1184, 150, 18],
                  "presentation": 1,
                  "presentation_rect": [56, 285, 64, 18],
                  "text": "Gamma corr.",
                  "textjustification": 0
                }
              },
              {
                "box": {
                  "id": "obj-59",
                  "maxclass": "live.comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [176, 1104, 150, 18],
                  "presentation": 1,
                  "presentation_rect": [0, 285, 48, 18],
                  "text": "Exposure",
                  "textjustification": 0
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
                  "presentation_rect": [56, 256, 56, 18],
                  "text": "Dithering",
                  "textjustification": 0
                }
              },
              {
                "box": {
                  "id": "obj-61",
                  "maxclass": "live.comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [176, 944, 150, 18],
                  "presentation": 1,
                  "presentation_rect": [0, 256, 64, 18],
                  "text": "Colors",
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
                  "id": "obj-63",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [112, 1440, 125, 22],
                  "text": "prepend tonemapping"
                }
              },
              {
                "box": {
                  "id": "obj-64",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [112, 1368, 129, 22],
                  "text": "prepend show_clipped"
                }
              },
              {
                "box": {
                  "id": "obj-65",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [112, 1288, 113, 22],
                  "text": "prepend max_white"
                }
              },
              {
                "box": {
                  "id": "obj-66",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [112, 1216, 155, 22],
                  "text": "prepend gamma_correction"
                }
              },
              {
                "box": {
                  "id": "obj-67",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [112, 1144, 105, 22],
                  "text": "prepend exposure"
                }
              },
              {
                "box": {
                  "id": "obj-68",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [112, 1064, 102, 22],
                  "text": "prepend dithering"
                }
              },
              {
                "box": {
                  "id": "obj-69",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [112, 984, 119, 22],
                  "text": "prepend color_levels"
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
                  "fontsize": 24,
                  "id": "obj-49",
                  "maxclass": "live.comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [144, 696, 145, 35],
                  "presentation": 1,
                  "presentation_rect": [0, 160, 130, 35],
                  "text": "FXAA",
                  "textjustification": 1
                }
              },
              {
                "box": {
                  "id": "obj-46",
                  "maxclass": "live.numbox",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", "float"],
                  "parameter_enable": 1,
                  "patching_rect": [136, 576, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [58, 103, 44, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [1],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.numbox[9]",
                      "parameter_mmax": 10,
                      "parameter_modmode": 3,
                      "parameter_shortname": "live.numbox[2]",
                      "parameter_steps": 1001,
                      "parameter_type": 0,
                      "parameter_unitstyle": 1
                    }
                  },
                  "varname": "live.numbox[9]"
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
                  "patching_rect": [136, 496, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [2, 103, 44, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [1],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.numbox[8]",
                      "parameter_mmax": 10,
                      "parameter_modmode": 3,
                      "parameter_shortname": "live.numbox[2]",
                      "parameter_steps": 1001,
                      "parameter_type": 0,
                      "parameter_unitstyle": 1
                    }
                  },
                  "varname": "live.numbox[8]"
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
                  "patching_rect": [136, 416, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [58, 74, 44, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [1],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.numbox[7]",
                      "parameter_mmax": 10,
                      "parameter_modmode": 3,
                      "parameter_shortname": "live.numbox[2]",
                      "parameter_steps": 1001,
                      "parameter_type": 0,
                      "parameter_unitstyle": 1
                    }
                  },
                  "varname": "live.numbox[7]"
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
                  "patching_rect": [136, 336, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [2, 74, 44, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [0.99],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.numbox[6]",
                      "parameter_mmax": 10,
                      "parameter_modmode": 3,
                      "parameter_shortname": "live.numbox[2]",
                      "parameter_steps": 1001,
                      "parameter_type": 0,
                      "parameter_unitstyle": 1
                    }
                  },
                  "varname": "live.numbox[6]"
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
                  "patching_rect": [136, 200, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [2, 45, 44, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [1],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.numbox[5]",
                      "parameter_mmax": 10,
                      "parameter_modmode": 3,
                      "parameter_shortname": "live.numbox[2]",
                      "parameter_steps": 1001,
                      "parameter_type": 0,
                      "parameter_unitstyle": 1
                    }
                  },
                  "varname": "live.numbox[5]"
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
                  "patching_rect": [136, 272, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [58, 45, 44, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [0.8],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.numbox[4]",
                      "parameter_mmax": 10,
                      "parameter_modmode": 3,
                      "parameter_shortname": "live.numbox[2]",
                      "parameter_steps": 1001,
                      "parameter_type": 0,
                      "parameter_unitstyle": 1
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
                  "patching_rect": [136, 112, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [58, 16, 44, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [1],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.numbox[3]",
                      "parameter_mmax": 10,
                      "parameter_modmode": 3,
                      "parameter_shortname": "live.numbox[2]",
                      "parameter_steps": 1001,
                      "parameter_type": 0,
                      "parameter_unitstyle": 1
                    }
                  },
                  "varname": "live.numbox[3]"
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
                  "patching_rect": [136, 40, 44, 15],
                  "presentation": 1,
                  "presentation_rect": [2, 16, 44, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_initial": [1],
                      "parameter_initial_enable": 1,
                      "parameter_longname": "live.numbox[2]",
                      "parameter_mmax": 10,
                      "parameter_modmode": 3,
                      "parameter_shortname": "live.numbox[2]",
                      "parameter_steps": 1001,
                      "parameter_type": 0,
                      "parameter_unitstyle": 1
                    }
                  },
                  "varname": "live.numbox[2]"
                }
              },
              {
                "box": {
                  "id": "obj-18",
                  "maxclass": "live.comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [200, 584, 150, 18],
                  "presentation": 1,
                  "presentation_linecount": 2,
                  "presentation_rect": [56, 87, 56, 29],
                  "text": "White point",
                  "textjustification": 0
                }
              },
              {
                "box": {
                  "id": "obj-17",
                  "maxclass": "live.comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [200, 512, 150, 18],
                  "presentation": 1,
                  "presentation_rect": [0, 87, 56, 18],
                  "text": "Upsample",
                  "textjustification": 0
                }
              },
              {
                "box": {
                  "id": "obj-16",
                  "maxclass": "live.comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [200, 432, 150, 18],
                  "presentation": 1,
                  "presentation_linecount": 2,
                  "presentation_rect": [56, 58, 64, 29],
                  "text": "Tonemapping",
                  "textjustification": 0
                }
              },
              {
                "box": {
                  "id": "obj-15",
                  "maxclass": "live.comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [200, 352, 150, 18],
                  "presentation": 1,
                  "presentation_rect": [0, 58, 56, 18],
                  "text": "Threshold",
                  "textjustification": 0
                }
              },
              {
                "box": {
                  "id": "obj-14",
                  "maxclass": "live.comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [200, 272, 150, 18],
                  "presentation": 1,
                  "presentation_rect": [56, 29, 64, 18],
                  "text": "Gamma corr.",
                  "textjustification": 0
                }
              },
              {
                "box": {
                  "id": "obj-13",
                  "maxclass": "live.comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [200, 192, 150, 18],
                  "presentation": 1,
                  "presentation_rect": [0, 29, 48, 18],
                  "text": "Gamma",
                  "textjustification": 0
                }
              },
              {
                "box": {
                  "id": "obj-12",
                  "maxclass": "live.comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [200, 112, 150, 18],
                  "presentation": 1,
                  "presentation_rect": [56, 0, 56, 18],
                  "text": "Exposure",
                  "textjustification": 0
                }
              },
              {
                "box": {
                  "id": "obj-11",
                  "maxclass": "live.comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [200, 32, 150, 18],
                  "presentation": 1,
                  "presentation_rect": [0, 0, 64, 18],
                  "text": "Bloom",
                  "textjustification": 0
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
                  "text": "prepend 0"
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
                  "id": "obj-45",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [136, 608, 117, 22],
                  "text": "prepend white_point"
                }
              },
              {
                "box": {
                  "id": "obj-43",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [136, 536, 143, 22],
                  "text": "prepend upsample_scale"
                }
              },
              {
                "box": {
                  "id": "obj-40",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [136, 464, 125, 22],
                  "text": "prepend tonemapping"
                }
              },
              {
                "box": {
                  "id": "obj-38",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [136, 376, 105, 22],
                  "text": "prepend threshold"
                }
              },
              {
                "box": {
                  "id": "obj-35",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [136, 312, 155, 22],
                  "text": "prepend gamma_correction"
                }
              },
              {
                "box": {
                  "id": "obj-33",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [136, 240, 96, 22],
                  "text": "prepend gamma"
                }
              },
              {
                "box": {
                  "id": "obj-31",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [136, 152, 134, 22],
                  "text": "prepend exposure_bias"
                }
              },
              {
                "box": {
                  "id": "obj-30",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [136, 72, 115, 22],
                  "text": "prepend bloom_amt"
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
                  "id": "obj-214",
                  "maxclass": "live.comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [168, 3200, 150, 18],
                  "presentation": 1,
                  "presentation_rect": [0, 727, 64, 18],
                  "text": "Falloff",
                  "textjustification": 0
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
                  "destination": ["obj-170", 0],
                  "order": 0,
                  "source": ["obj-166", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-172", 0],
                  "order": 1,
                  "source": ["obj-166", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-173", 0],
                  "order": 2,
                  "source": ["obj-166", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-186", 0],
                  "source": ["obj-170", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-187", 0],
                  "source": ["obj-172", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-188", 0],
                  "source": ["obj-173", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-3", 0],
                  "source": ["obj-181", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-181", 0],
                  "source": ["obj-186", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-181", 0],
                  "source": ["obj-187", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-181", 0],
                  "source": ["obj-188", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-191", 0],
                  "order": 0,
                  "source": ["obj-189", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-192", 0],
                  "order": 1,
                  "source": ["obj-189", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-193", 0],
                  "order": 3,
                  "source": ["obj-189", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-194", 0],
                  "order": 2,
                  "source": ["obj-189", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-195", 0],
                  "order": 4,
                  "source": ["obj-189", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-196", 0],
                  "order": 5,
                  "source": ["obj-189", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-213", 0],
                  "order": 6,
                  "source": ["obj-189", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-29", 0],
                  "order": 7,
                  "source": ["obj-19", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-32", 0],
                  "order": 6,
                  "source": ["obj-19", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-34", 0],
                  "order": 4,
                  "source": ["obj-19", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-36", 0],
                  "order": 5,
                  "source": ["obj-19", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-39", 0],
                  "order": 3,
                  "source": ["obj-19", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-41", 0],
                  "order": 2,
                  "source": ["obj-19", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-44", 0],
                  "order": 1,
                  "source": ["obj-19", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-46", 0],
                  "order": 0,
                  "source": ["obj-19", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-206", 0],
                  "source": ["obj-191", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-207", 0],
                  "source": ["obj-192", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-212", 0],
                  "source": ["obj-193", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-212", 1],
                  "source": ["obj-194", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-210", 0],
                  "source": ["obj-195", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-211", 0],
                  "source": ["obj-196", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-3", 0],
                  "source": ["obj-204", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-204", 0],
                  "source": ["obj-206", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-204", 0],
                  "source": ["obj-207", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-204", 0],
                  "source": ["obj-209", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-204", 0],
                  "source": ["obj-210", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-204", 0],
                  "source": ["obj-211", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-209", 0],
                  "source": ["obj-212", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-215", 0],
                  "source": ["obj-213", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-204", 0],
                  "source": ["obj-215", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-23", 0],
                  "order": 0,
                  "source": ["obj-22", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-26", 0],
                  "order": 1,
                  "source": ["obj-22", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-27", 0],
                  "order": 2,
                  "source": ["obj-22", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-28", 0],
                  "order": 4,
                  "source": ["obj-22", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-42", 0],
                  "order": 3,
                  "source": ["obj-22", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-47", 0],
                  "order": 5,
                  "source": ["obj-22", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-51", 0],
                  "order": 6,
                  "source": ["obj-22", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-63", 0],
                  "source": ["obj-23", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-64", 0],
                  "source": ["obj-26", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-65", 0],
                  "source": ["obj-27", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-67", 0],
                  "source": ["obj-28", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-30", 0],
                  "source": ["obj-29", 0]
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
                  "destination": ["obj-4", 0],
                  "source": ["obj-31", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-31", 0],
                  "source": ["obj-32", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-4", 0],
                  "source": ["obj-33", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-35", 0],
                  "source": ["obj-34", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-4", 0],
                  "source": ["obj-35", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-33", 0],
                  "source": ["obj-36", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-4", 0],
                  "source": ["obj-38", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-38", 0],
                  "source": ["obj-39", 0]
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
                  "destination": ["obj-4", 0],
                  "source": ["obj-40", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-40", 0],
                  "source": ["obj-41", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-66", 0],
                  "source": ["obj-42", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-4", 0],
                  "source": ["obj-43", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-43", 0],
                  "source": ["obj-44", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-4", 0],
                  "source": ["obj-45", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-45", 0],
                  "source": ["obj-46", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-68", 0],
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
                  "destination": ["obj-69", 0],
                  "source": ["obj-51", 0]
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
                  "source": ["obj-63", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-62", 0],
                  "source": ["obj-64", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-62", 0],
                  "source": ["obj-65", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-62", 0],
                  "source": ["obj-66", 0]
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
                  "source": ["obj-68", 0]
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
                  "destination": ["obj-72", 0],
                  "order": 0,
                  "source": ["obj-7", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-73", 0],
                  "order": 2,
                  "source": ["obj-7", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-74", 0],
                  "order": 1,
                  "source": ["obj-7", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-75", 0],
                  "order": 3,
                  "source": ["obj-7", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-76", 0],
                  "order": 4,
                  "source": ["obj-7", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-87", 0],
                  "source": ["obj-72", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-89", 0],
                  "source": ["obj-73", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-88", 0],
                  "source": ["obj-74", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-90", 0],
                  "source": ["obj-75", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-91", 0],
                  "source": ["obj-76", 0]
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
                  "destination": ["obj-84", 0],
                  "source": ["obj-87", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-84", 0],
                  "source": ["obj-88", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-84", 0],
                  "source": ["obj-89", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-84", 0],
                  "source": ["obj-90", 0]
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
          "patching_rect": [976, 96, 130, 124],
          "presentation": 1,
          "presentation_rect": [0, 32, 130, 120],
          "varname": "tabed",
          "viewvisibility": 1
        }
      }
    ],
    "lines": [
      {"patchline": {"destination": ["obj-2", 1], "source": ["obj-1", 3]}},
      {"patchline": {"destination": ["obj-2", 0], "source": ["obj-1", 2]}},
      {"patchline": {"destination": ["obj-42", 3], "source": ["obj-100", 0]}},
      {"patchline": {"destination": ["obj-10", 1], "source": ["obj-11", 1]}},
      {"patchline": {"destination": ["obj-10", 0], "source": ["obj-11", 0]}},
      {
        "patchline": {
          "destination": ["obj-3", 0],
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
      {"patchline": {"destination": ["obj-14", 0], "source": ["obj-13", 0]}},
      {"patchline": {"destination": ["obj-100", 0], "source": ["obj-14", 0]}},
      {"patchline": {"destination": ["obj-15", 0], "source": ["obj-17", 0]}},
      {"patchline": {"destination": ["obj-19", 0], "source": ["obj-18", 0]}},
      {"patchline": {"destination": ["obj-100", 0], "source": ["obj-19", 0]}},
      {
        "patchline": {
          "destination": ["obj-42", 4],
          "order": 1,
          "source": ["obj-2", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-5", 0],
          "order": 0,
          "source": ["obj-2", 0]
        }
      },
      {"patchline": {"destination": ["obj-23", 0], "source": ["obj-20", 0]}},
      {"patchline": {"destination": ["obj-20", 0], "source": ["obj-21", 0]}},
      {"patchline": {"destination": ["obj-34", 0], "source": ["obj-25", 0]}},
      {"patchline": {"destination": ["obj-100", 0], "source": ["obj-26", 0]}},
      {"patchline": {"destination": ["obj-21", 0], "source": ["obj-29", 0]}},
      {"patchline": {"destination": ["obj-1", 0], "source": ["obj-3", 1]}},
      {"patchline": {"destination": ["obj-22", 0], "source": ["obj-3", 0]}},
      {"patchline": {"destination": ["obj-14", 0], "source": ["obj-30", 0]}},
      {"patchline": {"destination": ["obj-12", 1], "source": ["obj-309", 0]}},
      {"patchline": {"destination": ["obj-14", 0], "source": ["obj-31", 0]}},
      {"patchline": {"destination": ["obj-14", 0], "source": ["obj-32", 0]}},
      {"patchline": {"destination": ["obj-14", 0], "source": ["obj-33", 0]}},
      {"patchline": {"destination": ["obj-26", 0], "source": ["obj-34", 0]}},
      {"patchline": {"destination": ["obj-29", 0], "source": ["obj-34", 1]}},
      {"patchline": {"destination": ["obj-7", 0], "source": ["obj-34", 2]}},
      {"patchline": {"destination": ["obj-42", 0], "source": ["obj-366", 0]}},
      {"patchline": {"destination": ["obj-376", 0], "source": ["obj-372", 0]}},
      {"patchline": {"destination": ["obj-366", 0], "source": ["obj-376", 0]}},
      {
        "patchline": {
          "destination": ["obj-22", 0],
          "order": 1,
          "source": ["obj-4", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-37", 0],
          "order": 0,
          "source": ["obj-4", 0]
        }
      },
      {"patchline": {"destination": ["obj-12", 0], "source": ["obj-42", 4]}},
      {"patchline": {"destination": ["obj-366", 0], "source": ["obj-42", 2]}},
      {"patchline": {"destination": ["obj-4", 0], "source": ["obj-5", 0]}},
      {"patchline": {"destination": ["obj-13", 0], "source": ["obj-7", 5]}},
      {"patchline": {"destination": ["obj-30", 0], "source": ["obj-7", 1]}},
      {"patchline": {"destination": ["obj-31", 0], "source": ["obj-7", 2]}},
      {"patchline": {"destination": ["obj-32", 0], "source": ["obj-7", 3]}},
      {"patchline": {"destination": ["obj-33", 0], "source": ["obj-7", 4]}},
      {"patchline": {"destination": ["obj-8", 0], "source": ["obj-7", 0]}},
      {"patchline": {"destination": ["obj-14", 0], "source": ["obj-8", 0]}},
      {"patchline": {"destination": ["obj-16", 0], "source": ["obj-9", 1]}},
      {"patchline": {"destination": ["obj-6", 0], "source": ["obj-9", 0]}}
    ],
    "parameters": {
      "obj-25": ["live.tab", "live.tab", 0],
      "obj-26::obj-170": ["live.numbox[50]", "live.numbox[2]", 0],
      "obj-26::obj-172": ["live.numbox[40]", "live.numbox[2]", 0],
      "obj-26::obj-173": ["live.numbox[47]", "live.numbox[2]", 0],
      "obj-26::obj-191": ["live.numbox[41]", "live.numbox[2]", 0],
      "obj-26::obj-192": ["live.numbox[48]", "live.numbox[2]", 0],
      "obj-26::obj-193": ["live.numbox[52]", "live.numbox[2]", 0],
      "obj-26::obj-194": ["live.numbox[28]", "live.numbox[2]", 0],
      "obj-26::obj-195": ["live.numbox[42]", "live.numbox[2]", 0],
      "obj-26::obj-196": ["live.numbox[53]", "live.numbox[2]", 0],
      "obj-26::obj-213": ["live.numbox[27]", "live.numbox[2]", 0],
      "obj-26::obj-23": ["live.numbox[10]", "live.numbox[2]", 0],
      "obj-26::obj-26": ["live.numbox[11]", "live.numbox[2]", 0],
      "obj-26::obj-27": ["live.numbox[14]", "live.numbox[2]", 0],
      "obj-26::obj-28": ["live.numbox[18]", "live.numbox[2]", 0],
      "obj-26::obj-29": ["live.numbox[2]", "live.numbox[2]", 0],
      "obj-26::obj-32": ["live.numbox[3]", "live.numbox[2]", 0],
      "obj-26::obj-34": ["live.numbox[4]", "live.numbox[2]", 0],
      "obj-26::obj-36": ["live.numbox[5]", "live.numbox[2]", 0],
      "obj-26::obj-39": ["live.numbox[6]", "live.numbox[2]", 0],
      "obj-26::obj-41": ["live.numbox[7]", "live.numbox[2]", 0],
      "obj-26::obj-42": ["live.numbox[15]", "live.numbox[2]", 0],
      "obj-26::obj-44": ["live.numbox[8]", "live.numbox[2]", 0],
      "obj-26::obj-46": ["live.numbox[9]", "live.numbox[2]", 0],
      "obj-26::obj-47": ["live.numbox[19]", "live.numbox[2]", 0],
      "obj-26::obj-51": ["live.numbox[20]", "live.numbox[2]", 0],
      "obj-26::obj-72": ["live.numbox[22]", "live.numbox[2]", 0],
      "obj-26::obj-73": ["live.numbox[23]", "live.numbox[2]", 0],
      "obj-26::obj-74": ["live.numbox[24]", "live.numbox[2]", 0],
      "obj-26::obj-75": ["live.numbox[25]", "live.numbox[2]", 0],
      "obj-26::obj-76": ["live.numbox[26]", "live.numbox[2]", 0],
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