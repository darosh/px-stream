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
    "rect": [33, 71, 629, 508],
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
          "id": "obj-18",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [856, 536, 136, 22],
          "presentation_linecount": 2,
          "text": "PX._oklab2rgb.norm.jxs"
        }
      },
      {
        "box": {
          "id": "obj-19",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [712, 536, 136, 22],
          "presentation_linecount": 2,
          "text": "PX._rgb2oklab.norm.jxs"
        }
      },
      {
        "box": {
          "id": "obj-16",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [640, 240, 128, 22],
          "text": "\"Control On (Inactive)\""
        }
      },
      {
        "box": {
          "id": "obj-14",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 3,
          "outlettype": ["bang", "bang", ""],
          "patching_rect": [528, 176, 60, 22],
          "text": "select 2 3"
        }
      },
      {
        "box": {
          "id": "obj-31",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [432, 552, 71, 22],
          "text": "prepend file"
        }
      },
      {
        "box": {
          "id": "obj-29",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [824, 480, 105, 22],
          "text": "PX._oklab2rgb.jxs"
        }
      },
      {
        "box": {
          "id": "obj-30",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [712, 480, 105, 22],
          "text": "PX._rgb2oklab.jxs"
        }
      },
      {
        "box": {
          "id": "obj-27",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [616, 480, 84, 22],
          "text": "cc.rgb2yuv.jxs"
        }
      },
      {
        "box": {
          "id": "obj-28",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [512, 480, 96, 22],
          "text": "cc.rgba2uyvy.jxs"
        }
      },
      {
        "box": {
          "id": "obj-26",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [424, 480, 81, 22],
          "text": "cc.hsl2rgb.jxs"
        }
      },
      {
        "box": {
          "id": "obj-25",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [336, 480, 81, 22],
          "text": "cc.rgb2hsl.jxs"
        }
      },
      {
        "box": {
          "id": "obj-24",
          "maxclass": "newobj",
          "numinlets": 9,
          "numoutlets": 9,
          "outlettype": [
            "bang",
            "bang",
            "bang",
            "bang",
            "bang",
            "bang",
            "bang",
            "bang",
            ""
          ],
          "patching_rect": [456, 424, 120, 22],
          "text": "select 0 1 2 3 4 5 6 7"
        }
      },
      {
        "box": {
          "id": "obj-23",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [656, 320, 116, 22],
          "text": "\"Control On Variant\""
        }
      },
      {
        "box": {
          "id": "obj-22",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [528, 320, 123, 22],
          "text": "\"LCD Handle Variant\""
        }
      },
      {
        "box": {
          "id": "obj-20",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [552, 360, 140, 22],
          "text": "prepend activebgoncolor"
        }
      },
      {
        "box": {
          "id": "obj-13",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 3,
          "outlettype": ["bang", "bang", ""],
          "patching_rect": [528, 280, 60, 22],
          "text": "select 0 1"
        }
      },
      {
        "box": {
          "id": "obj-7",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [528, 240, 30, 22],
          "text": "% 2"
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
          "fontsize": 12,
          "id": "obj-4",
          "maxclass": "live.tab",
          "num_lines_patching": 4,
          "num_lines_presentation": 8,
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["", "", "float"],
          "parameter_enable": 1,
          "patching_rect": [528, 64, 184, 80],
          "presentation": 1,
          "presentation_rect": [2, 2, 126, 147],
          "saved_attribute_attributes": {
            "activebgoncolor": {
              "expression": "themecolor.live_display_handle_two"
            },
            "focusbordercolor": {"expression": ""},
            "valueof": {
              "parameter_enum": [
                "RGB → HSL",
                "HSL → RGB",
                "RGB → UYVY",
                "RGB → YUV",
                "RGB → OKLAB",
                " OKLAB → RGB",
                "RGB → NOKLAB",
                " NOKLAB → RGB"
              ],
              "parameter_longname": "Blur",
              "parameter_mmax": 7,
              "parameter_modmode": 0,
              "parameter_shortname": "Blur",
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
          "filename": "cc.rgb2hsl.jxs",
          "id": "obj-5",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["jit_gl_texture", ""],
          "patching_rect": [280, 224, 219, 22],
          "text": "jit.gl.slab px-stream @file cc.rgb2hsl.jxs",
          "textfile": {
            "filename": "cc.rgb2hsl.jxs",
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
      {"patchline": {"destination": ["obj-22", 0], "source": ["obj-13", 0]}},
      {"patchline": {"destination": ["obj-23", 0], "source": ["obj-13", 1]}},
      {"patchline": {"destination": ["obj-16", 0], "source": ["obj-14", 1]}},
      {"patchline": {"destination": ["obj-16", 0], "source": ["obj-14", 0]}},
      {"patchline": {"destination": ["obj-7", 0], "source": ["obj-14", 2]}},
      {"patchline": {"destination": ["obj-20", 0], "source": ["obj-16", 0]}},
      {"patchline": {"destination": ["obj-15", 0], "source": ["obj-17", 0]}},
      {"patchline": {"destination": ["obj-31", 0], "source": ["obj-18", 0]}},
      {"patchline": {"destination": ["obj-31", 0], "source": ["obj-19", 0]}},
      {"patchline": {"destination": ["obj-1", 0], "source": ["obj-2", 0]}},
      {"patchline": {"destination": ["obj-4", 0], "source": ["obj-20", 0]}},
      {"patchline": {"destination": ["obj-20", 0], "source": ["obj-22", 0]}},
      {"patchline": {"destination": ["obj-20", 0], "source": ["obj-23", 0]}},
      {"patchline": {"destination": ["obj-18", 0], "source": ["obj-24", 7]}},
      {"patchline": {"destination": ["obj-19", 0], "source": ["obj-24", 6]}},
      {"patchline": {"destination": ["obj-25", 0], "source": ["obj-24", 0]}},
      {"patchline": {"destination": ["obj-26", 0], "source": ["obj-24", 1]}},
      {"patchline": {"destination": ["obj-27", 0], "source": ["obj-24", 3]}},
      {"patchline": {"destination": ["obj-28", 0], "source": ["obj-24", 2]}},
      {"patchline": {"destination": ["obj-29", 0], "source": ["obj-24", 5]}},
      {"patchline": {"destination": ["obj-30", 0], "source": ["obj-24", 4]}},
      {"patchline": {"destination": ["obj-31", 0], "source": ["obj-25", 0]}},
      {"patchline": {"destination": ["obj-31", 0], "source": ["obj-26", 0]}},
      {"patchline": {"destination": ["obj-31", 0], "source": ["obj-27", 0]}},
      {"patchline": {"destination": ["obj-31", 0], "source": ["obj-28", 0]}},
      {"patchline": {"destination": ["obj-31", 0], "source": ["obj-29", 0]}},
      {"patchline": {"destination": ["obj-5", 0], "source": ["obj-3", 0]}},
      {"patchline": {"destination": ["obj-8", 0], "source": ["obj-3", 1]}},
      {"patchline": {"destination": ["obj-31", 0], "source": ["obj-30", 0]}},
      {"patchline": {"destination": ["obj-12", 1], "source": ["obj-309", 0]}},
      {"patchline": {"destination": ["obj-5", 0], "source": ["obj-31", 0]}},
      {"patchline": {"destination": ["obj-42", 0], "source": ["obj-366", 0]}},
      {"patchline": {"destination": ["obj-376", 0], "source": ["obj-372", 0]}},
      {"patchline": {"destination": ["obj-366", 0], "source": ["obj-376", 0]}},
      {
        "patchline": {
          "destination": ["obj-14", 0],
          "order": 0,
          "source": ["obj-4", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-24", 0],
          "order": 1,
          "source": ["obj-4", 0]
        }
      },
      {"patchline": {"destination": ["obj-12", 0], "source": ["obj-42", 4]}},
      {"patchline": {"destination": ["obj-366", 0], "source": ["obj-42", 2]}},
      {"patchline": {"destination": ["obj-42", 3], "source": ["obj-5", 0]}},
      {"patchline": {"destination": ["obj-13", 0], "source": ["obj-7", 0]}},
      {"patchline": {"destination": ["obj-2", 1], "source": ["obj-8", 3]}},
      {"patchline": {"destination": ["obj-2", 0], "source": ["obj-8", 2]}},
      {"patchline": {"destination": ["obj-6", 0], "source": ["obj-9", 0]}}
    ],
    "parameters": {
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