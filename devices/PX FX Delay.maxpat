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
          "id": "obj-4",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [200, 440, 75, 22],
          "text": "prepend dim"
        }
      },
      {
        "box": {
          "id": "obj-3",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [200, 400, 34, 22],
          "text": "pack"
        }
      },
      {
        "box": {
          "appearance": 3,
          "id": "obj-1",
          "maxclass": "live.dial",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [376, 312, 50, 63],
          "presentation": 1,
          "presentation_rect": [40, 32, 50, 63],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [1],
              "parameter_initial_enable": 1,
              "parameter_longname": "Delay Frames",
              "parameter_mmax": 59,
              "parameter_mmin": 1,
              "parameter_modmode": 4,
              "parameter_shortname": "Delay",
              "parameter_type": 1,
              "parameter_unitstyle": 0,
              "parameter_annotation_name": "Delay Frames"
            }
          },
          "varname": "live.dial",
          "annotation_name": "Delay Frames"
        }
      },
      {
        "box": {
          "id": "obj-20",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 5,
          "outlettype": ["", "", "int", "int", "int"],
          "patching_rect": [200, 360, 84, 22],
          "text": "unpack s s i i i"
        }
      },
      {
        "box": {
          "id": "obj-18",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [704, 184, 80, 22],
          "text": "r ---this_bang"
        }
      },
      {
        "box": {
          "fontsize": 9,
          "id": "obj-166",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [8, 56, 314, 17],
          "text": "Based on https://cycling74.com/tutorials/max-and-opengl-gl-texture-delay"
        }
      },
      {
        "box": {
          "id": "obj-2",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [200, 480, 55, 22],
          "text": "s ---dims"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12,
          "id": "obj-21",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [704, 224, 45, 22],
          "text": "s ---init"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12,
          "id": "obj-7",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [376, 400, 33, 22],
          "text": "+ 0"
        }
      },
      {
        "box": {
          "fontface": 0,
          "fontname": "Arial",
          "fontsize": 12,
          "id": "obj-8",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [376, 440, 38, 22],
          "text": "% 60"
        }
      },
      {
        "box": {
          "fontface": 0,
          "fontname": "Arial",
          "fontsize": 12,
          "id": "obj-13",
          "maxclass": "newobj",
          "numinlets": 5,
          "numoutlets": 4,
          "outlettype": ["int", "", "", "int"],
          "patching_rect": [48, 400, 87, 22],
          "text": "counter 1 0 60"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12,
          "id": "obj-14",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 4,
          "outlettype": ["bang", "", "bang", ""],
          "patching_rect": [8, 360, 51, 22],
          "text": "t b l b l"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12,
          "id": "obj-16",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [48, 440, 33, 22],
          "text": "+ 1"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12,
          "id": "obj-19",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [376, 480, 33, 22],
          "text": "+ 1"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12,
          "id": "obj-24",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [376, 520, 92, 22],
          "text": "target $1, bang"
        }
      },
      {
        "box": {
          "fontface": 0,
          "fontname": "Arial",
          "fontsize": 12,
          "id": "obj-26",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [376, 560, 334, 22],
          "text": "poly~ \"PX FX Delay._vps.texlut\" 60 args jit_gl_texture ---bank"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12,
          "id": "obj-27",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [48, 480, 92, 22],
          "text": "target $1, bang"
        }
      },
      {
        "box": {
          "fontface": 0,
          "fontname": "Arial",
          "fontsize": 12,
          "id": "obj-28",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [48, 520, 306, 22],
          "text": "poly~ \"PX FX Delay._vps.texlut\" 60 args capture ---bank"
        }
      },
      {
        "box": {
          "fontface": 0,
          "fontname": "Arial",
          "fontsize": 12,
          "id": "obj-30",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [528, 264, 323, 22],
          "text": "poly~ \"PX FX Delay._vps.texset\" 60 args px-stream ---bank"
        }
      },
      {
        "box": {
          "fontface": 0,
          "fontname": "Arial",
          "fontsize": 12,
          "id": "obj-82",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["jit_matrix", ""],
          "patching_rect": [24, 560, 335, 22],
          "text": "jit.gl.videoplane px-stream @transform_reset 2 @automatic 0"
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
          "patching_rect": [8, 232, 239, 32],
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "id": "obj-6",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [384, 136, 82, 22],
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
          "patching_rect": [232, 88, 24, 24]
        }
      },
      {
        "box": {
          "id": "obj-15",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [232, 136, 56, 22],
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
          "patching_rect": [280, 184, 80, 22],
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
          "patching_rect": [256, 232, 240, 32],
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
          "patching_rect": [8, 120, 31, 22],
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
          "patching_rect": [8, 88, 54, 22],
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
          "patching_rect": [8, 184, 100, 20],
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
          "patching_rect": [384, 88, 100, 22],
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
          "patching_rect": [112, 88, 62, 22],
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
          "patching_rect": [112, 136, 62, 22],
          "text": "plugout~"
        }
      }
    ],
    "lines": [
      {"patchline": {"destination": ["obj-7", 1], "source": ["obj-1", 0]}},
      {"patchline": {"destination": ["obj-10", 1], "source": ["obj-11", 1]}},
      {"patchline": {"destination": ["obj-10", 0], "source": ["obj-11", 0]}},
      {
        "patchline": {
          "destination": ["obj-14", 0],
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
      {
        "patchline": {
          "destination": ["obj-16", 0],
          "order": 1,
          "source": ["obj-13", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-7", 0],
          "order": 0,
          "source": ["obj-13", 0]
        }
      },
      {"patchline": {"destination": ["obj-13", 0], "source": ["obj-14", 2]}},
      {"patchline": {"destination": ["obj-20", 0], "source": ["obj-14", 3]}},
      {"patchline": {"destination": ["obj-82", 0], "source": ["obj-14", 1]}},
      {"patchline": {"destination": ["obj-82", 0], "source": ["obj-14", 0]}},
      {"patchline": {"destination": ["obj-27", 0], "source": ["obj-16", 0]}},
      {"patchline": {"destination": ["obj-15", 0], "source": ["obj-17", 0]}},
      {"patchline": {"destination": ["obj-21", 0], "source": ["obj-18", 0]}},
      {"patchline": {"destination": ["obj-24", 0], "source": ["obj-19", 0]}},
      {"patchline": {"destination": ["obj-3", 1], "source": ["obj-20", 3]}},
      {"patchline": {"destination": ["obj-3", 0], "source": ["obj-20", 2]}},
      {"patchline": {"destination": ["obj-26", 0], "source": ["obj-24", 0]}},
      {"patchline": {"destination": ["obj-42", 3], "source": ["obj-26", 0]}},
      {"patchline": {"destination": ["obj-28", 0], "source": ["obj-27", 0]}},
      {"patchline": {"destination": ["obj-82", 0], "source": ["obj-28", 0]}},
      {
        "patchline": {
          "destination": ["obj-4", 0],
          "order": 1,
          "source": ["obj-3", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-42", 4],
          "order": 0,
          "source": ["obj-3", 0]
        }
      },
      {"patchline": {"destination": ["obj-12", 1], "source": ["obj-309", 0]}},
      {"patchline": {"destination": ["obj-42", 0], "source": ["obj-366", 0]}},
      {"patchline": {"destination": ["obj-376", 0], "source": ["obj-372", 0]}},
      {"patchline": {"destination": ["obj-366", 0], "source": ["obj-376", 0]}},
      {"patchline": {"destination": ["obj-2", 0], "source": ["obj-4", 0]}},
      {"patchline": {"destination": ["obj-12", 0], "source": ["obj-42", 4]}},
      {"patchline": {"destination": ["obj-366", 0], "source": ["obj-42", 2]}},
      {"patchline": {"destination": ["obj-8", 0], "source": ["obj-7", 0]}},
      {"patchline": {"destination": ["obj-19", 0], "source": ["obj-8", 0]}},
      {"patchline": {"destination": ["obj-6", 0], "source": ["obj-9", 0]}}
    ],
    "parameters": {
      "obj-1": ["Delay Frames", "Frames", 0],
      "obj-366": ["Channel", "Channel", 0],
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
        "name": "PX FX Delay._vps.texlut.maxpat",
        "bootpath": "~/Documents/GitHub/px-stream/devices",
        "patcherrelativepath": ".",
        "type": "JSON",
        "implicit": 1
      },
      {
        "name": "PX FX Delay._vps.texset.maxpat",
        "bootpath": "~/Documents/GitHub/px-stream/devices",
        "patcherrelativepath": ".",
        "type": "JSON",
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
      }
    ],
    "autosave": 0
  }
}