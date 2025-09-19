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
    "boxes": [
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
          "fontsize": 9,
          "id": "obj-166",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [8, 56, 480, 17],
          "text": "Based on https://cycling74.com/articles/audio-routings-a-new-system-for-multi-channel-routing-in-ableton-live"
        }
      },
      {
        "box": {
          "coldcolor": [
            0.972549019607843,
            0.462745098039216,
            0.501960784313725,
            1
          ],
          "display_range": [-70, 24],
          "hotcolor": [
            0.972549019607843,
            0.462745098039216,
            0.501960784313725,
            1
          ],
          "id": "obj-19",
          "maxclass": "live.meter~",
          "numinlets": 1,
          "numoutlets": 2,
          "orientation": 1,
          "outlettype": ["float", "int"],
          "overloadcolor": [
            0.972549019607843,
            0.462745098039216,
            0.501960784313725,
            1
          ],
          "patching_rect": [184, 224, 30, 10],
          "presentation": 1,
          "presentation_rect": [5, 143, 94, 2],
          "saved_attribute_attributes": {
            "coldcolor": {"expression": "themecolor.live_display_handle_two"},
            "hotcolor": {"expression": "themecolor.live_display_handle_two"},
            "overloadcolor": {
              "expression": "themecolor.live_display_handle_two"
            },
            "warmcolor": {"expression": "themecolor.live_display_handle_two"}
          },
          "slidercolor": [
            0.079348079365577,
            0.07934804057877,
            0.079348050547289,
            1
          ],
          "warmcolor": [
            0.972549019607843,
            0.462745098039216,
            0.501960784313725,
            1
          ]
        }
      },
      {
        "box": {
          "coldcolor": [
            0.972549019607843,
            0.462745098039216,
            0.501960784313725,
            1
          ],
          "display_range": [-70, 24],
          "hotcolor": [
            0.972549019607843,
            0.462745098039216,
            0.501960784313725,
            1
          ],
          "id": "obj-29",
          "maxclass": "live.meter~",
          "numinlets": 1,
          "numoutlets": 2,
          "orientation": 1,
          "outlettype": ["float", "int"],
          "overloadcolor": [
            0.972549019607843,
            0.462745098039216,
            0.501960784313725,
            1
          ],
          "patching_rect": [120, 224, 30, 10],
          "presentation": 1,
          "presentation_rect": [5, 139, 94, 2],
          "saved_attribute_attributes": {
            "coldcolor": {"expression": "themecolor.live_display_handle_two"},
            "hotcolor": {"expression": "themecolor.live_display_handle_two"},
            "overloadcolor": {
              "expression": "themecolor.live_display_handle_two"
            },
            "warmcolor": {"expression": "themecolor.live_display_handle_two"}
          },
          "slidercolor": [
            0.079348079365577,
            0.07934804057877,
            0.079348050547289,
            1
          ],
          "warmcolor": [
            0.972549019607843,
            0.462745098039216,
            0.501960784313725,
            1
          ]
        }
      },
      {
        "box": {
          "annotation": "Sets the gain of remote audio.",
          "appearance": 2,
          "id": "obj-4",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [320, 88, 42, 15],
          "presentation": 1,
          "presentation_rect": [3, 75, 98, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_info": "Sets the gain of remote audio.",
              "parameter_initial": [0],
              "parameter_initial_enable": 1,
              "parameter_linknames": 1,
              "parameter_longname": "Receive Gain",
              "parameter_mmax": 24,
              "parameter_mmin": -70,
              "parameter_modmode": 2,
              "parameter_shortname": "Receive Gain",
              "parameter_type": 0,
              "parameter_unitstyle": 4,
              "parameter_annotation_name": "Receive Gain"
            }
          },
          "varname": "Receive Gain",
          "annotation_name": "Receive Gain"
        }
      },
      {
        "box": {
          "id": "obj-28",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [8, 248, 62, 22],
          "text": "live.banks"
        }
      },
      {
        "box": {
          "id": "obj-22",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 2,
          "outlettype": ["signal", "signal"],
          "patching_rect": [96, 136, 89, 22],
          "text": "PX._gain2~"
        }
      },
      {
        "box": {
          "activeslidercolor": [0.972549, 0.462745, 0.501961, 1],
          "annotation": "Sets the gain of audio thru.",
          "appearance": 2,
          "id": "obj-27",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [176, 88, 42, 15],
          "presentation": 1,
          "presentation_rect": [3, 152, 98, 15],
          "saved_attribute_attributes": {
            "activeslidercolor": {"expression": "themecolor.live_value_bar2"},
            "valueof": {
              "parameter_initial": [-70],
              "parameter_initial_enable": 1,
              "parameter_linknames": 1,
              "parameter_longname": "Thru Gain",
              "parameter_mmax": 24,
              "parameter_mmin": -70,
              "parameter_modmode": 2,
              "parameter_shortname": "Thru Gain",
              "parameter_type": 0,
              "parameter_unitstyle": 4,
              "parameter_info": "Sets the gain of audio thru.",
              "parameter_annotation_name": "Thru Gain"
            }
          },
          "varname": "Thru Gain",
          "annotation_name": "Thru Gain"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12,
          "id": "obj-24",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["signal", "signal"],
          "patching_rect": [240, 88, 69, 22],
          "text": "plugin~ 3 4"
        }
      },
      {
        "box": {
          "coldcolor": [
            0.594473705410263,
            0.720560630419913,
            0.928309050695498,
            1
          ],
          "display_range": [-70, 24],
          "hotcolor": [
            0.594473705410263,
            0.720560630419913,
            0.928309050695498,
            1
          ],
          "id": "obj-8",
          "maxclass": "live.meter~",
          "numinlets": 1,
          "numoutlets": 2,
          "orientation": 1,
          "outlettype": ["float", "int"],
          "overloadcolor": [
            0.594473705410263,
            0.720560630419913,
            0.928309050695498,
            1
          ],
          "patching_rect": [304, 248, 30, 10],
          "presentation": 1,
          "presentation_rect": [5, 66, 94, 2],
          "saved_attribute_attributes": {
            "coldcolor": {"expression": "themecolor.live_value_arc"},
            "hotcolor": {"expression": "themecolor.live_value_arc"},
            "overloadcolor": {"expression": "themecolor.live_value_arc"},
            "warmcolor": {"expression": "themecolor.live_value_arc"}
          },
          "slidercolor": [
            0.079348079365577,
            0.07934804057877,
            0.079348050547289,
            1
          ],
          "warmcolor": [
            0.594473705410263,
            0.720560630419913,
            0.928309050695498,
            1
          ]
        }
      },
      {
        "box": {
          "coldcolor": [
            0.594473705410263,
            0.720560630419913,
            0.928309050695498,
            1
          ],
          "display_range": [-70, 24],
          "hotcolor": [
            0.594473705410263,
            0.720560630419913,
            0.928309050695498,
            1
          ],
          "id": "obj-3",
          "maxclass": "live.meter~",
          "numinlets": 1,
          "numoutlets": 2,
          "orientation": 1,
          "outlettype": ["float", "int"],
          "overloadcolor": [
            0.594473705410263,
            0.720560630419913,
            0.928309050695498,
            1
          ],
          "patching_rect": [240, 248, 30, 10],
          "presentation": 1,
          "presentation_rect": [5, 62, 94, 2],
          "saved_attribute_attributes": {
            "coldcolor": {"expression": "themecolor.live_value_arc"},
            "hotcolor": {"expression": "themecolor.live_value_arc"},
            "overloadcolor": {"expression": "themecolor.live_value_arc"},
            "warmcolor": {"expression": "themecolor.live_value_arc"}
          },
          "slidercolor": [
            0.079348079365577,
            0.07934804057877,
            0.079348050547289,
            1
          ],
          "warmcolor": [
            0.594473705410263,
            0.720560630419913,
            0.928309050695498,
            1
          ]
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12,
          "id": "obj-18",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["signal", "signal"],
          "patching_rect": [96, 248, 89, 22],
          "text": "plugout~ 1 2"
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
          "annotation": "Enables/disables audio thru.",
          "appearance": 1,
          "automation": "off",
          "automationon": "on",
          "id": "obj-11",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "parameter_enable": 1,
          "patching_rect": [8, 88, 50, 20],
          "presentation": 1,
          "presentation_rect": [3, 117, 46, 15],
          "saved_attribute_attributes": {
            "activebgoncolor": {
              "expression": "themecolor.live_display_handle_two"
            },
            "valueof": {
              "parameter_enum": ["off", "on"],
              "parameter_initial": [0],
              "parameter_initial_enable": 1,
              "parameter_linknames": 1,
              "parameter_longname": "Thru",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "Thru",
              "parameter_type": 2,
              "parameter_unitstyle": 9,
              "parameter_info": "Enables/disables audio thru.",
              "parameter_annotation_name": "Thru"
            }
          },
          "text": "Thru",
          "texton": "Thru",
          "varname": "Thru",
          "annotation_name": "Thru"
        }
      },
      {
        "box": {
          "id": "obj-13",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [376, 112, 41, 22],
          "text": "$1 50"
        }
      },
      {
        "box": {
          "id": "obj-15",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["signal", "bang"],
          "patching_rect": [376, 136, 36, 22],
          "text": "line~"
        }
      },
      {
        "box": {
          "id": "obj-16",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["signal"],
          "patching_rect": [304, 192, 29, 22],
          "text": "*~"
        }
      },
      {
        "box": {
          "id": "obj-17",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["signal"],
          "patching_rect": [240, 192, 29, 22],
          "text": "*~"
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
          "annotation": "Enables/disables remote audio.",
          "appearance": 1,
          "automation": "off",
          "automationon": "on",
          "id": "obj-10",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "parameter_enable": 1,
          "patching_rect": [376, 88, 77, 18],
          "presentation": 1,
          "presentation_rect": [3, 40, 72, 15],
          "saved_attribute_attributes": {
            "activebgoncolor": {"expression": "themecolor.live_value_arc"},
            "valueof": {
              "parameter_enum": ["off", "on"],
              "parameter_initial": [1],
              "parameter_initial_enable": 1,
              "parameter_longname": "Receive",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "Receive",
              "parameter_type": 2,
              "parameter_unitstyle": 9,
              "parameter_info": "Enables/disables remote audio.",
              "parameter_annotation_name": "Receive"
            }
          },
          "text": "Receive",
          "texton": "Receive",
          "varname": "Receive",
          "annotation_name": "Receive"
        }
      },
      {
        "box": {
          "id": "obj-9",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [8, 112, 41, 22],
          "text": "$1 50"
        }
      },
      {
        "box": {
          "id": "obj-7",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["signal", "bang"],
          "patching_rect": [8, 136, 36, 22],
          "text": "line~"
        }
      },
      {
        "box": {
          "id": "obj-6",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["signal"],
          "patching_rect": [160, 192, 29, 22],
          "text": "*~"
        }
      },
      {
        "box": {
          "id": "obj-1",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["signal"],
          "patching_rect": [96, 192, 29, 22],
          "text": "*~"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 12,
          "id": "obj-2",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["signal", "signal"],
          "patching_rect": [96, 88, 70, 22],
          "text": "plugin~ 1 2"
        }
      },
      {
        "box": {
          "id": "obj-5",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 2,
          "outlettype": ["signal", "signal"],
          "patching_rect": [240, 136, 89, 22],
          "text": "PX._gain2~"
        }
      },
      {
        "box": {
          "annotation": "Selects a remore audio input.",
          "args": ["audio_inputs", 2],
          "bgmode": 0,
          "border": 0,
          "clickthrough": 0,
          "enablehscroll": 0,
          "enablevscroll": 0,
          "id": "obj-107",
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "maxclass": "bpatcher",
          "name": "PX Route Audio._browse_routing.maxpat",
          "numinlets": 0,
          "numoutlets": 0,
          "offset": [0, 0],
          "patching_rect": [360, 232, 120, 29],
          "presentation": 1,
          "presentation_rect": [4, 3, 96, 32],
          "viewvisibility": 1
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "destination": ["obj-18", 0],
          "order": 1,
          "source": ["obj-1", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-29", 0],
          "order": 0,
          "source": ["obj-1", 0]
        }
      },
      {"patchline": {"destination": ["obj-13", 0], "source": ["obj-10", 0]}},
      {"patchline": {"destination": ["obj-9", 0], "source": ["obj-11", 0]}},
      {"patchline": {"destination": ["obj-15", 0], "source": ["obj-13", 0]}},
      {
        "patchline": {
          "destination": ["obj-16", 1],
          "order": 0,
          "source": ["obj-15", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-17", 1],
          "order": 1,
          "source": ["obj-15", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-18", 1],
          "order": 1,
          "source": ["obj-16", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-8", 0],
          "order": 0,
          "source": ["obj-16", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-18", 0],
          "order": 1,
          "source": ["obj-17", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-3", 0],
          "order": 0,
          "source": ["obj-17", 0]
        }
      },
      {"patchline": {"destination": ["obj-22", 1], "source": ["obj-2", 1]}},
      {"patchline": {"destination": ["obj-22", 0], "source": ["obj-2", 0]}},
      {"patchline": {"destination": ["obj-1", 0], "source": ["obj-22", 0]}},
      {"patchline": {"destination": ["obj-6", 0], "source": ["obj-22", 1]}},
      {"patchline": {"destination": ["obj-5", 1], "source": ["obj-24", 1]}},
      {"patchline": {"destination": ["obj-5", 0], "source": ["obj-24", 0]}},
      {"patchline": {"destination": ["obj-22", 2], "source": ["obj-27", 0]}},
      {"patchline": {"destination": ["obj-5", 2], "source": ["obj-4", 0]}},
      {"patchline": {"destination": ["obj-16", 0], "source": ["obj-5", 1]}},
      {"patchline": {"destination": ["obj-17", 0], "source": ["obj-5", 0]}},
      {
        "patchline": {
          "destination": ["obj-18", 1],
          "order": 1,
          "source": ["obj-6", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-19", 0],
          "order": 0,
          "source": ["obj-6", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-1", 1],
          "order": 1,
          "source": ["obj-7", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-6", 1],
          "order": 0,
          "source": ["obj-7", 0]
        }
      },
      {"patchline": {"destination": ["obj-7", 0], "source": ["obj-9", 0]}}
    ],
    "integercoordinates": 1
  }
}