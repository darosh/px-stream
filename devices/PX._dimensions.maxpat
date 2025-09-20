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
    "openrect": [0, 0, 72, 17],
    "openinpresentation": 1,
    "gridsize": [8, 8],
    "integercoordinates": 1,
    "boxes": [
      {
        "box": {
          "comment": "",
          "id": "obj-3",
          "index": 1,
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [32, 184, 30, 30]
        }
      },
      {
        "box": {
          "id": "obj-2",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [32, 136, 76, 22],
          "text": "string.tolist ×"
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
          "outlettype": [""],
          "patching_rect": [32, 48, 30, 30]
        }
      },
      {
        "box": {
          "id": "obj-151",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["", "", "float"],
          "parameter_enable": 1,
          "patching_rect": [32, 96, 100, 15],
          "presentation": 1,
          "presentation_rect": [2, 2, 68, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_enum": [
                "2560×1440",
                "2560×1080",
                "1920×1080",
                "1280×720",
                "720×1280",
                "640×480",
                "320×240",
                "512×512",
                "480×480",
                "256×256"
              ],
              "parameter_initial": [3],
              "parameter_initial_enable": 1,
              "parameter_longname": "Dimensions",
              "parameter_mmax": 9,
              "parameter_modmode": 0,
              "parameter_shortname": "Dimensions",
              "parameter_type": 2,
              "parameter_annotation_name": "Dimensions",
              "parameter_info": "Dimensions of rendered texture in pixels"
            }
          },
          "varname": "Dimensions",
          "annotation_name": "Dimensions",
          "annotation": "Dimensions of rendered texture in pixels"
        }
      }
    ],
    "lines": [
      {"patchline": {"destination": ["obj-151", 0], "source": ["obj-1", 0]}},
      {"patchline": {"destination": ["obj-2", 0], "source": ["obj-151", 1]}},
      {"patchline": {"destination": ["obj-3", 0], "source": ["obj-2", 0]}}
    ],
    "gridsnaponopen": 2
  }
}