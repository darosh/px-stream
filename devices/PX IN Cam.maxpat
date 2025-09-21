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
    "rect": [133, 80, 257, 423],
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
          "bgcolor": [0.27843137254902, 0.27843137254902, 0.27843137254902, 0],
          "blinkcolor": [
            0.972549019607843,
            0.462745098039216,
            0.501960784313725,
            1
          ],
          "id": "obj-43",
          "ignoreclick": 1,
          "maxclass": "button",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": ["bang"],
          "outlinecolor": [
            0.27843137254902,
            0.27843137254902,
            0.27843137254902,
            0
          ],
          "parameter_enable": 0,
          "patching_rect": [312, 792, 24, 24],
          "presentation": 1,
          "presentation_rect": [52, 70.5, 24, 24],
          "saved_attribute_attributes": {
            "blinkcolor": {"expression": "themecolor.live_display_handle_two"}
          }
        }
      },
      {
        "box": {
          "id": "obj-41",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": ["bang"],
          "patching_rect": [320, 120, 22, 22],
          "text": "t b"
        }
      },
      {
        "box": {
          "id": "obj-50",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [848, 408, 60, 22],
          "text": "zl.change"
        }
      },
      {
        "box": {
          "id": "obj-39",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [848, 360, 59, 22],
          "text": "route dim"
        }
      },
      {
        "box": {
          "id": "obj-27",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [848, 264, 30, 22],
          "text": "t l l"
        }
      },
      {
        "box": {
          "filename": "jitgltextureinfo.js",
          "id": "obj-26",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [848, 312, 89, 22],
          "saved_object_attributes": {"parameter_enable": 0},
          "text": "jit.gl.textureinfo",
          "textfile": {
            "filename": "jitgltextureinfo.js",
            "flags": 0,
            "embed": 0,
            "autowatch": 1
          }
        }
      },
      {
        "box": {
          "fontsize": 8,
          "id": "obj-362",
          "maxclass": "live.text",
          "mode": 0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "parameter_enable": 1,
          "patching_rect": [512, 32, 32, 32],
          "pictures": ["refresh.svg", "refresh.svg"],
          "presentation": 1,
          "presentation_rect": [86, 34, 42, 16],
          "remapsvgcolors": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_enum": ["val1", "val2"],
              "parameter_invisible": 2,
              "parameter_longname": "Reload",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "Reload",
              "parameter_type": 2,
              "parameter_annotation_name": "Reload"
            }
          },
          "text": "Reload",
          "usesvgviewbox": 1,
          "varname": "live.text[10]",
          "annotation_name": "Reload"
        }
      },
      {
        "box": {
          "id": "obj-23",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [304, 320, 54, 22],
          "text": "r ---reset"
        }
      },
      {
        "box": {
          "allowdrag": 0,
          "hint": "",
          "id": "obj-22",
          "items": [
            "NV12 - 420YpCbCr8BiPlanar - 1920 x 1080",
            ",",
            "NV12 - 420YpCbCr8BiPlanar - 1280 x 720",
            ",",
            "NV12 - 420YpCbCr8BiPlanar - 1080 x 1920",
            ",",
            "NV12 - 420YpCbCr8BiPlanar - 1760 x 1328",
            ",",
            "NV12 - 420YpCbCr8BiPlanar - 640 x 480",
            ",",
            "NV12 - 420YpCbCr8BiPlanar - 1328 x 1760",
            ",",
            "NV12 - 420YpCbCr8BiPlanar - 1552 x 1552"
          ],
          "maxclass": "umenu",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["int", "", ""],
          "parameter_enable": 0,
          "patching_rect": [624, 448, 196, 20],
          "presentation": 1,
          "presentation_rect": [2, 13, 126, 20],
          "style": "umenu.live",
          "varname": "Input format"
        }
      },
      {
        "box": {
          "allowdrag": 0,
          "hint": "",
          "id": "obj-51",
          "items": [
            "FaceTime HD Camera",
            ",",
            "OBS Virtual Camera",
            ",",
            "Elgato Virtual Camera"
          ],
          "maxclass": "umenu",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["int", "", ""],
          "parameter_enable": 1,
          "patching_rect": [392, 464, 196, 20],
          "presentation": 1,
          "presentation_rect": [2, 0, 126, 20],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "Available devices",
              "parameter_enum": [
                "FaceTime HD Camera",
                "OBS Virtual Camera",
                "Elgato Virtual Camera"
              ],
              "parameter_longname": "Available devices",
              "parameter_mmax": 2,
              "parameter_modmode": 0,
              "parameter_shortname": "Available devices",
              "parameter_type": 2
            }
          },
          "style": "umenu.live",
          "varname": "Available devices",
          "annotation_name": "Available devices"
        }
      },
      {
        "box": {
          "angle": 270,
          "bgcolor": [0.235, 0.235, 0.235, 1],
          "border": 1,
          "bordercolor": [
            0.09782765023003,
            0.097827613875914,
            0.09782762332443,
            1
          ],
          "id": "obj-55",
          "maxclass": "panel",
          "mode": 0,
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [624, 448, 200, 24],
          "presentation": 1,
          "presentation_rect": [3, 3, 124, 13],
          "proportion": 0.39,
          "rounded": 0,
          "saved_attribute_attributes": {
            "bgfillcolor": {"expression": "themecolor.live_control_text_bg"},
            "bordercolor": {"expression": "themecolor.live_contrast_frame"}
          },
          "style": "umenu.panel.live"
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
          "id": "obj-54",
          "maxclass": "live.tab",
          "multiline": 0,
          "num_lines_patching": 1,
          "num_lines_presentation": 1,
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["", "", "float"],
          "parameter_enable": 1,
          "patching_rect": [72, 320, 100, 20],
          "presentation": 1,
          "presentation_rect": [2, 135, 126, 15],
          "saved_attribute_attributes": {
            "focusbordercolor": {"expression": ""},
            "valueof": {
              "parameter_enum": ["Stop", "Pause", "Play"],
              "parameter_longname": "Play",
              "parameter_mmax": 2,
              "parameter_modmode": 0,
              "parameter_shortname": "Play",
              "parameter_type": 2,
              "parameter_unitstyle": 9,
              "parameter_annotation_name": "Play"
            }
          },
          "spacing_x": 3,
          "spacing_y": 3,
          "varname": "live.tab",
          "annotation_name": "Play"
        }
      },
      {
        "box": {
          "id": "obj-13",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [632, 816, 74, 22],
          "text": "getformatlist"
        }
      },
      {
        "box": {
          "id": "obj-65",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [632, 784, 66, 22],
          "text": "route open"
        }
      },
      {
        "box": {
          "fontface": 0,
          "fontname": "Ableton Sans Medium",
          "fontsize": 12,
          "id": "obj-2",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "int"],
          "patching_rect": [144, 712, 84, 23],
          "text": "t getvdevlist 1"
        }
      },
      {
        "box": {
          "fontname": "Ableton Sans Medium",
          "fontsize": 12,
          "id": "obj-1",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": ["bang"],
          "patching_rect": [144, 672, 60, 23],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "fontname": "Ableton Sans Medium",
          "fontsize": 12,
          "id": "obj-32",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["jit_gl_texture", ""],
          "patching_rect": [312, 720, 340, 23],
          "text": "jit.grab @output_texture 1 @automatic 0 @drawto px-stream"
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
          "patching_rect": [760, 152, 239, 32],
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "id": "obj-6",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [280, 168, 82, 22],
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
          "patching_rect": [1104, 104, 80, 22],
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
          "patching_rect": [1024, 152, 240, 32],
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
          "patching_rect": [760, 40, 31, 22],
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
          "patching_rect": [760, 8, 54, 22],
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
          "patching_rect": [760, 104, 100, 20],
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
          "spacing_x": 3
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
          "id": "obj-3",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [688, 568, 54, 22],
          "text": "deferlow"
        }
      },
      {
        "box": {
          "id": "obj-38",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [40, 448, 22, 22],
          "text": "t 1"
        }
      },
      {
        "box": {
          "id": "obj-36",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [8, 448, 22, 22],
          "text": "t 0"
        }
      },
      {
        "box": {
          "id": "obj-4",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["", "int", "int"],
          "patching_rect": [40, 528, 62, 22],
          "text": "change -1"
        }
      },
      {
        "box": {
          "id": "obj-35",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [152, 448, 104, 22],
          "text": "automatic 0, bang"
        }
      },
      {
        "box": {
          "id": "obj-30",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [120, 488, 71, 22],
          "text": "automatic 1"
        }
      },
      {
        "box": {
          "id": "obj-5",
          "maxclass": "newobj",
          "numinlets": 4,
          "numoutlets": 4,
          "outlettype": ["bang", "bang", "bang", ""],
          "patching_rect": [72, 384, 96, 22],
          "text": "sel 0 1 2"
        }
      },
      {
        "box": {
          "id": "obj-7",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [72, 448, 71, 22],
          "text": "automatic 0"
        }
      },
      {
        "box": {
          "id": "obj-8",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [688, 528, 72, 22],
          "text": "prepend set"
        }
      },
      {
        "box": {
          "id": "obj-31",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [320, 544, 72, 22],
          "text": "prepend set"
        }
      },
      {
        "box": {
          "id": "obj-29",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "bang"],
          "parameter_enable": 1,
          "patching_rect": [616, 520, 50, 22],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_invisible": 1,
              "parameter_linknames": 1,
              "parameter_longname": "formatnum",
              "parameter_modmode": 0,
              "parameter_order": 10,
              "parameter_shortname": "formatnum",
              "parameter_type": 3
            }
          },
          "varname": "formatnum"
        }
      },
      {
        "box": {
          "id": "obj-18",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "bang"],
          "parameter_enable": 1,
          "patching_rect": [392, 504, 50, 22],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_invisible": 1,
              "parameter_linknames": 1,
              "parameter_longname": "vdevnum",
              "parameter_modmode": 0,
              "parameter_shortname": "vdevnum",
              "parameter_type": 3
            }
          },
          "varname": "vdevnum"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12,
          "id": "obj-14",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["", "", ""],
          "patching_rect": [688, 488, 93, 22],
          "restore": [0],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "formatnum[1]",
              "parameter_modmode": 4,
              "parameter_shortname": "formatnum[1]",
              "parameter_type": 1
            }
          },
          "saved_object_attributes": {
            "parameter_enable": 1,
            "parameter_mappable": 0
          },
          "text": "pattr formatnum",
          "varname": "formatnum[1]"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12,
          "id": "obj-16",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "clear"],
          "patching_rect": [616, 336, 112, 22],
          "text": "t l clear"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12,
          "id": "obj-19",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [616, 560, 59, 22],
          "text": "format $1"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12,
          "id": "obj-20",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [616, 400, 96, 22],
          "text": "prepend append"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12,
          "id": "obj-21",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [616, 368, 25, 22],
          "text": "iter"
        }
      },
      {
        "box": {
          "id": "obj-37",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [24, 232, 30, 22],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "obj-34",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [56, 232, 30, 22],
          "text": "2"
        }
      },
      {
        "box": {
          "id": "obj-25",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 3,
          "outlettype": ["bang", "bang", ""],
          "patching_rect": [24, 200, 89, 22],
          "text": "sel 0 1"
        }
      },
      {
        "box": {
          "id": "obj-28",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [360, 400, 37, 22],
          "text": "clear"
        }
      },
      {
        "box": {
          "fontface": 0,
          "fontname": "Arial",
          "fontsize": 12,
          "id": "obj-33",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 3,
          "outlettype": ["", "", ""],
          "patching_rect": [408, 288, 131, 22],
          "text": "route vdevlist formatlist"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12,
          "id": "obj-40",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["", "", ""],
          "patching_rect": [256, 480, 85, 22],
          "restore": [0],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "vdevnum[1]",
              "parameter_modmode": 4,
              "parameter_shortname": "vdevnum[1]",
              "parameter_type": 1
            }
          },
          "saved_object_attributes": {
            "parameter_enable": 1,
            "parameter_mappable": 0
          },
          "text": "pattr vdevnum",
          "varname": "vdevnum[1]"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12,
          "id": "obj-44",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [208, 232, 30, 22],
          "text": "2"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12,
          "id": "obj-45",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [160, 232, 30, 22],
          "text": "1"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12,
          "id": "obj-70",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 2,
          "outlettype": ["float", "float"],
          "patching_rect": [160, 200, 70, 22],
          "text": "split 0. 0.49"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12,
          "id": "obj-46",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "clear"],
          "patching_rect": [408, 336, 112, 22],
          "text": "t l clear"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12,
          "id": "obj-47",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [416, 544, 138, 22],
          "text": "vdevice $1, getformatlist"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12,
          "id": "obj-48",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [408, 400, 96, 22],
          "text": "prepend append"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12,
          "id": "obj-49",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [408, 368, 25, 22],
          "text": "iter"
        }
      },
      {
        "box": {
          "angle": 270,
          "bgcolor": [0.235, 0.235, 0.235, 1],
          "border": 1,
          "bordercolor": [
            0.09782765023003,
            0.097827613875914,
            0.09782762332443,
            1
          ],
          "id": "obj-53",
          "maxclass": "panel",
          "mode": 0,
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [392, 464, 200, 24],
          "presentation": 1,
          "presentation_rect": [3, 17, 124, 13],
          "proportion": 0.39,
          "rounded": 0,
          "saved_attribute_attributes": {
            "bgfillcolor": {"expression": "themecolor.live_control_text_bg"},
            "bordercolor": {"expression": "themecolor.live_contrast_frame"}
          },
          "style": "umenu.panel.live"
        }
      },
      {
        "box": {
          "id": "obj-24",
          "maxclass": "fpic",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": ["jit_matrix"],
          "patching_rect": [384, 8, 100, 50],
          "pic": "PX._cam.svg",
          "presentation": 1,
          "presentation_rect": [8, 48, 112, 64]
        }
      }
    ],
    "lines": [
      {"patchline": {"destination": ["obj-2", 0], "source": ["obj-1", 0]}},
      {"patchline": {"destination": ["obj-10", 1], "source": ["obj-11", 1]}},
      {"patchline": {"destination": ["obj-10", 0], "source": ["obj-11", 0]}},
      {"patchline": {"destination": ["obj-85", 2], "source": ["obj-12", 0]}},
      {"patchline": {"destination": ["obj-32", 0], "source": ["obj-13", 0]}},
      {"patchline": {"destination": ["obj-29", 0], "source": ["obj-14", 1]}},
      {"patchline": {"destination": ["obj-21", 0], "source": ["obj-16", 0]}},
      {"patchline": {"destination": ["obj-22", 0], "source": ["obj-16", 1]}},
      {"patchline": {"destination": ["obj-15", 0], "source": ["obj-17", 0]}},
      {
        "patchline": {
          "destination": ["obj-31", 0],
          "order": 1,
          "source": ["obj-18", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-47", 0],
          "order": 0,
          "source": ["obj-18", 0]
        }
      },
      {"patchline": {"destination": ["obj-32", 0], "source": ["obj-19", 0]}},
      {"patchline": {"destination": ["obj-25", 0], "source": ["obj-2", 1]}},
      {"patchline": {"destination": ["obj-32", 0], "source": ["obj-2", 0]}},
      {"patchline": {"destination": ["obj-22", 0], "source": ["obj-20", 0]}},
      {"patchline": {"destination": ["obj-20", 0], "source": ["obj-21", 0]}},
      {"patchline": {"destination": ["obj-29", 0], "source": ["obj-22", 0]}},
      {"patchline": {"destination": ["obj-28", 0], "source": ["obj-23", 0]}},
      {"patchline": {"destination": ["obj-34", 0], "source": ["obj-25", 1]}},
      {"patchline": {"destination": ["obj-37", 0], "source": ["obj-25", 0]}},
      {"patchline": {"destination": ["obj-39", 0], "source": ["obj-26", 0]}},
      {"patchline": {"destination": ["obj-26", 0], "source": ["obj-27", 1]}},
      {"patchline": {"destination": ["obj-85", 3], "source": ["obj-27", 0]}},
      {
        "patchline": {
          "destination": ["obj-22", 0],
          "order": 0,
          "source": ["obj-28", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-51", 0],
          "order": 1,
          "source": ["obj-28", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-19", 0],
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
      {"patchline": {"destination": ["obj-22", 0], "source": ["obj-3", 0]}},
      {"patchline": {"destination": ["obj-32", 0], "source": ["obj-30", 0]}},
      {"patchline": {"destination": ["obj-12", 1], "source": ["obj-309", 0]}},
      {"patchline": {"destination": ["obj-51", 0], "source": ["obj-31", 0]}},
      {
        "patchline": {
          "destination": ["obj-27", 0],
          "order": 0,
          "source": ["obj-32", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-43", 0],
          "order": 1,
          "source": ["obj-32", 0]
        }
      },
      {"patchline": {"destination": ["obj-65", 0], "source": ["obj-32", 1]}},
      {"patchline": {"destination": ["obj-16", 0], "source": ["obj-33", 1]}},
      {"patchline": {"destination": ["obj-46", 0], "source": ["obj-33", 0]}},
      {"patchline": {"destination": ["obj-54", 0], "source": ["obj-34", 0]}},
      {"patchline": {"destination": ["obj-32", 0], "source": ["obj-35", 0]}},
      {"patchline": {"destination": ["obj-4", 0], "source": ["obj-36", 0]}},
      {"patchline": {"destination": ["obj-85", 0], "source": ["obj-366", 0]}},
      {"patchline": {"destination": ["obj-54", 0], "source": ["obj-37", 0]}},
      {"patchline": {"destination": ["obj-376", 0], "source": ["obj-372", 0]}},
      {"patchline": {"destination": ["obj-366", 0], "source": ["obj-376", 0]}},
      {"patchline": {"destination": ["obj-4", 0], "source": ["obj-38", 0]}},
      {"patchline": {"destination": ["obj-50", 0], "source": ["obj-39", 0]}},
      {"patchline": {"destination": ["obj-32", 0], "source": ["obj-4", 0]}},
      {"patchline": {"destination": ["obj-18", 0], "source": ["obj-40", 1]}},
      {"patchline": {"destination": ["obj-6", 0], "source": ["obj-41", 0]}},
      {"patchline": {"destination": ["obj-54", 0], "source": ["obj-44", 0]}},
      {"patchline": {"destination": ["obj-54", 0], "source": ["obj-45", 0]}},
      {"patchline": {"destination": ["obj-49", 0], "source": ["obj-46", 0]}},
      {"patchline": {"destination": ["obj-51", 0], "source": ["obj-46", 1]}},
      {"patchline": {"destination": ["obj-32", 0], "source": ["obj-47", 0]}},
      {"patchline": {"destination": ["obj-51", 0], "source": ["obj-48", 0]}},
      {"patchline": {"destination": ["obj-48", 0], "source": ["obj-49", 0]}},
      {
        "patchline": {
          "destination": ["obj-30", 0],
          "order": 0,
          "source": ["obj-5", 2]
        }
      },
      {
        "patchline": {
          "destination": ["obj-35", 0],
          "order": 0,
          "source": ["obj-5", 1]
        }
      },
      {
        "patchline": {
          "destination": ["obj-36", 0],
          "order": 1,
          "source": ["obj-5", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-38", 0],
          "order": 1,
          "source": ["obj-5", 2]
        }
      },
      {
        "patchline": {
          "destination": ["obj-38", 0],
          "order": 1,
          "source": ["obj-5", 1]
        }
      },
      {
        "patchline": {
          "destination": ["obj-7", 0],
          "order": 0,
          "source": ["obj-5", 0]
        }
      },
      {"patchline": {"destination": ["obj-85", 4], "source": ["obj-50", 0]}},
      {"patchline": {"destination": ["obj-18", 0], "source": ["obj-51", 0]}},
      {"patchline": {"destination": ["obj-5", 0], "source": ["obj-54", 0]}},
      {"patchline": {"destination": ["obj-13", 0], "source": ["obj-65", 0]}},
      {"patchline": {"destination": ["obj-33", 0], "source": ["obj-65", 1]}},
      {"patchline": {"destination": ["obj-32", 0], "source": ["obj-7", 0]}},
      {"patchline": {"destination": ["obj-44", 0], "source": ["obj-70", 1]}},
      {"patchline": {"destination": ["obj-45", 0], "source": ["obj-70", 0]}},
      {"patchline": {"destination": ["obj-3", 0], "source": ["obj-8", 0]}},
      {"patchline": {"destination": ["obj-12", 0], "source": ["obj-85", 4]}},
      {"patchline": {"destination": ["obj-366", 0], "source": ["obj-85", 2]}},
      {"patchline": {"destination": ["obj-41", 0], "source": ["obj-9", 1]}}
    ],
    "parameters": {
      "obj-14": ["formatnum[1]", "formatnum[1]", 0],
      "obj-18": ["vdevnum", "vdevnum", 0],
      "obj-29": ["formatnum", "formatnum", 10],
      "obj-362": ["Reload", "Reload", 0],
      "obj-366": ["Channel", "Channel", 0],
      "obj-40": ["vdevnum[1]", "vdevnum[1]", 0],
      "obj-51": ["Available devices", "Available devices", 0],
      "obj-54": ["Play", "live.tab", 0],
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
        "name": "PX._cam.svg",
        "bootpath": "~/Documents/GitHub/px-stream/devices",
        "patcherrelativepath": ".",
        "type": "svg",
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
        "name": "jitgltextureinfo.js",
        "bootpath": "C74:/packages/Jitter Tools/javascript",
        "type": "TEXT",
        "implicit": 1
      }
    ],
    "autosave": 0,
    "styles": [
      {
        "name": "umenu.live",
        "default": {
          "bgfillcolor": {
            "angle": 270,
            "autogradient": 0,
            "color": [
              0.074509803921569,
              0.074509803921569,
              0.074509803921569,
              0
            ],
            "color1": [0.376471, 0.384314, 0.4, 1],
            "color2": [0.290196, 0.309804, 0.301961, 1],
            "proportion": 0.39,
            "type": "color"
          },
          "color": [0.690196078431373, 0.866666666666667, 0.92156862745098, 1],
          "elementcolor": [
            0.56078431372549,
            0.56078431372549,
            0.56078431372549,
            1
          ],
          "fontname": ["Ableton Sans Medium Regular"],
          "fontsize": [9.5]
        },
        "parentstyle": "",
        "multi": 0
      },
      {
        "name": "umenu.panel.live",
        "default": {
          "bgfillcolor": {
            "angle": 0,
            "color": [
              0.188235294117647,
              0.188235294117647,
              0.188235294117647,
              1
            ],
            "color1": [
              0.218158140677074,
              0.218158080844553,
              0.218158096479747,
              1
            ],
            "color2": [
              0.218158140677074,
              0.218158080844553,
              0.218158096479747,
              1
            ],
            "dynamiccolor": [
              0.156862745098039,
              0.156862745098039,
              0.156862745098039,
              1,
              "live_control_bg",
              1,
              0.156862745098039,
              0.156862745098039,
              0.156862745098039,
              1,
              "Control Off",
              -1
            ],
            "proportion": 0.39,
            "type": "color"
          },
          "color": [0.090196078431373, 0.090196078431373, 0.090196078431373, 1]
        },
        "parentstyle": "",
        "multi": 0
      }
    ]
  }
}