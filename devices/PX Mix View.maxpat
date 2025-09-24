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
          "id": "obj-211",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1560, 496, 63, 22],
          "text": "prepend 8"
        }
      },
      {
        "box": {
          "id": "obj-210",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1408, 488, 63, 22],
          "text": "prepend 7"
        }
      },
      {
        "box": {
          "id": "obj-209",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1272, 488, 63, 22],
          "text": "prepend 6"
        }
      },
      {
        "box": {
          "id": "obj-208",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1096, 496, 63, 22],
          "text": "prepend 5"
        }
      },
      {
        "box": {
          "id": "obj-207",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [968, 488, 63, 22],
          "text": "prepend 4"
        }
      },
      {
        "box": {
          "id": "obj-206",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [800, 496, 63, 22],
          "text": "prepend 3"
        }
      },
      {
        "box": {
          "id": "obj-205",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [672, 496, 63, 22],
          "text": "prepend 2"
        }
      },
      {
        "box": {
          "id": "obj-204",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [528, 448, 63, 22],
          "text": "prepend 1"
        }
      },
      {
        "box": {
          "id": "obj-203",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [544, 600, 63, 22],
          "text": "prepend 0"
        }
      },
      {
        "box": {
          "id": "obj-201",
          "maxclass": "newobj",
          "numinlets": 10,
          "numoutlets": 10,
          "outlettype": ["", "", "", "", "", "", "", "", "", ""],
          "patching_rect": [896, 616, 126, 22],
          "text": "route 0 1 2 3 4 5 6 7 8"
        }
      },
      {
        "box": {
          "id": "obj-200",
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
            "rect": [58, 100, 662, 476],
            "gridsize": [15, 15],
            "integercoordinates": 1,
            "boxes": [
              {
                "box": {
                  "id": "obj-16",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [70, 350, 122, 22],
                  "text": "prepend blend_mode"
                }
              },
              {
                "box": {
                  "id": "obj-190",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["int", "int"],
                  "patching_rect": [50, 100, 59, 22],
                  "text": "unpack i i"
                }
              },
              {
                "box": {
                  "id": "obj-176",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "patching_rect": [50, 396, 39, 22],
                  "text": "zl.join"
                }
              },
              {
                "box": {
                  "id": "obj-12",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "patching_rect": [59, 260, 55, 22],
                  "text": "zl.slice 1"
                }
              },
              {
                "box": {
                  "id": "obj-17",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [107, 308, 63, 22],
                  "text": "array.tolist"
                }
              },
              {
                "box": {
                  "id": "obj-18",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [202, 291, 115, 22],
                  "text": "get $1::blend_mode"
                }
              },
              {
                "box": {
                  "id": "obj-19",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "patching_rect": [202, 243, 41, 22],
                  "text": "zl.mth"
                }
              },
              {
                "box": {
                  "id": "obj-27",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": ["bang", "int", "bang"],
                  "patching_rect": [210, 140, 40, 22],
                  "text": "t b i b"
                }
              },
              {
                "box": {
                  "id": "obj-40",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "patching_rect": [202, 211, 38, 22],
                  "text": "zl.reg"
                }
              },
              {
                "box": {
                  "data": {
                    "Add": {
                      "blend_mode": [1, 1],
                      "description": "Pure additive blend, brightens by accumulating light."
                    },
                    "Alpha": {
                      "blend_mode": [6, 7],
                      "description": "Standard transparency blending based on source alpha."
                    },
                    "Alpha add": {
                      "blend_mode": [6, 1],
                      "description": "Additive blending that respects source transparency."
                    },
                    "Alpha saturate": {
                      "blend_mode": [10, 1],
                      "description": "Clamps alpha to avoid oversaturation; useful for particles."
                    },
                    "Alpha mask": {
                      "blend_mode": [6, 0],
                      "description": "Acts like a stencil mask; replaces destination where alpha > 0."
                    },
                    "Darken": {
                      "blend_mode": [2, 5],
                      "description": "Keeps darker portions of source and blends with destination."
                    },
                    "Exclusion": {
                      "blend_mode": [4, 5],
                      "description": "Creates a difference-like effect with softer contrast than 'difference'."
                    },
                    "Ghosting": {
                      "blend_mode": [6, 9],
                      "description": "Creates ghost-like transitions by mixing source alpha with inverse destination alpha."
                    },
                    "Hard contrast": {
                      "blend_mode": [3, 4],
                      "description": "High-contrast blend using source color against inverted destination."
                    },
                    "Lighten": {
                      "blend_mode": [1, 4],
                      "description": "Emphasizes brighter portions of the source."
                    },
                    "Multiply": {
                      "blend_mode": [2, 1],
                      "description": "Darkens by multiplying source and destination colors."
                    },
                    "Overlay": {
                      "blend_mode": [3, 5],
                      "description": "Overlay-like effect that boosts midtone contrast."
                    },
                    "Overlay inverted": {
                      "blend_mode": [7, 2],
                      "description": "Weird inverted overlay effect with transparency artifacts."
                    },
                    "Screen": {
                      "blend_mode": [4, 1],
                      "description": "Brightens by inverting, multiplying, and inverting again."
                    },
                    "Subtract": {
                      "blend_mode": [1, 9],
                      "description": "Inverted add effect, useful for subtractive-like blending."
                    }
                  },
                  "id": "obj-43",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 5,
                  "outlettype": ["dictionary", "", "", "", ""],
                  "patching_rect": [90, 211, 89, 22],
                  "saved_object_attributes": {
                    "embed": 1,
                    "legacy": 0,
                    "parameter_enable": 0,
                    "parameter_mappable": 0
                  },
                  "text": "dict @embed 1"
                }
              },
              {
                "box": {
                  "id": "obj-75",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [90, 163, 50, 22],
                  "text": "getkeys"
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-193",
                  "index": 1,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [50, 40, 30, 30]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-199",
                  "index": 1,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [50, 446, 30, 30]
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "destination": ["obj-17", 0],
                  "source": ["obj-12", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-176", 1],
                  "source": ["obj-16", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-16", 0],
                  "source": ["obj-17", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-199", 0],
                  "source": ["obj-176", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-43", 0],
                  "source": ["obj-18", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-18", 0],
                  "source": ["obj-19", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-176", 0],
                  "source": ["obj-190", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-27", 0],
                  "source": ["obj-190", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-190", 0],
                  "source": ["obj-193", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-19", 1],
                  "source": ["obj-27", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-40", 0],
                  "source": ["obj-27", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-75", 0],
                  "source": ["obj-27", 2]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-19", 0],
                  "source": ["obj-40", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-12", 0],
                  "source": ["obj-43", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-40", 1],
                  "source": ["obj-43", 2]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-43", 0],
                  "source": ["obj-75", 0]
                }
              }
            ]
          },
          "patching_rect": [896, 568, 85, 22],
          "text": "p blend_mode"
        }
      },
      {
        "box": {
          "annotation": "Determines how two layers are blended with each other",
          "annotation_name": "Blend",
          "id": "obj-175",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["", "", "float"],
          "parameter_enable": 1,
          "patching_rect": [544, 576, 88, 15],
          "presentation": 1,
          "presentation_rect": [380.0000004444445, 153, 65, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "Blend",
              "parameter_enum": [
                "Add",
                "Alpha",
                "Alpha add",
                "Alpha saturate",
                "Alpha mask",
                "Darken",
                "Exclusion",
                "Ghosting",
                "Hard contrast",
                "Lighten",
                "Multiply",
                "Overlay",
                "Overlay inverted",
                "Screen",
                "Subtract"
              ],
              "parameter_info": "Determines how two layers are blended with each other",
              "parameter_longname": "Blend",
              "parameter_mmax": 14,
              "parameter_modmode": 0,
              "parameter_shortname": "Blend",
              "parameter_type": 2
            }
          },
          "varname": "live.menu[8]"
        }
      },
      {
        "box": {
          "annotation": "Determines how two layers are blended with each other",
          "annotation_name": "Blend 8",
          "id": "obj-174",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["", "", "float"],
          "parameter_enable": 1,
          "patching_rect": [1560, 472, 88, 15],
          "presentation": 1,
          "presentation_rect": [380.0000004444445, 134, 65, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "Blend 8",
              "parameter_enum": [
                "Add",
                "Alpha",
                "Alpha add",
                "Alpha saturate",
                "Alpha mask",
                "Darken",
                "Exclusion",
                "Ghosting",
                "Hard contrast",
                "Lighten",
                "Multiply",
                "Overlay",
                "Overlay inverted",
                "Screen",
                "Subtract"
              ],
              "parameter_info": "Determines how two layers are blended with each other",
              "parameter_longname": "Blend 8",
              "parameter_mmax": 14,
              "parameter_modmode": 0,
              "parameter_shortname": "Blend 8",
              "parameter_type": 2
            }
          },
          "varname": "live.menu[7]"
        }
      },
      {
        "box": {
          "annotation": "Determines how two layers are blended with each other",
          "annotation_name": "Blend 7",
          "id": "obj-173",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["", "", "float"],
          "parameter_enable": 1,
          "patching_rect": [1408, 464, 88, 15],
          "presentation": 1,
          "presentation_rect": [380.0000004444445, 115, 65, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "Blend 7",
              "parameter_enum": [
                "Add",
                "Alpha",
                "Alpha add",
                "Alpha saturate",
                "Alpha mask",
                "Darken",
                "Exclusion",
                "Ghosting",
                "Hard contrast",
                "Lighten",
                "Multiply",
                "Overlay",
                "Overlay inverted",
                "Screen",
                "Subtract"
              ],
              "parameter_info": "Determines how two layers are blended with each other",
              "parameter_longname": "Blend 7",
              "parameter_mmax": 14,
              "parameter_modmode": 0,
              "parameter_shortname": "Blend 7",
              "parameter_type": 2
            }
          },
          "varname": "live.menu[6]"
        }
      },
      {
        "box": {
          "annotation": "Determines how two layers are blended with each other",
          "annotation_name": "Blend 6",
          "id": "obj-169",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["", "", "float"],
          "parameter_enable": 1,
          "patching_rect": [1272, 464, 88, 15],
          "presentation": 1,
          "presentation_rect": [380.0000004444445, 96, 65, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "Blend 6",
              "parameter_enum": [
                "Add",
                "Alpha",
                "Alpha add",
                "Alpha saturate",
                "Alpha mask",
                "Darken",
                "Exclusion",
                "Ghosting",
                "Hard contrast",
                "Lighten",
                "Multiply",
                "Overlay",
                "Overlay inverted",
                "Screen",
                "Subtract"
              ],
              "parameter_info": "Determines how two layers are blended with each other",
              "parameter_longname": "Blend 6",
              "parameter_mmax": 14,
              "parameter_modmode": 0,
              "parameter_shortname": "Blend 6",
              "parameter_type": 2
            }
          },
          "varname": "live.menu[5]"
        }
      },
      {
        "box": {
          "annotation": "Determines how two layers are blended with each other",
          "annotation_name": "Blend 5",
          "id": "obj-168",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["", "", "float"],
          "parameter_enable": 1,
          "patching_rect": [1096, 472, 88, 15],
          "presentation": 1,
          "presentation_rect": [380.0000004444445, 78, 65, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "Blend 5",
              "parameter_enum": [
                "Add",
                "Alpha",
                "Alpha add",
                "Alpha saturate",
                "Alpha mask",
                "Darken",
                "Exclusion",
                "Ghosting",
                "Hard contrast",
                "Lighten",
                "Multiply",
                "Overlay",
                "Overlay inverted",
                "Screen",
                "Subtract"
              ],
              "parameter_info": "Determines how two layers are blended with each other",
              "parameter_longname": "Blend 5",
              "parameter_mmax": 14,
              "parameter_modmode": 0,
              "parameter_shortname": "Blend 5",
              "parameter_type": 2
            }
          },
          "varname": "live.menu[4]"
        }
      },
      {
        "box": {
          "annotation": "Determines how two layers are blended with each other",
          "annotation_name": "Blend 4",
          "id": "obj-166",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["", "", "float"],
          "parameter_enable": 1,
          "patching_rect": [968, 464, 88, 15],
          "presentation": 1,
          "presentation_rect": [380.0000004444445, 59, 65, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "Blend 4",
              "parameter_enum": [
                "Add",
                "Alpha",
                "Alpha add",
                "Alpha saturate",
                "Alpha mask",
                "Darken",
                "Exclusion",
                "Ghosting",
                "Hard contrast",
                "Lighten",
                "Multiply",
                "Overlay",
                "Overlay inverted",
                "Screen",
                "Subtract"
              ],
              "parameter_info": "Determines how two layers are blended with each other",
              "parameter_longname": "Blend 4",
              "parameter_mmax": 14,
              "parameter_modmode": 0,
              "parameter_shortname": "Blend 4",
              "parameter_type": 2
            }
          },
          "varname": "live.menu[3]"
        }
      },
      {
        "box": {
          "annotation": "Determines how two layers are blended with each other",
          "annotation_name": "Blend 3",
          "id": "obj-162",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["", "", "float"],
          "parameter_enable": 1,
          "patching_rect": [800, 472, 88, 15],
          "presentation": 1,
          "presentation_rect": [380.0000004444445, 40, 65, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "Blend 3",
              "parameter_enum": [
                "Add",
                "Alpha",
                "Alpha add",
                "Alpha saturate",
                "Alpha mask",
                "Darken",
                "Exclusion",
                "Ghosting",
                "Hard contrast",
                "Lighten",
                "Multiply",
                "Overlay",
                "Overlay inverted",
                "Screen",
                "Subtract"
              ],
              "parameter_info": "Determines how two layers are blended with each other",
              "parameter_longname": "Blend 3",
              "parameter_mmax": 14,
              "parameter_modmode": 0,
              "parameter_shortname": "Blend 3",
              "parameter_type": 2
            }
          },
          "varname": "live.menu[2]"
        }
      },
      {
        "box": {
          "annotation": "Determines how two layers are blended with each other",
          "annotation_name": "Blend 2",
          "id": "obj-151",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["", "", "float"],
          "parameter_enable": 1,
          "patching_rect": [672, 472, 88, 15],
          "presentation": 1,
          "presentation_rect": [380.0000004444445, 21, 65, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "Blend 2",
              "parameter_enum": [
                "Add",
                "Alpha",
                "Alpha add",
                "Alpha saturate",
                "Alpha mask",
                "Darken",
                "Exclusion",
                "Ghosting",
                "Hard contrast",
                "Lighten",
                "Multiply",
                "Overlay",
                "Overlay inverted",
                "Screen",
                "Subtract"
              ],
              "parameter_info": "Determines how two layers are blended with each other",
              "parameter_longname": "Blend 2",
              "parameter_mmax": 14,
              "parameter_modmode": 0,
              "parameter_shortname": "Blend 2",
              "parameter_type": 2
            }
          },
          "varname": "live.menu[1]"
        }
      },
      {
        "box": {
          "annotation": "Determines how two layers are blended with each other",
          "id": "obj-60",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["", "", "float"],
          "parameter_enable": 1,
          "patching_rect": [528, 424, 88, 15],
          "presentation": 1,
          "presentation_rect": [380.0000004444445, 2, 65, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_enum": [
                "Add",
                "Alpha",
                "Alpha add",
                "Alpha saturate",
                "Alpha mask",
                "Darken",
                "Exclusion",
                "Ghosting",
                "Hard contrast",
                "Lighten",
                "Multiply",
                "Overlay",
                "Overlay inverted",
                "Screen",
                "Subtract"
              ],
              "parameter_info": "Determines how two layers are blended with each other",
              "parameter_longname": "Blend 1",
              "parameter_mmax": 14,
              "parameter_modmode": 0,
              "parameter_shortname": "Blend 1",
              "parameter_type": 2,
              "parameter_annotation_name": "Blend 1"
            }
          },
          "varname": "live.menu",
          "annotation_name": "Blend 1"
        }
      },
      {
        "box": {
          "bgmode": 0,
          "border": 0,
          "clickthrough": 0,
          "enablehscroll": 0,
          "enablevscroll": 0,
          "id": "obj-146",
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "maxclass": "bpatcher",
          "name": "PX._dimensions.maxpat",
          "numinlets": 1,
          "numoutlets": 1,
          "offset": [0, 0],
          "outlettype": [""],
          "patching_rect": [352, 416, 100, 15],
          "presentation": 1,
          "presentation_rect": [447.0000044444448, 151, 72, 17],
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "id": "obj-165",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [320, 1272, 32, 22],
          "text": "gate"
        }
      },
      {
        "box": {
          "id": "obj-164",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [320, 1216, 62, 22],
          "text": "r px_bang"
        }
      },
      {
        "box": {
          "fontname": "Arial",
          "fontsize": 13,
          "id": "obj-202",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["bang", "erase"],
          "patching_rect": [320, 1328, 63, 23],
          "text": "t b erase"
        }
      },
      {
        "box": {
          "id": "obj-163",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["bang", ""],
          "patching_rect": [424, 1408, 288, 22],
          "text": "jit.gl.render @drawto ---px-win @erase_color 0 0 0 1"
        }
      },
      {
        "box": {
          "id": "obj-147",
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
          "patching_rect": [496, 104, 63, 22],
          "text": "p <VIEW>"
        }
      },
      {
        "box": {
          "id": "obj-172",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [352, 832, 22, 22],
          "text": "t 0"
        }
      },
      {
        "box": {
          "id": "obj-171",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [312, 832, 22, 22],
          "text": "t 1"
        }
      },
      {
        "box": {
          "id": "obj-170",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [312, 880, 79, 22],
          "text": "s ---key_gate"
        }
      },
      {
        "box": {
          "id": "obj-161",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [1256, 1096, 22, 22],
          "text": "t 0"
        }
      },
      {
        "box": {
          "id": "obj-160",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["int", "int"],
          "patching_rect": [1320, 1096, 30, 22],
          "text": "t i i"
        }
      },
      {
        "box": {
          "id": "obj-159",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 8,
          "outlettype": ["", "", "", "", "", "", "", ""],
          "patching_rect": [1320, 1256, 280, 22],
          "text": "gate 8"
        }
      },
      {
        "box": {
          "id": "obj-158",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["bang", ""],
          "patching_rect": [1440, 1120, 30, 22],
          "text": "t b l"
        }
      },
      {
        "box": {
          "id": "obj-72",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [1392, 1160, 30, 22],
          "text": "int"
        }
      },
      {
        "box": {
          "id": "obj-106",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [1392, 1192, 84, 22],
          "text": "zl.join"
        }
      },
      {
        "box": {
          "id": "obj-64",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [1400, 1344, 56, 22],
          "text": "s px_mix"
        }
      },
      {
        "box": {
          "id": "obj-148",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["bang", "bang"],
          "patching_rect": [664, 1112, 65, 22],
          "text": "onebang 1"
        }
      },
      {
        "box": {
          "id": "obj-143",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["bang", ""],
          "patching_rect": [664, 1072, 50, 22],
          "text": "select 0"
        }
      },
      {
        "box": {
          "id": "obj-62",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [424, 192, 70, 22],
          "text": "loadmess 1"
        }
      },
      {
        "box": {
          "id": "obj-59",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["jit_matrix", ""],
          "patching_rect": [424, 1328, 357, 22],
          "text": "jit.gl.videoplane ---px-win @preserve_aspect 1 @drawto ---px-win"
        }
      },
      {
        "box": {
          "annotation": "PX Stream",
          "hint": "PX Stream",
          "id": "obj-73",
          "ignoreclick": 1,
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["bang", ""],
          "patching_rect": [424, 1464, 273, 22],
          "text": "jit.window ---px-win @title \"PX Stream\" @visible 0"
        }
      },
      {
        "box": {
          "id": "obj-71",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [736, 1016, 70, 22],
          "text": "loadmess 1"
        }
      },
      {
        "box": {
          "id": "obj-70",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [696, 880, 37, 22],
          "text": "close"
        }
      },
      {
        "box": {
          "id": "obj-69",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["bang", ""],
          "patching_rect": [696, 848, 50, 22],
          "text": "select 1"
        }
      },
      {
        "box": {
          "id": "obj-68",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [600, 1024, 33, 22],
          "text": "== 0"
        }
      },
      {
        "box": {
          "id": "obj-67",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [600, 1056, 32, 22],
          "text": "gate"
        }
      },
      {
        "box": {
          "id": "obj-66",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [424, 1216, 32, 22],
          "text": "gate"
        }
      },
      {
        "box": {
          "id": "obj-65",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [512, 1216, 133, 22],
          "text": "visible $1, fullscreen $1"
        }
      },
      {
        "box": {
          "id": "obj-63",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [632, 976, 57, 22],
          "text": "r ---go_fs"
        }
      },
      {
        "box": {
          "id": "obj-61",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "bang"],
          "patching_rect": [520, 896, 31, 22],
          "text": "t s b"
        }
      },
      {
        "box": {
          "bgmode": 0,
          "border": 0,
          "clickthrough": 0,
          "enablehscroll": 0,
          "enablevscroll": 0,
          "id": "obj-58",
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "maxclass": "bpatcher",
          "name": "PX Mix View._layer.maxpat",
          "numinlets": 3,
          "numoutlets": 1,
          "offset": [0, 0],
          "outlettype": ["jit_gl_texture"],
          "patching_rect": [1592, 304, 64, 16],
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "bgmode": 0,
          "border": 0,
          "clickthrough": 0,
          "enablehscroll": 0,
          "enablevscroll": 0,
          "id": "obj-39",
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "maxclass": "bpatcher",
          "name": "PX Mix View._layer.maxpat",
          "numinlets": 3,
          "numoutlets": 1,
          "offset": [0, 0],
          "outlettype": ["jit_gl_texture"],
          "patching_rect": [1432, 304, 64, 16],
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "bgmode": 0,
          "border": 0,
          "clickthrough": 0,
          "enablehscroll": 0,
          "enablevscroll": 0,
          "id": "obj-38",
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "maxclass": "bpatcher",
          "name": "PX Mix View._layer.maxpat",
          "numinlets": 3,
          "numoutlets": 1,
          "offset": [0, 0],
          "outlettype": ["jit_gl_texture"],
          "patching_rect": [1264, 304, 64, 16],
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "bgmode": 0,
          "border": 0,
          "clickthrough": 0,
          "enablehscroll": 0,
          "enablevscroll": 0,
          "id": "obj-28",
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "maxclass": "bpatcher",
          "name": "PX Mix View._layer.maxpat",
          "numinlets": 3,
          "numoutlets": 1,
          "offset": [0, 0],
          "outlettype": ["jit_gl_texture"],
          "patching_rect": [1104, 304, 64, 16],
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "bgmode": 0,
          "border": 0,
          "clickthrough": 0,
          "enablehscroll": 0,
          "enablevscroll": 0,
          "id": "obj-26",
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "maxclass": "bpatcher",
          "name": "PX Mix View._layer.maxpat",
          "numinlets": 3,
          "numoutlets": 1,
          "offset": [0, 0],
          "outlettype": ["jit_gl_texture"],
          "patching_rect": [928, 304, 64, 16],
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "bgmode": 0,
          "border": 0,
          "clickthrough": 0,
          "enablehscroll": 0,
          "enablevscroll": 0,
          "id": "obj-214",
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "maxclass": "bpatcher",
          "name": "PX Mix View._layer.maxpat",
          "numinlets": 3,
          "numoutlets": 1,
          "offset": [0, 0],
          "outlettype": ["jit_gl_texture"],
          "patching_rect": [760, 304, 64, 16],
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "bgmode": 0,
          "border": 0,
          "clickthrough": 0,
          "enablehscroll": 0,
          "enablevscroll": 0,
          "id": "obj-213",
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "maxclass": "bpatcher",
          "name": "PX Mix View._layer.maxpat",
          "numinlets": 3,
          "numoutlets": 1,
          "offset": [0, 0],
          "outlettype": ["jit_gl_texture"],
          "patching_rect": [616, 304, 64, 16],
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "bgmode": 0,
          "border": 0,
          "clickthrough": 0,
          "enablehscroll": 0,
          "enablevscroll": 0,
          "id": "obj-191",
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "maxclass": "bpatcher",
          "name": "PX Mix View._layer.maxpat",
          "numinlets": 3,
          "numoutlets": 1,
          "offset": [0, 0],
          "outlettype": ["jit_gl_texture"],
          "patching_rect": [464, 296, 64, 16],
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "id": "obj-189",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1680, 304, 63, 22],
          "text": "prepend 8"
        }
      },
      {
        "box": {
          "id": "obj-188",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1512, 304, 63, 22],
          "text": "prepend 7"
        }
      },
      {
        "box": {
          "id": "obj-187",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1352, 304, 63, 22],
          "text": "prepend 6"
        }
      },
      {
        "box": {
          "id": "obj-186",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1184, 304, 63, 22],
          "text": "prepend 5"
        }
      },
      {
        "box": {
          "id": "obj-185",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1016, 304, 63, 22],
          "text": "prepend 4"
        }
      },
      {
        "box": {
          "id": "obj-184",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [848, 304, 63, 22],
          "text": "prepend 3"
        }
      },
      {
        "box": {
          "id": "obj-183",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [688, 304, 63, 22],
          "text": "prepend 2"
        }
      },
      {
        "box": {
          "id": "obj-181",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [544, 296, 63, 22],
          "text": "prepend 1"
        }
      },
      {
        "box": {
          "id": "obj-149",
          "maxclass": "newobj",
          "numinlets": 9,
          "numoutlets": 9,
          "outlettype": ["", "", "", "", "", "", "", "", ""],
          "patching_rect": [632, 136, 116, 22],
          "text": "route 1 2 3 4 5 6 7 8"
        }
      },
      {
        "box": {
          "id": "obj-22",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [632, 88, 100, 22],
          "text": "r ---from_popup"
        }
      },
      {
        "box": {
          "id": "obj-57",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [976, 360, 100, 22],
          "text": "s ---to_popup"
        }
      },
      {
        "box": {
          "handoff": "",
          "hltcolor": [0, 0, 0, 0],
          "id": "obj-182",
          "maxclass": "ubutton",
          "numinlets": 1,
          "numoutlets": 4,
          "outlettype": ["bang", "bang", "", "int"],
          "parameter_enable": 0,
          "patching_rect": [24, 272, 104, 72],
          "presentation": 1,
          "presentation_rect": [450.0000142222234, 85, 70, 48]
        }
      },
      {
        "box": {
          "id": "obj-180",
          "linecount": 2,
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [24, 360, 307, 35],
          "text": ";\rmax launchbrowser https://github.com/darosh/px-stream"
        }
      },
      {
        "box": {
          "id": "obj-179",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [440, 1008, 32, 22],
          "text": "+ 80"
        }
      },
      {
        "box": {
          "id": "obj-178",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [400, 1008, 32, 22],
          "text": "+ 80"
        }
      },
      {
        "box": {
          "id": "obj-177",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [424, 1056, 34, 22],
          "text": "pack"
        }
      },
      {
        "box": {
          "id": "obj-42",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["float"],
          "patching_rect": [440, 976, 30, 22],
          "text": "/ 2."
        }
      },
      {
        "box": {
          "id": "obj-41",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["float"],
          "patching_rect": [400, 976, 30, 22],
          "text": "/ 2."
        }
      },
      {
        "box": {
          "id": "obj-35",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["int", "int"],
          "patching_rect": [400, 936, 47, 22],
          "text": "unpack"
        }
      },
      {
        "box": {
          "id": "obj-34",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [400, 1152, 215, 22],
          "text": "window size 80 80 $1 $2, window exec"
        }
      },
      {
        "box": {
          "id": "obj-24",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [400, 896, 59, 22],
          "text": "route dim"
        }
      },
      {
        "box": {
          "annotation_name": "Mix 8",
          "appearance": 2,
          "id": "obj-157",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [1360, 248, 44, 15],
          "presentation": 1,
          "presentation_rect": [332.0000142222234, 134, 44, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "Mix 8",
              "parameter_initial": [100],
              "parameter_initial_enable": 1,
              "parameter_longname": "Mix 8",
              "parameter_mmax": 100,
              "parameter_modmode": 3,
              "parameter_shortname": "Mix 8",
              "parameter_steps": 1001,
              "parameter_type": 0,
              "parameter_unitstyle": 5
            }
          },
          "varname": "live.numbox[7]"
        }
      },
      {
        "box": {
          "annotation_name": "Mix 7",
          "appearance": 2,
          "id": "obj-156",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [1216, 248, 44, 15],
          "presentation": 1,
          "presentation_rect": [332.0000142222234, 115, 44, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "Mix 7",
              "parameter_initial": [100],
              "parameter_initial_enable": 1,
              "parameter_longname": "Mix 7",
              "parameter_mmax": 100,
              "parameter_modmode": 3,
              "parameter_shortname": "Mix 7",
              "parameter_steps": 1001,
              "parameter_type": 0,
              "parameter_unitstyle": 5
            }
          },
          "varname": "live.numbox[6]"
        }
      },
      {
        "box": {
          "annotation_name": "Mix 6",
          "appearance": 2,
          "id": "obj-155",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [1104, 248, 44, 15],
          "presentation": 1,
          "presentation_rect": [332.0000142222234, 96, 44, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "Mix 6",
              "parameter_initial": [100],
              "parameter_initial_enable": 1,
              "parameter_longname": "Mix 6",
              "parameter_mmax": 100,
              "parameter_modmode": 3,
              "parameter_shortname": "Mix 6",
              "parameter_steps": 1001,
              "parameter_type": 0,
              "parameter_unitstyle": 5
            }
          },
          "varname": "live.numbox[5]"
        }
      },
      {
        "box": {
          "annotation_name": "Mix 5",
          "appearance": 2,
          "id": "obj-154",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [960, 248, 44, 15],
          "presentation": 1,
          "presentation_rect": [332.0000142222234, 78, 44, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "Mix 5",
              "parameter_initial": [100],
              "parameter_initial_enable": 1,
              "parameter_longname": "Mix 5",
              "parameter_mmax": 100,
              "parameter_modmode": 3,
              "parameter_shortname": "Mix 5",
              "parameter_steps": 1001,
              "parameter_type": 0,
              "parameter_unitstyle": 5
            }
          },
          "varname": "live.numbox[4]"
        }
      },
      {
        "box": {
          "annotation_name": "Mix 4",
          "appearance": 2,
          "id": "obj-153",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [856, 248, 44, 15],
          "presentation": 1,
          "presentation_rect": [332.0000142222234, 59, 44, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "Mix 4",
              "parameter_initial": [100],
              "parameter_initial_enable": 1,
              "parameter_longname": "Mix 4",
              "parameter_mmax": 100,
              "parameter_modmode": 3,
              "parameter_shortname": "Mix 4",
              "parameter_steps": 1001,
              "parameter_type": 0,
              "parameter_unitstyle": 5
            }
          },
          "varname": "live.numbox[3]"
        }
      },
      {
        "box": {
          "annotation_name": "Mix 3",
          "appearance": 2,
          "id": "obj-152",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [712, 248, 44, 15],
          "presentation": 1,
          "presentation_rect": [332.0000142222234, 40, 44, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "Mix 3",
              "parameter_initial": [100],
              "parameter_initial_enable": 1,
              "parameter_longname": "Mix 3",
              "parameter_mmax": 100,
              "parameter_modmode": 3,
              "parameter_shortname": "Mix 3",
              "parameter_steps": 1001,
              "parameter_type": 0,
              "parameter_unitstyle": 5
            }
          },
          "varname": "live.numbox[2]"
        }
      },
      {
        "box": {
          "annotation_name": "Mix 2",
          "appearance": 2,
          "id": "obj-150",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [600, 248, 44, 15],
          "presentation": 1,
          "presentation_rect": [332.0000142222234, 21, 44, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "Mix 2",
              "parameter_initial": [100],
              "parameter_initial_enable": 1,
              "parameter_longname": "Mix 2",
              "parameter_mmax": 100,
              "parameter_modmode": 3,
              "parameter_shortname": "Mix 2",
              "parameter_steps": 1001,
              "parameter_type": 0,
              "parameter_unitstyle": 5
            }
          },
          "varname": "live.numbox[1]"
        }
      },
      {
        "box": {
          "annotation_name": "Mix 1",
          "appearance": 2,
          "id": "obj-144",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "float"],
          "parameter_enable": 1,
          "patching_rect": [472, 232, 44, 15],
          "presentation": 1,
          "presentation_rect": [332.0000142222234, 2, 44, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "Mix 1",
              "parameter_initial": [100],
              "parameter_initial_enable": 1,
              "parameter_longname": "Mix 1",
              "parameter_mmax": 100,
              "parameter_modmode": 3,
              "parameter_shortname": "Mix 1",
              "parameter_steps": 1001,
              "parameter_type": 0,
              "parameter_unitstyle": 5
            }
          },
          "varname": "live.numbox"
        }
      },
      {
        "box": {
          "id": "obj-141",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [352, 320, 54, 22],
          "text": "r ---reset"
        }
      },
      {
        "box": {
          "id": "obj-140",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [352, 368, 31, 22],
          "text": "int 3"
        }
      },
      {
        "box": {
          "id": "obj-135",
          "maxclass": "fpic",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": ["jit_matrix"],
          "patching_rect": [208, 112, 100, 50],
          "pic": "PX Mix View._logo.svg",
          "presentation": 1,
          "presentation_rect": [450.0000142222234, 85, 70, 48]
        }
      },
      {
        "box": {
          "id": "obj-136",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1496, 960, 57, 22],
          "text": "tosymbol"
        }
      },
      {
        "box": {
          "id": "obj-134",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1208, 1048, 460, 22],
          "text": "jit.gl.syphonserver px-stream @servername \"PX Stream 1\" @enable 0 @automatic 0"
        }
      },
      {
        "box": {
          "id": "obj-145",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1208, 944, 123, 22],
          "text": "enable 0, automatic 0"
        }
      },
      {
        "box": {
          "id": "obj-142",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1352, 944, 123, 22],
          "text": "enable 1, automatic 1"
        }
      },
      {
        "box": {
          "id": "obj-139",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["bang", "int"],
          "patching_rect": [1496, 896, 30, 22],
          "text": "t b i"
        }
      },
      {
        "box": {
          "id": "obj-137",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1496, 928, 132, 22],
          "text": "sprintf \"PX Stream %d\""
        }
      },
      {
        "box": {
          "id": "obj-138",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1496, 992, 89, 22],
          "text": "servername $1"
        }
      },
      {
        "box": {
          "id": "obj-133",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 3,
          "outlettype": ["", "", ""],
          "patching_rect": [1112, 888, 56, 22],
          "text": "route 0 1"
        }
      },
      {
        "box": {
          "id": "obj-132",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1688, 840, 59, 22],
          "text": "append 9"
        }
      },
      {
        "box": {
          "id": "obj-131",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1616, 840, 59, 22],
          "text": "append 8"
        }
      },
      {
        "box": {
          "id": "obj-130",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1544, 840, 59, 22],
          "text": "append 7"
        }
      },
      {
        "box": {
          "id": "obj-129",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1472, 840, 59, 22],
          "text": "append 6"
        }
      },
      {
        "box": {
          "id": "obj-128",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1400, 840, 59, 22],
          "text": "append 5"
        }
      },
      {
        "box": {
          "id": "obj-127",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1328, 840, 59, 22],
          "text": "append 4"
        }
      },
      {
        "box": {
          "id": "obj-126",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1256, 840, 59, 22],
          "text": "append 3"
        }
      },
      {
        "box": {
          "id": "obj-125",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1184, 840, 59, 22],
          "text": "append 2"
        }
      },
      {
        "box": {
          "id": "obj-124",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1112, 840, 59, 22],
          "text": "append 1"
        }
      },
      {
        "box": {
          "id": "obj-123",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1560, 752, 35, 22],
          "text": "set 0"
        }
      },
      {
        "box": {
          "id": "obj-122",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1504, 752, 35, 22],
          "text": "set 0"
        }
      },
      {
        "box": {
          "id": "obj-121",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1448, 752, 35, 22],
          "text": "set 0"
        }
      },
      {
        "box": {
          "id": "obj-120",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1392, 752, 35, 22],
          "text": "set 0"
        }
      },
      {
        "box": {
          "id": "obj-119",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1336, 752, 35, 22],
          "text": "set 0"
        }
      },
      {
        "box": {
          "id": "obj-118",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1280, 752, 35, 22],
          "text": "set 0"
        }
      },
      {
        "box": {
          "id": "obj-117",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1224, 752, 35, 22],
          "text": "set 0"
        }
      },
      {
        "box": {
          "id": "obj-116",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1168, 752, 35, 22],
          "text": "set 0"
        }
      },
      {
        "box": {
          "id": "obj-113",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1112, 752, 35, 22],
          "text": "set 0"
        }
      },
      {
        "box": {
          "id": "obj-115",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": ["bang"],
          "patching_rect": [624, 840, 58, 22],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "id": "obj-114",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [520, 872, 35, 22],
          "text": "open"
        }
      },
      {
        "box": {
          "id": "obj-111",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [488, 992, 51, 22],
          "text": "pcontrol"
        }
      },
      {
        "box": {
          "id": "obj-109",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [520, 840, 75, 22],
          "text": "route mouse"
        }
      },
      {
        "box": {
          "id": "obj-108",
          "linecount": 3,
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [584, 920, 210, 49],
          "text": "window flags float, window flags grow, window flags noscroll, window flags close, window title, window exec"
        }
      },
      {
        "box": {
          "id": "obj-107",
          "maxclass": "newobj",
          "numinlets": 4,
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
            "rect": [78, 78, 640, 361],
            "openinpresentation": 1,
            "gridsize": [8, 8],
            "gridsnaponopen": 2,
            "objectsnaponopen": 0,
            "enablehscroll": 0,
            "enablevscroll": 0,
            "integercoordinates": 1,
            "title": "PX Stream",
            "boxes": [
              {
                "box": {
                  "id": "obj-212",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [360, 664, 30, 22],
                  "text": "> 0"
                }
              },
              {
                "box": {
                  "id": "obj-184",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["int", "bang"],
                  "patching_rect": [328, 512, 30, 22],
                  "text": "t i b"
                }
              },
              {
                "box": {
                  "id": "obj-183",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["bang", "int"],
                  "patching_rect": [392, 512, 30, 22],
                  "text": "t b i"
                }
              },
              {
                "box": {
                  "id": "obj-150",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [360, 600, 30, 22],
                  "text": "+ 0"
                }
              },
              {
                "box": {
                  "id": "obj-148",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [392, 552, 30, 22],
                  "text": "int"
                }
              },
              {
                "box": {
                  "id": "obj-147",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [344, 552, 30, 22],
                  "text": "int"
                }
              },
              {
                "box": {
                  "id": "obj-173",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [448, 480, 57, 22],
                  "text": "r ---go_fs"
                }
              },
              {
                "box": {
                  "id": "obj-169",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [312, 480, 77, 22],
                  "text": "r ---key_gate"
                }
              },
              {
                "box": {
                  "id": "obj-168",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [136, 584, 32, 22],
                  "text": "gate"
                }
              },
              {
                "box": {
                  "id": "obj-139",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [48, 696, 60, 22],
                  "text": "print ESC"
                }
              },
              {
                "box": {
                  "id": "obj-224",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [136, 696, 59, 22],
                  "text": "s ---go_fs"
                }
              },
              {
                "box": {
                  "id": "obj-215",
                  "maxclass": "button",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": ["bang"],
                  "parameter_enable": 0,
                  "patching_rect": [232, 624, 24, 24]
                }
              },
              {
                "box": {
                  "annotation_name": "Fullscreen",
                  "id": "obj-142",
                  "maxclass": "live.text",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "parameter_enable": 1,
                  "patching_rect": [136, 640, 44, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_annotation_name": "Fullscreen",
                      "parameter_enum": ["val1", "val2"],
                      "parameter_invisible": 2,
                      "parameter_longname": "Fullscreen",
                      "parameter_mmax": 1,
                      "parameter_modmode": 0,
                      "parameter_shortname": "Fullscreen",
                      "parameter_type": 2
                    }
                  },
                  "varname": "live.text[19]"
                }
              },
              {
                "box": {
                  "id": "obj-145",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["bang", ""],
                  "patching_rect": [136, 528, 57, 22],
                  "text": "select 27"
                }
              },
              {
                "box": {
                  "id": "obj-146",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 4,
                  "outlettype": ["int", "int", "int", "int"],
                  "patching_rect": [136, 480, 51, 22],
                  "text": "key"
                }
              },
              {
                "box": {
                  "id": "obj-172",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [272, 512, 22, 22],
                  "text": "t 0"
                }
              },
              {
                "box": {
                  "id": "obj-136",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [224, 544, 79, 22],
                  "text": "s ---key_gate"
                }
              },
              {
                "box": {
                  "id": "obj-108",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": ["bang"],
                  "patching_rect": [224, 480, 63, 22],
                  "text": "closebang"
                }
              },
              {
                "box": {
                  "id": "obj-59",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [2344, 448, 167, 22],
                  "text": "print TOO_WIDE_RECEIVED"
                }
              },
              {
                "box": {
                  "id": "obj-57",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [1320, 360, 107, 22],
                  "text": "print PRES_RECT"
                }
              },
              {
                "box": {
                  "id": "obj-55",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [1080, 480, 104, 22],
                  "text": "print IS_OPENED"
                }
              },
              {
                "box": {
                  "id": "obj-230",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["bang", ""],
                  "patching_rect": [1128, 424, 50, 22],
                  "text": "select 1"
                }
              },
              {
                "box": {
                  "id": "obj-229",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "patching_rect": [1152, 448, 38, 22],
                  "text": "zl.reg"
                }
              },
              {
                "box": {
                  "id": "obj-227",
                  "maxclass": "newobj",
                  "numinlets": 1,
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
                    "rect": [0, 0, 661.5, 475.20000000000005],
                    "gridsize": [8, 8],
                    "gridsnaponopen": 2,
                    "integercoordinates": 1,
                    "boxes": [
                      {
                        "box": {
                          "id": "obj-172",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [48, 416, 65, 22],
                          "text": "s ---to_this"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-173",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 1,
                          "outlettype": [""],
                          "patching_rect": [48, 368, 114, 22],
                          "text": "prepend script send"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-150",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 2,
                          "outlettype": ["bang", "int"],
                          "patching_rect": [48, 104, 30, 22],
                          "text": "t b i"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-148",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [""],
                          "patching_rect": [48, 280, 49, 22],
                          "text": "pack s i"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-142",
                          "maxclass": "message",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [""],
                          "patching_rect": [48, 320, 108, 22],
                          "text": "$1 presentation $2"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-145",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 1,
                          "outlettype": [""],
                          "patching_rect": [48, 232, 81, 22],
                          "text": "sprintf pyb%d"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-146",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": ["int"],
                          "patching_rect": [48, 144, 100, 22],
                          "text": "int 8"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-147",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 3,
                          "outlettype": ["bang", "bang", "int"],
                          "patching_rect": [48, 192, 100, 22],
                          "text": "uzi"
                        }
                      },
                      {
                        "box": {
                          "comment": "",
                          "id": "obj-212",
                          "index": 1,
                          "maxclass": "inlet",
                          "numinlets": 0,
                          "numoutlets": 1,
                          "outlettype": ["int"],
                          "patching_rect": [48, 40, 30, 30]
                        }
                      }
                    ],
                    "lines": [
                      {
                        "patchline": {
                          "destination": ["obj-173", 0],
                          "source": ["obj-142", 0]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-148", 0],
                          "source": ["obj-145", 0]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-147", 0],
                          "source": ["obj-146", 0]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-145", 0],
                          "source": ["obj-147", 2]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-142", 0],
                          "source": ["obj-148", 0]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-146", 0],
                          "source": ["obj-150", 0]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-148", 1],
                          "source": ["obj-150", 1]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-172", 0],
                          "source": ["obj-173", 0]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-150", 0],
                          "source": ["obj-212", 0]
                        }
                      }
                    ]
                  },
                  "patching_rect": [568, 792, 95, 22],
                  "text": "p show / hide UI"
                }
              },
              {
                "box": {
                  "id": "obj-211",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["int", "int"],
                  "patching_rect": [2144, 224, 30, 22],
                  "text": "t i i"
                }
              },
              {
                "box": {
                  "id": "obj-210",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [2056, 272, 102, 22],
                  "text": "print UPDATE_UI"
                }
              },
              {
                "box": {
                  "id": "obj-209",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [2040, 152, 48, 22],
                  "text": "pipe 50"
                }
              },
              {
                "box": {
                  "id": "obj-206",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [1320, 568, 22, 22],
                  "text": "t 0"
                }
              },
              {
                "box": {
                  "id": "obj-207",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["bang", ""],
                  "patching_rect": [1320, 544, 50, 22],
                  "text": "select 1"
                }
              },
              {
                "box": {
                  "id": "obj-208",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [1320, 512, 70, 22],
                  "text": "r ---is_open"
                }
              },
              {
                "box": {
                  "id": "obj-205",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [928, 704, 45, 22],
                  "text": "int 200"
                }
              },
              {
                "box": {
                  "id": "obj-204",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [992, 616, 29, 22],
                  "text": "t 50"
                }
              },
              {
                "box": {
                  "id": "obj-203",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["bang", ""],
                  "patching_rect": [992, 584, 50, 22],
                  "text": "select 1"
                }
              },
              {
                "box": {
                  "id": "obj-138",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [992, 552, 70, 22],
                  "text": "r ---is_open"
                }
              },
              {
                "box": {
                  "id": "obj-225",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [2056, 392, 30, 22],
                  "text": "int"
                }
              },
              {
                "box": {
                  "id": "obj-221",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [1048, 792, 251, 22],
                  "text": "presentation 1, presentation_rect $1 $2 $3 $4"
                }
              },
              {
                "box": {
                  "id": "obj-202",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [2448, 224, 153, 22],
                  "text": "loadmess 0 0 10000 10000"
                }
              },
              {
                "box": {
                  "id": "obj-201",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [2488, 392, 45, 22],
                  "text": "print G"
                }
              },
              {
                "box": {
                  "id": "obj-200",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [2536, 288, 47, 22],
                  "text": "print W"
                }
              },
              {
                "box": {
                  "id": "obj-199",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [2448, 288, 43, 22],
                  "text": "print P"
                }
              },
              {
                "box": {
                  "id": "obj-185",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [2192, 1064, 47, 22],
                  "text": "print UI"
                }
              },
              {
                "box": {
                  "id": "obj-182",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [600, 672, 73, 22],
                  "text": "print SHOW"
                }
              },
              {
                "box": {
                  "id": "obj-149",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["int", "int"],
                  "patching_rect": [568, 632, 30, 22],
                  "text": "t i i"
                }
              },
              {
                "box": {
                  "id": "obj-198",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["bang", "int"],
                  "patching_rect": [2248, 432, 32, 22],
                  "text": "t b 1"
                }
              },
              {
                "box": {
                  "id": "obj-197",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [2056, 528, 103, 22],
                  "text": "s ---show_hide_ui"
                }
              },
              {
                "box": {
                  "id": "obj-196",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [568, 584, 101, 22],
                  "text": "r ---show_hide_ui"
                }
              },
              {
                "box": {
                  "id": "obj-195",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["bang", ""],
                  "patching_rect": [2144, 304, 50, 22],
                  "text": "select 1"
                }
              },
              {
                "box": {
                  "id": "obj-194",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [2248, 392, 32, 22],
                  "text": "gate"
                }
              },
              {
                "box": {
                  "id": "obj-193",
                  "maxclass": "newobj",
                  "numinlets": 4,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [2248, 328, 233, 22],
                  "text": "expr (($i1 - $i3) >= 30) || (($i2 - $i4) >= 30)"
                }
              },
              {
                "box": {
                  "id": "obj-192",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["int", "int"],
                  "patching_rect": [2248, 288, 59, 22],
                  "text": "unpack i i"
                }
              },
              {
                "box": {
                  "id": "obj-191",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [2248, 224, 48, 22],
                  "text": "r ---wxy"
                }
              },
              {
                "box": {
                  "id": "obj-190",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 4,
                  "outlettype": ["int", "int", "int", "int"],
                  "patching_rect": [2344, 288, 71, 22],
                  "text": "unpack i i i i"
                }
              },
              {
                "box": {
                  "id": "obj-189",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [2344, 224, 61, 22],
                  "text": "r ---p_rect"
                }
              },
              {
                "box": {
                  "id": "obj-188",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [1096, 688, 63, 22],
                  "text": "s ---p_rect"
                }
              },
              {
                "box": {
                  "id": "obj-187",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [2144, 184, 81, 22],
                  "text": "r ---update_ui"
                }
              },
              {
                "box": {
                  "id": "obj-186",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [2040, 192, 83, 22],
                  "text": "s ---update_ui"
                }
              },
              {
                "box": {
                  "id": "obj-181",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [688, 672, 31, 22],
                  "text": "int 0"
                }
              },
              {
                "box": {
                  "id": "obj-180",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [688, 584, 54, 22],
                  "text": "r ---reset"
                }
              },
              {
                "box": {
                  "id": "obj-179",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "patching_rect": [1128, 64, 30, 22],
                  "text": "t l l"
                }
              },
              {
                "box": {
                  "id": "obj-178",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [1152, 104, 110, 22],
                  "text": "print TO_FIT_WXY"
                }
              },
              {
                "box": {
                  "id": "obj-177",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 4,
                  "outlettype": ["", "", "", ""],
                  "patching_rect": [1272, 136, 51, 22],
                  "text": "t l l l l"
                }
              },
              {
                "box": {
                  "id": "obj-175",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [1456, 104, 96, 22],
                  "text": "print FIT_RATIO"
                }
              },
              {
                "box": {
                  "id": "obj-176",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [1456, 64, 72, 22],
                  "text": "expr $f1/$f2"
                }
              },
              {
                "box": {
                  "id": "obj-174",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [1368, 104, 71, 22],
                  "text": "print RATIO"
                }
              },
              {
                "box": {
                  "id": "obj-162",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [1368, 64, 72, 22],
                  "text": "expr $f1/$f2"
                }
              },
              {
                "box": {
                  "id": "obj-151",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [1304, 104, 53, 22],
                  "text": "print FIT"
                }
              },
              {
                "box": {
                  "id": "obj-28",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["int", "int"],
                  "patching_rect": [1712, 256, 59, 22],
                  "text": "unpack i i"
                }
              },
              {
                "box": {
                  "id": "obj-27",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [664, 424, 46, 22],
                  "text": "pack i i"
                }
              },
              {
                "box": {
                  "id": "obj-161",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [1952, 168, 67, 22],
                  "text": "print GATE"
                }
              },
              {
                "box": {
                  "id": "obj-160",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["int", "int"],
                  "patching_rect": [2008, 48, 30, 22],
                  "text": "t i i"
                }
              },
              {
                "box": {
                  "id": "obj-155",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [1936, 640, 67, 22],
                  "text": "s ---p_gate"
                }
              },
              {
                "box": {
                  "id": "obj-159",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [992, 736, 31, 22],
                  "text": "int 1"
                }
              },
              {
                "box": {
                  "id": "obj-158",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": ["bang"],
                  "patching_rect": [992, 704, 48, 22],
                  "text": "del 200"
                }
              },
              {
                "box": {
                  "id": "obj-156",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [1112, 752, 67, 22],
                  "text": "s ---p_gate"
                }
              },
              {
                "box": {
                  "id": "obj-154",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["bang", ""],
                  "patching_rect": [1048, 664, 30, 22],
                  "text": "t b l"
                }
              },
              {
                "box": {
                  "id": "obj-17",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [1968, 0, 65, 22],
                  "text": "r ---p_gate"
                }
              },
              {
                "box": {
                  "id": "obj-153",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [752, 72, 70, 22],
                  "text": "r ---is_open"
                }
              },
              {
                "box": {
                  "id": "obj-144",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [720, 448, 63, 22],
                  "text": "print WXY"
                }
              },
              {
                "box": {
                  "id": "obj-52",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "patching_rect": [1232, 512, 60, 22],
                  "text": "zl.change"
                }
              },
              {
                "box": {
                  "id": "obj-143",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": ["", "int", "int"],
                  "patching_rect": [1008, 208, 48, 22],
                  "text": "change"
                }
              },
              {
                "box": {
                  "id": "obj-140",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [1752, 152, 85, 22],
                  "text": "s ---is_opened"
                }
              },
              {
                "box": {
                  "id": "obj-58",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [1128, 376, 83, 22],
                  "text": "r ---is_opened"
                }
              },
              {
                "box": {
                  "id": "obj-54",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [2248, 480, 30, 22],
                  "text": "int"
                }
              },
              {
                "box": {
                  "id": "obj-53",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "patching_rect": [568, 360, 60, 22],
                  "text": "zl.change"
                }
              },
              {
                "box": {
                  "id": "obj-41",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [2312, 528, 139, 22],
                  "text": "print TOO_WIDE_USED"
                }
              },
              {
                "box": {
                  "id": "obj-40",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [672, 312, 62, 22],
                  "text": "print THIS"
                }
              },
              {
                "box": {
                  "id": "obj-37",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [1888, 48, 87, 22],
                  "text": "print IS_OPEN"
                }
              },
              {
                "box": {
                  "id": "obj-39",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [1048, 840, 146, 22],
                  "text": "prepend script send popw"
                }
              },
              {
                "box": {
                  "id": "obj-36",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "patching_rect": [1648, 16, 46, 22],
                  "text": "route 0"
                }
              },
              {
                "box": {
                  "id": "obj-34",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [1648, 104, 146, 22],
                  "text": "prepend script send popw"
                }
              },
              {
                "box": {
                  "id": "obj-35",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [1648, 152, 65, 22],
                  "text": "s ---to_this"
                }
              },
              {
                "box": {
                  "id": "obj-33",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [1648, 64, 85, 22],
                  "text": "presentation 0"
                }
              },
              {
                "box": {
                  "id": "obj-9",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [2144, 88, 146, 22],
                  "text": "prepend script send popw"
                }
              },
              {
                "box": {
                  "id": "obj-8",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [2144, 64, 403, 22],
                  "text": "presentation 0, presentation_rect 0 0 64 64, patching_rect 1500 150 64 64"
                }
              },
              {
                "box": {
                  "id": "obj-7",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [2144, 16, 54, 22],
                  "text": "r ---reset"
                }
              },
              {
                "box": {
                  "id": "obj-6",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [2144, 136, 65, 22],
                  "text": "s ---to_this"
                }
              },
              {
                "box": {
                  "id": "obj-32",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["bang", "int"],
                  "patching_rect": [1816, 64, 30, 22],
                  "text": "t b i"
                }
              },
              {
                "box": {
                  "id": "obj-31",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "patching_rect": [1888, 136, 38, 22],
                  "text": "zl.reg"
                }
              },
              {
                "box": {
                  "id": "obj-30",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": ["bang"],
                  "patching_rect": [1816, 104, 35, 22],
                  "text": "del 0"
                }
              },
              {
                "box": {
                  "id": "obj-24",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [1816, 16, 70, 22],
                  "text": "r ---is_open"
                }
              },
              {
                "box": {
                  "id": "obj-21",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [1048, 168, 31, 22],
                  "text": "int 0"
                }
              },
              {
                "box": {
                  "id": "obj-20",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [1008, 168, 31, 22],
                  "text": "int 1"
                }
              },
              {
                "box": {
                  "id": "obj-16",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [1008, 256, 72, 22],
                  "text": "s ---is_open"
                }
              },
              {
                "box": {
                  "id": "obj-15",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [2056, 104, 32, 22],
                  "text": "gate"
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-13",
                  "index": 2,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": ["bang"],
                  "patching_rect": [1008, 72, 30, 30]
                }
              },
              {
                "box": {
                  "id": "obj-2",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": ["bang"],
                  "patching_rect": [1048, 120, 63, 22],
                  "text": "closebang"
                }
              },
              {
                "box": {
                  "id": "obj-171",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [2312, 392, 76, 22],
                  "text": "r ---too_wide"
                }
              },
              {
                "box": {
                  "id": "obj-170",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [1144, 192, 78, 22],
                  "text": "s ---too_wide"
                }
              },
              {
                "box": {
                  "id": "obj-167",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [2104, 1064, 65, 22],
                  "text": "s ---to_this"
                }
              },
              {
                "box": {
                  "id": "obj-166",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [1544, 680, 65, 22],
                  "text": "s ---to_this"
                }
              },
              {
                "box": {
                  "id": "obj-165",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [1048, 888, 65, 22],
                  "text": "s ---to_this"
                }
              },
              {
                "box": {
                  "id": "obj-164",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [664, 168, 63, 22],
                  "text": "r ---to_this"
                }
              },
              {
                "box": {
                  "id": "obj-163",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 4,
                  "outlettype": ["int", "int", "", ""],
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
                    "rect": [58, 100, 662, 476],
                    "gridsize": [8, 8],
                    "gridsnaponopen": 2,
                    "integercoordinates": 1,
                    "boxes": [
                      {
                        "box": {
                          "id": "obj-13",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 2,
                          "outlettype": ["", ""],
                          "patching_rect": [56, 168, 61, 22],
                          "text": "route size"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-8",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [""],
                          "patching_rect": [144, 344, 78, 22],
                          "text": "expr $i2 - $i1"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-7",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [""],
                          "patching_rect": [48, 344, 78, 22],
                          "text": "expr $i2 - $i1"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-6",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 4,
                          "outlettype": ["int", "int", "int", "int"],
                          "patching_rect": [48, 232, 71, 22],
                          "text": "unpack i i i i"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-2",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 2,
                          "outlettype": ["", ""],
                          "patching_rect": [48, 104, 79, 22],
                          "text": "route window"
                        }
                      },
                      {
                        "box": {
                          "comment": "",
                          "id": "obj-158",
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
                          "id": "obj-159",
                          "index": 1,
                          "maxclass": "outlet",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [48, 424, 30, 30]
                        }
                      },
                      {
                        "box": {
                          "comment": "",
                          "id": "obj-160",
                          "index": 2,
                          "maxclass": "outlet",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [88, 424, 30, 30]
                        }
                      },
                      {
                        "box": {
                          "comment": "",
                          "id": "obj-161",
                          "index": 3,
                          "maxclass": "outlet",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [120, 424, 30, 30]
                        }
                      },
                      {
                        "box": {
                          "comment": "",
                          "id": "obj-162",
                          "index": 4,
                          "maxclass": "outlet",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [152, 424, 30, 30]
                        }
                      }
                    ],
                    "lines": [
                      {
                        "patchline": {
                          "destination": ["obj-6", 0],
                          "source": ["obj-13", 0]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-2", 0],
                          "source": ["obj-158", 0]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-13", 0],
                          "source": ["obj-2", 0]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-159", 0],
                          "order": 0,
                          "source": ["obj-6", 0]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-160", 0],
                          "order": 1,
                          "source": ["obj-6", 1]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-7", 1],
                          "source": ["obj-6", 2]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-7", 0],
                          "order": 1,
                          "source": ["obj-6", 0]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-8", 1],
                          "source": ["obj-6", 3]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-8", 0],
                          "order": 0,
                          "source": ["obj-6", 1]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-161", 0],
                          "source": ["obj-7", 0]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-162", 0],
                          "source": ["obj-8", 0]
                        }
                      }
                    ]
                  },
                  "patching_rect": [568, 392, 101, 22],
                  "text": "p window_coords"
                }
              },
              {
                "box": {
                  "id": "obj-157",
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
                    "rect": [33, 71, 877, 508],
                    "gridsize": [8, 8],
                    "gridsnaponopen": 2,
                    "integercoordinates": 1,
                    "boxes": [
                      {
                        "box": {
                          "id": "obj-10",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": ["int"],
                          "patching_rect": [56, 520, 33, 22],
                          "text": "== 0"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-9",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [""],
                          "patching_rect": [56, 560, 67, 22],
                          "text": "gate"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-8",
                          "maxclass": "newobj",
                          "numinlets": 4,
                          "numoutlets": 1,
                          "outlettype": [""],
                          "patching_rect": [56, 480, 277, 22],
                          "text": "expr $i1 == 0 && $i2 == 0 && $i3 == 0 && $i4 == 0"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-7",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 4,
                          "outlettype": ["int", "int", "int", "int"],
                          "patching_rect": [56, 440, 71, 22],
                          "text": "unpack i i i i"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-6",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 2,
                          "outlettype": ["", ""],
                          "patching_rect": [56, 392, 30, 22],
                          "text": "t l l"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-5",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 2,
                          "outlettype": ["bang", ""],
                          "patching_rect": [136, 88, 30, 22],
                          "text": "t b l"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-4",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 2,
                          "outlettype": ["", ""],
                          "patching_rect": [56, 88, 38, 22],
                          "text": "zl.reg"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-3",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 2,
                          "outlettype": ["int", "int"],
                          "patching_rect": [168, 136, 59, 22],
                          "text": "unpack i i"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-2",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 4,
                          "outlettype": ["int", "int", "int", "int"],
                          "patching_rect": [56, 232, 151.00000000000003, 22],
                          "text": "unpack i i i i"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-1",
                          "maxclass": "newobj",
                          "numinlets": 4,
                          "numoutlets": 1,
                          "outlettype": [""],
                          "patching_rect": [56, 184, 174, 22],
                          "text": "pack i i i i"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-58",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [""],
                          "patching_rect": [176, 288, 107, 22],
                          "text": "expr ($f2 - $f1) / 2."
                        }
                      },
                      {
                        "box": {
                          "id": "obj-57",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [""],
                          "patching_rect": [56, 288, 107, 22],
                          "text": "expr ($f2 - $f1) / 2."
                        }
                      },
                      {
                        "box": {
                          "id": "obj-55",
                          "maxclass": "newobj",
                          "numinlets": 4,
                          "numoutlets": 1,
                          "outlettype": [""],
                          "patching_rect": [56, 344, 58, 22],
                          "text": "pack i i i i"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-54",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 2,
                          "outlettype": ["int", "int"],
                          "patching_rect": [56, 136, 59, 22],
                          "text": "unpack i i"
                        }
                      },
                      {
                        "box": {
                          "comment": "",
                          "id": "obj-153",
                          "index": 1,
                          "maxclass": "inlet",
                          "numinlets": 0,
                          "numoutlets": 1,
                          "outlettype": [""],
                          "patching_rect": [56, 32, 30, 30]
                        }
                      },
                      {
                        "box": {
                          "comment": "",
                          "id": "obj-154",
                          "index": 2,
                          "maxclass": "inlet",
                          "numinlets": 0,
                          "numoutlets": 1,
                          "outlettype": [""],
                          "patching_rect": [136, 32, 30, 30]
                        }
                      },
                      {
                        "box": {
                          "comment": "",
                          "id": "obj-156",
                          "index": 1,
                          "maxclass": "outlet",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [56, 608, 30, 30]
                        }
                      }
                    ],
                    "lines": [
                      {
                        "patchline": {
                          "destination": ["obj-2", 0],
                          "source": ["obj-1", 0]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-9", 0],
                          "source": ["obj-10", 0]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-4", 0],
                          "source": ["obj-153", 0]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-5", 0],
                          "source": ["obj-154", 0]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-55", 3],
                          "order": 1,
                          "source": ["obj-2", 1]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-55", 2],
                          "order": 0,
                          "source": ["obj-2", 0]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-57", 1],
                          "source": ["obj-2", 2]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-57", 0],
                          "order": 1,
                          "source": ["obj-2", 0]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-58", 1],
                          "source": ["obj-2", 3]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-58", 0],
                          "order": 0,
                          "source": ["obj-2", 1]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-1", 3],
                          "source": ["obj-3", 1]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-1", 2],
                          "source": ["obj-3", 0]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-54", 0],
                          "source": ["obj-4", 0]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-3", 0],
                          "source": ["obj-5", 1]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-4", 0],
                          "source": ["obj-5", 0]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-1", 1],
                          "source": ["obj-54", 1]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-1", 0],
                          "source": ["obj-54", 0]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-6", 0],
                          "source": ["obj-55", 0]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-55", 0],
                          "source": ["obj-57", 0]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-55", 1],
                          "source": ["obj-58", 0]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-7", 0],
                          "source": ["obj-6", 1]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-9", 1],
                          "source": ["obj-6", 0]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-8", 3],
                          "source": ["obj-7", 3]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-8", 2],
                          "source": ["obj-7", 2]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-8", 1],
                          "source": ["obj-7", 1]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-8", 0],
                          "source": ["obj-7", 0]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-10", 0],
                          "source": ["obj-8", 0]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-156", 0],
                          "source": ["obj-9", 0]
                        }
                      }
                    ]
                  },
                  "patching_rect": [1320, 208, 111, 22],
                  "text": "p presentation_rect"
                }
              },
              {
                "box": {
                  "id": "obj-152",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
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
                          "id": "obj-2",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 4,
                          "outlettype": ["int", "int", "int", "int"],
                          "patching_rect": [48, 152, 51, 22],
                          "text": "t i i i i"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-1",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 4,
                          "outlettype": ["int", "int", "int", "int"],
                          "patching_rect": [176, 128, 51, 22],
                          "text": "t i i i i"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-3",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 2,
                          "outlettype": ["int", "int"],
                          "patching_rect": [48, 88, 59, 22],
                          "text": "unpack i i"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-53",
                          "maxclass": "newobj",
                          "numinlets": 3,
                          "numoutlets": 1,
                          "outlettype": [""],
                          "patching_rect": [432, 208, 110, 22],
                          "text": "expr ($f1/$f2) < $f3"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-39",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": ["float"],
                          "patching_rect": [88, 360, 31, 22],
                          "text": "float"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-40",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": ["float"],
                          "patching_rect": [152, 360, 31, 22],
                          "text": "float"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-41",
                          "maxclass": "newobj",
                          "numinlets": 3,
                          "numoutlets": 3,
                          "outlettype": ["bang", "bang", ""],
                          "patching_rect": [80, 312, 60, 22],
                          "text": "select 1 0"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-34",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [""],
                          "patching_rect": [232, 208, 73, 22],
                          "text": "expr $f1*$f2"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-33",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": ["float"],
                          "patching_rect": [320, 360, 31, 22],
                          "text": "float"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-32",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": ["float"],
                          "patching_rect": [392, 360, 31, 22],
                          "text": "float"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-31",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [""],
                          "patching_rect": [336, 208, 72, 22],
                          "text": "expr $f1/$f2"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-30",
                          "maxclass": "newobj",
                          "numinlets": 3,
                          "numoutlets": 3,
                          "outlettype": ["bang", "bang", ""],
                          "patching_rect": [432, 296, 60, 22],
                          "text": "select 1 0"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-24",
                          "maxclass": "newobj",
                          "numinlets": 3,
                          "numoutlets": 1,
                          "outlettype": [""],
                          "patching_rect": [48, 208, 110, 22],
                          "text": "expr ($f1/$f2) < $f3"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-21",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": ["float"],
                          "patching_rect": [272, 128, 59, 22],
                          "text": "/ 1."
                        }
                      },
                      {
                        "box": {
                          "id": "obj-20",
                          "maxclass": "newobj",
                          "numinlets": 1,
                          "numoutlets": 2,
                          "outlettype": ["int", "int"],
                          "patching_rect": [272, 88, 59, 22],
                          "text": "unpack i i"
                        }
                      },
                      {
                        "box": {
                          "id": "obj-16",
                          "maxclass": "newobj",
                          "numinlets": 2,
                          "numoutlets": 1,
                          "outlettype": [""],
                          "patching_rect": [272, 448, 46, 22],
                          "text": "pack i i"
                        }
                      },
                      {
                        "box": {
                          "comment": "width",
                          "id": "obj-140",
                          "index": 1,
                          "maxclass": "inlet",
                          "numinlets": 0,
                          "numoutlets": 1,
                          "outlettype": [""],
                          "patching_rect": [48, 32, 30, 30]
                        }
                      },
                      {
                        "box": {
                          "comment": "height",
                          "id": "obj-141",
                          "index": 2,
                          "maxclass": "inlet",
                          "numinlets": 0,
                          "numoutlets": 1,
                          "outlettype": [""],
                          "patching_rect": [272, 32, 30, 30]
                        }
                      },
                      {
                        "box": {
                          "comment": "too wide",
                          "id": "obj-144",
                          "index": 1,
                          "maxclass": "outlet",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [48, 528, 30, 30]
                        }
                      },
                      {
                        "box": {
                          "comment": "fit size",
                          "id": "obj-151",
                          "index": 2,
                          "maxclass": "outlet",
                          "numinlets": 1,
                          "numoutlets": 0,
                          "patching_rect": [272, 528, 30, 30]
                        }
                      }
                    ],
                    "lines": [
                      {
                        "patchline": {
                          "destination": ["obj-24", 1],
                          "source": ["obj-1", 0]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-32", 1],
                          "source": ["obj-1", 3]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-34", 0],
                          "source": ["obj-1", 1]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-53", 1],
                          "source": ["obj-1", 2]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-3", 0],
                          "source": ["obj-140", 0]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-20", 0],
                          "source": ["obj-141", 0]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-151", 0],
                          "source": ["obj-16", 0]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-24", 0],
                          "source": ["obj-2", 0]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-31", 0],
                          "source": ["obj-2", 2]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-39", 1],
                          "source": ["obj-2", 3]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-53", 0],
                          "source": ["obj-2", 1]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-21", 1],
                          "source": ["obj-20", 1]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-21", 0],
                          "source": ["obj-20", 0]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-24", 2],
                          "order": 3,
                          "source": ["obj-21", 0]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-31", 1],
                          "order": 1,
                          "source": ["obj-21", 0]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-34", 1],
                          "order": 2,
                          "source": ["obj-21", 0]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-53", 2],
                          "order": 0,
                          "source": ["obj-21", 0]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-144", 0],
                          "order": 1,
                          "source": ["obj-24", 0]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-41", 0],
                          "order": 0,
                          "source": ["obj-24", 0]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-1", 0],
                          "source": ["obj-3", 1]
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
                          "destination": ["obj-32", 0],
                          "source": ["obj-30", 1]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-33", 0],
                          "source": ["obj-30", 0]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-33", 1],
                          "source": ["obj-31", 0]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-16", 1],
                          "source": ["obj-32", 0]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-16", 1],
                          "source": ["obj-33", 0]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-40", 1],
                          "source": ["obj-34", 0]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-16", 0],
                          "source": ["obj-39", 0]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-16", 0],
                          "source": ["obj-40", 0]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-39", 0],
                          "source": ["obj-41", 0]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-40", 0],
                          "source": ["obj-41", 1]
                        }
                      },
                      {
                        "patchline": {
                          "destination": ["obj-30", 0],
                          "source": ["obj-53", 0]
                        }
                      }
                    ]
                  },
                  "patching_rect": [1144, 136, 120, 22],
                  "text": "p fit_preview"
                }
              },
              {
                "box": {
                  "id": "obj-101",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [1936, 424, 31, 22],
                  "text": "int 1"
                }
              },
              {
                "box": {
                  "id": "obj-135",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "patching_rect": [1936, 376, 46, 22],
                  "text": "route 1"
                }
              },
              {
                "box": {
                  "id": "obj-111",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 8,
                  "outlettype": [
                    "int",
                    "int",
                    "int",
                    "int",
                    "int",
                    "int",
                    "int",
                    "int"
                  ],
                  "patching_rect": [1936, 288, 95, 22],
                  "text": "unpack i i i i i i i i"
                }
              },
              {
                "box": {
                  "id": "obj-110",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "patching_rect": [2104, 912, 60, 22],
                  "text": "zl.change"
                }
              },
              {
                "box": {
                  "id": "obj-120",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["bang", ""],
                  "patching_rect": [1936, 472, 30, 22],
                  "text": "t b l"
                }
              },
              {
                "box": {
                  "id": "obj-121",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "patching_rect": [1936, 560, 38, 22],
                  "text": "zl.reg"
                }
              },
              {
                "box": {
                  "id": "obj-134",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": ["bang"],
                  "patching_rect": [1936, 512, 45, 22],
                  "text": "del 60"
                }
              },
              {
                "box": {
                  "id": "obj-119",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [1800, 512, 30, 22],
                  "text": "int"
                }
              },
              {
                "box": {
                  "id": "obj-118",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["bang", "bang"],
                  "patching_rect": [1744, 464, 32, 22],
                  "text": "t b b"
                }
              },
              {
                "box": {
                  "id": "obj-117",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": ["float"],
                  "patching_rect": [1800, 464, 36, 22],
                  "text": "+ 30."
                }
              },
              {
                "box": {
                  "id": "obj-116",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [1712, 376, 30, 22],
                  "text": "+ 1"
                }
              },
              {
                "box": {
                  "id": "obj-115",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "patching_rect": [1712, 424, 42, 22],
                  "text": "gate 2"
                }
              },
              {
                "box": {
                  "id": "obj-109",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [1712, 192, 48, 22],
                  "text": "r ---wxy"
                }
              },
              {
                "box": {
                  "id": "obj-102",
                  "maxclass": "newobj",
                  "numinlets": 4,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [1712, 328, 235, 22],
                  "text": "expr ($i1 < ($i3 + 30)) && ($i2 < ($i4 + 30))"
                }
              },
              {
                "box": {
                  "id": "obj-133",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["bang", "int"],
                  "patching_rect": [2248, 552, 30, 22],
                  "text": "t b i"
                }
              },
              {
                "box": {
                  "id": "obj-132",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [2248, 528, 30, 22],
                  "text": "+ 1"
                }
              },
              {
                "box": {
                  "id": "obj-122",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [2504, 720, 30, 22],
                  "text": "- 1"
                }
              },
              {
                "box": {
                  "id": "obj-123",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [2568, 824, 32, 22],
                  "text": "+ 15"
                }
              },
              {
                "box": {
                  "id": "obj-124",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [2520, 824, 32, 22],
                  "text": "+ 15"
                }
              },
              {
                "box": {
                  "id": "obj-125",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [2568, 792, 30, 22],
                  "text": "* 0"
                }
              },
              {
                "box": {
                  "id": "obj-126",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [2520, 792, 30, 22],
                  "text": "* 0"
                }
              },
              {
                "box": {
                  "id": "obj-127",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [2464, 752, 30, 22],
                  "text": "* 0"
                }
              },
              {
                "box": {
                  "id": "obj-128",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["int", "int"],
                  "patching_rect": [2352, 704, 100, 22],
                  "text": "t i i"
                }
              },
              {
                "box": {
                  "id": "obj-129",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [2504, 752, 30, 22],
                  "text": "* 16"
                }
              },
              {
                "box": {
                  "id": "obj-130",
                  "maxclass": "newobj",
                  "numinlets": 5,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [2352, 872, 100, 22],
                  "text": "pack s i i i i"
                }
              },
              {
                "box": {
                  "id": "obj-131",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [2352, 752, 81, 22],
                  "text": "sprintf pyb%d"
                }
              },
              {
                "box": {
                  "id": "obj-114",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "patching_rect": [2248, 648, 42, 22],
                  "text": "gate 2"
                }
              },
              {
                "box": {
                  "id": "obj-113",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [2248, 720, 30, 22],
                  "text": "- 1"
                }
              },
              {
                "box": {
                  "id": "obj-112",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [2104, 1008, 114, 22],
                  "text": "prepend script send"
                }
              },
              {
                "box": {
                  "id": "obj-107",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [2104, 960, 347, 22],
                  "text": "$1 patching_rect $2 $3 $4 $5, $1 presentation_rect $2 $3 $4 $5"
                }
              },
              {
                "box": {
                  "id": "obj-106",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [2312, 824, 32, 22],
                  "text": "+ 15"
                }
              },
              {
                "box": {
                  "id": "obj-105",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [2264, 824, 32, 22],
                  "text": "+ 15"
                }
              },
              {
                "box": {
                  "id": "obj-104",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [2312, 792, 30, 22],
                  "text": "* 0"
                }
              },
              {
                "box": {
                  "id": "obj-103",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [2264, 792, 30, 22],
                  "text": "* 0"
                }
              },
              {
                "box": {
                  "id": "obj-100",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [2208, 752, 30, 22],
                  "text": "* 0"
                }
              },
              {
                "box": {
                  "id": "obj-99",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["int", "int"],
                  "patching_rect": [2104, 704, 100, 22],
                  "text": "t i i"
                }
              },
              {
                "box": {
                  "id": "obj-98",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [2248, 752, 30, 22],
                  "text": "* 16"
                }
              },
              {
                "box": {
                  "id": "obj-97",
                  "maxclass": "newobj",
                  "numinlets": 5,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [2104, 872, 100, 22],
                  "text": "pack s i i i i"
                }
              },
              {
                "box": {
                  "id": "obj-96",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [2104, 752, 81, 22],
                  "text": "sprintf pyb%d"
                }
              },
              {
                "box": {
                  "id": "obj-95",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [2104, 616, 100, 22],
                  "text": "int 8"
                }
              },
              {
                "box": {
                  "id": "obj-67",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 3,
                  "outlettype": ["bang", "bang", "int"],
                  "patching_rect": [2104, 648, 100, 22],
                  "text": "uzi"
                }
              },
              {
                "box": {
                  "id": "obj-94",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [104, 392, 100, 22],
                  "text": "s ---from_popup"
                }
              },
              {
                "box": {
                  "id": "obj-93",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [312, 328, 75, 22],
                  "text": "prepend 8"
                }
              },
              {
                "box": {
                  "id": "obj-92",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [312, 304, 75, 22],
                  "text": "prepend 7"
                }
              },
              {
                "box": {
                  "id": "obj-91",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [312, 272, 75, 22],
                  "text": "prepend 6"
                }
              },
              {
                "box": {
                  "id": "obj-90",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [312, 240, 75, 22],
                  "text": "prepend 5"
                }
              },
              {
                "box": {
                  "id": "obj-89",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [312, 208, 75, 22],
                  "text": "prepend 4"
                }
              },
              {
                "box": {
                  "id": "obj-88",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [312, 184, 75, 22],
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
                  "patching_rect": [312, 152, 75, 22],
                  "text": "prepend 2"
                }
              },
              {
                "box": {
                  "id": "obj-86",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [312, 120, 75, 22],
                  "text": "prepend 1"
                }
              },
              {
                "box": {
                  "id": "obj-85",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [104, 328, 100, 22],
                  "text": "prepend set"
                }
              },
              {
                "box": {
                  "id": "obj-84",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [104, 304, 100, 22],
                  "text": "prepend set"
                }
              },
              {
                "box": {
                  "id": "obj-83",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [104, 272, 100, 22],
                  "text": "prepend set"
                }
              },
              {
                "box": {
                  "id": "obj-82",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [104, 240, 100, 22],
                  "text": "prepend set"
                }
              },
              {
                "box": {
                  "id": "obj-81",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [104, 208, 100, 22],
                  "text": "prepend set"
                }
              },
              {
                "box": {
                  "id": "obj-80",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [104, 184, 100, 22],
                  "text": "prepend set"
                }
              },
              {
                "box": {
                  "id": "obj-79",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [104, 152, 100, 22],
                  "text": "prepend set"
                }
              },
              {
                "box": {
                  "id": "obj-78",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [104, 120, 100, 22],
                  "text": "prepend set"
                }
              },
              {
                "box": {
                  "id": "obj-77",
                  "maxclass": "newobj",
                  "numinlets": 9,
                  "numoutlets": 9,
                  "outlettype": ["", "", "", "", "", "", "", "", ""],
                  "patching_rect": [152, 72, 195, 22],
                  "text": "route 1 2 3 4 5 6 7 8"
                }
              },
              {
                "box": {
                  "id": "obj-76",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [152, 32, 100, 22],
                  "text": "r ---to_popup"
                }
              },
              {
                "box": {
                  "id": "obj-68",
                  "maxclass": "live.text",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "parameter_enable": 1,
                  "patching_rect": [104, 0, 15, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_enum": ["val1", "val2"],
                      "parameter_longname": "Ch 8",
                      "parameter_mmax": 1,
                      "parameter_modmode": 0,
                      "parameter_shortname": "live.text",
                      "parameter_type": 2
                    }
                  },
                  "text": "8",
                  "texton": "8",
                  "varname": "pyb8"
                }
              },
              {
                "box": {
                  "id": "obj-69",
                  "maxclass": "live.text",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "parameter_enable": 1,
                  "patching_rect": [88, 0, 15, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_enum": ["val1", "val2"],
                      "parameter_longname": "Ch 7",
                      "parameter_mmax": 1,
                      "parameter_modmode": 0,
                      "parameter_shortname": "live.text",
                      "parameter_type": 2
                    }
                  },
                  "text": "7",
                  "texton": "7",
                  "varname": "pyb7"
                }
              },
              {
                "box": {
                  "id": "obj-70",
                  "maxclass": "live.text",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "parameter_enable": 1,
                  "patching_rect": [72, 0, 15, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_enum": ["val1", "val2"],
                      "parameter_longname": "Ch 6",
                      "parameter_mmax": 1,
                      "parameter_modmode": 0,
                      "parameter_shortname": "live.text",
                      "parameter_type": 2
                    }
                  },
                  "text": "6",
                  "texton": "6",
                  "varname": "pyb6"
                }
              },
              {
                "box": {
                  "id": "obj-71",
                  "maxclass": "live.text",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "parameter_enable": 1,
                  "patching_rect": [64, 0, 15, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_enum": ["val1", "val2"],
                      "parameter_longname": "Ch 5",
                      "parameter_mmax": 1,
                      "parameter_modmode": 0,
                      "parameter_shortname": "live.text",
                      "parameter_type": 2
                    }
                  },
                  "text": "5",
                  "texton": "5",
                  "varname": "pyb5"
                }
              },
              {
                "box": {
                  "id": "obj-72",
                  "maxclass": "live.text",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "parameter_enable": 1,
                  "patching_rect": [48, 0, 15, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_enum": ["val1", "val2"],
                      "parameter_longname": "Ch 4",
                      "parameter_mmax": 1,
                      "parameter_modmode": 0,
                      "parameter_shortname": "live.text",
                      "parameter_type": 2
                    }
                  },
                  "text": "4",
                  "texton": "4",
                  "varname": "pyb4"
                }
              },
              {
                "box": {
                  "id": "obj-73",
                  "maxclass": "live.text",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "parameter_enable": 1,
                  "patching_rect": [32, 0, 15, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_enum": ["val1", "val2"],
                      "parameter_longname": "Ch 3",
                      "parameter_mmax": 1,
                      "parameter_modmode": 0,
                      "parameter_shortname": "live.text",
                      "parameter_type": 2
                    }
                  },
                  "text": "3",
                  "texton": "3",
                  "varname": "pyb3"
                }
              },
              {
                "box": {
                  "id": "obj-74",
                  "maxclass": "live.text",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "parameter_enable": 1,
                  "patching_rect": [16, 0, 15, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_enum": ["val1", "val2"],
                      "parameter_longname": "Ch 2",
                      "parameter_mmax": 1,
                      "parameter_modmode": 0,
                      "parameter_shortname": "live.text",
                      "parameter_type": 2
                    }
                  },
                  "text": "2",
                  "texton": "2",
                  "varname": "pyb2"
                }
              },
              {
                "box": {
                  "id": "obj-75",
                  "maxclass": "live.text",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "parameter_enable": 1,
                  "patching_rect": [0, 0, 15, 15],
                  "saved_attribute_attributes": {
                    "valueof": {
                      "parameter_enum": ["val1", "val2"],
                      "parameter_longname": "Ch 1",
                      "parameter_mmax": 1,
                      "parameter_modmode": 0,
                      "parameter_shortname": "live.text",
                      "parameter_type": 2
                    }
                  },
                  "text": "1",
                  "texton": "1",
                  "varname": "pyb1"
                }
              },
              {
                "box": {
                  "id": "obj-66",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": ["bang"],
                  "patching_rect": [1232, 840, 22, 22],
                  "text": "t b"
                }
              },
              {
                "box": {
                  "id": "obj-65",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": ["int"],
                  "patching_rect": [1232, 888, 45, 22],
                  "text": "int 205"
                }
              },
              {
                "box": {
                  "id": "obj-64",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["bang", "int"],
                  "patching_rect": [1936, 600, 32, 22],
                  "text": "t b 0"
                }
              },
              {
                "box": {
                  "id": "obj-60",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": ["bang", "", "int"],
                  "patching_rect": [1232, 568, 40, 22],
                  "text": "t b l 0"
                }
              },
              {
                "box": {
                  "id": "obj-62",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "patching_rect": [1232, 664, 38, 22],
                  "text": "zl.reg"
                }
              },
              {
                "box": {
                  "id": "obj-63",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": ["bang"],
                  "patching_rect": [1232, 616, 60, 22],
                  "text": "del 0"
                }
              },
              {
                "box": {
                  "id": "obj-61",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "patching_rect": [1936, 256, 75, 22],
                  "text": "route mouse"
                }
              },
              {
                "box": {
                  "id": "obj-56",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [1408, 136, 48, 22],
                  "text": "r ---wxy"
                }
              },
              {
                "box": {
                  "id": "obj-51",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [1504, 640, 77, 22],
                  "text": "window exec"
                }
              },
              {
                "box": {
                  "id": "obj-50",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": ["float"],
                  "patching_rect": [1592, 440, 30, 22],
                  "text": "+ 0."
                }
              },
              {
                "box": {
                  "id": "obj-49",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": ["float"],
                  "patching_rect": [1544, 440, 30, 22],
                  "text": "+ 0."
                }
              },
              {
                "box": {
                  "id": "obj-48",
                  "maxclass": "newobj",
                  "numinlets": 4,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [1504, 472, 58, 22],
                  "text": "pack i i i i"
                }
              },
              {
                "box": {
                  "id": "obj-47",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 4,
                  "outlettype": ["float", "float", "float", "float"],
                  "patching_rect": [1504, 384, 74, 22],
                  "text": "unpack f f f f"
                }
              },
              {
                "box": {
                  "id": "obj-46",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["bang", ""],
                  "patching_rect": [1504, 592, 30, 22],
                  "text": "t b l"
                }
              },
              {
                "box": {
                  "id": "obj-45",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["int", "int"],
                  "patching_rect": [1632, 192, 47, 22],
                  "text": "unpack"
                }
              },
              {
                "box": {
                  "id": "obj-44",
                  "maxclass": "newobj",
                  "numinlets": 4,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [1504, 352, 55, 22],
                  "text": "pak f f f f"
                }
              },
              {
                "box": {
                  "id": "obj-42",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [1560, 288, 40, 22],
                  "text": "r ---py"
                }
              },
              {
                "box": {
                  "id": "obj-43",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [1504, 288, 40, 22],
                  "text": "r ---px"
                }
              },
              {
                "box": {
                  "id": "obj-38",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [616, 448, 42, 22],
                  "text": "s ---py"
                }
              },
              {
                "box": {
                  "id": "obj-25",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [568, 448, 42, 22],
                  "text": "s ---px"
                }
              },
              {
                "box": {
                  "id": "obj-23",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "patching_rect": [1504, 544, 38, 22],
                  "text": "zl.reg"
                }
              },
              {
                "box": {
                  "id": "obj-22",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [1504, 504, 140, 22],
                  "text": "window size $1 $2 $3 $4"
                }
              },
              {
                "box": {
                  "id": "obj-29",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [1184, 64, 48, 22],
                  "text": "r ---wxy"
                }
              },
              {
                "box": {
                  "id": "obj-26",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [664, 448, 50, 22],
                  "text": "s ---wxy"
                }
              },
              {
                "box": {
                  "id": "obj-19",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "patching_rect": [1264, 72, 59, 22],
                  "text": "route dim"
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-18",
                  "index": 3,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [1264, 32, 30, 30]
                }
              },
              {
                "box": {
                  "id": "obj-14",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [648, 120, 97, 22],
                  "text": "title \"PX Stream\""
                }
              },
              {
                "box": {
                  "id": "obj-11",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": ["bang"],
                  "patching_rect": [648, 72, 58, 22],
                  "text": "loadbang"
                }
              },
              {
                "box": {
                  "id": "obj-12",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": ["bang"],
                  "patching_rect": [752, 120, 63, 22],
                  "text": "metro 250"
                }
              },
              {
                "box": {
                  "id": "obj-10",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [752, 168, 90, 22],
                  "text": "window getsize"
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "obj-5",
                  "index": 4,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [2056, 16, 30, 30]
                }
              },
              {
                "box": {
                  "id": "obj-3",
                  "maxclass": "jit.pwindow",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["jit_matrix", ""],
                  "patching_rect": [1500, 150, 64, 64],
                  "sync": 1,
                  "usesrcrect": 1,
                  "varname": "popw"
                }
              },
              {
                "box": {
                  "id": "obj-222",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [""],
                  "patching_rect": [616, 32, 559, 22],
                  "text": "window flags float, window flags grow, window flags close, window flag scroll, window title, window exec"
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
                  "patching_rect": [568, 32, 30, 30]
                }
              },
              {
                "box": {
                  "id": "obj-1",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": ["", ""],
                  "patching_rect": [568, 312, 67, 22],
                  "save": ["#N", "thispatcher", ";", "#Q", "end", ";"],
                  "text": "thispatcher"
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "destination": ["obj-53", 0],
                  "source": ["obj-1", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-1", 0],
                  "source": ["obj-10", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-103", 0],
                  "order": 0,
                  "source": ["obj-100", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-97", 1],
                  "order": 1,
                  "source": ["obj-100", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-120", 0],
                  "source": ["obj-101", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-116", 0],
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
                  "destination": ["obj-106", 0],
                  "source": ["obj-104", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-97", 3],
                  "source": ["obj-105", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-97", 4],
                  "source": ["obj-106", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-112", 0],
                  "source": ["obj-107", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-172", 0],
                  "source": ["obj-108", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-28", 0],
                  "source": ["obj-109", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-14", 0],
                  "source": ["obj-11", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-107", 0],
                  "source": ["obj-110", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-135", 0],
                  "source": ["obj-111", 2]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-167", 0],
                  "source": ["obj-112", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-185", 0],
                  "disabled": 1,
                  "source": ["obj-112", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-98", 0],
                  "source": ["obj-113", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-100", 0],
                  "order": 1,
                  "source": ["obj-114", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-113", 0],
                  "order": 0,
                  "source": ["obj-114", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-122", 0],
                  "order": 0,
                  "source": ["obj-114", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-127", 0],
                  "order": 1,
                  "source": ["obj-114", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-128", 0],
                  "order": 2,
                  "source": ["obj-114", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-99", 0],
                  "order": 2,
                  "source": ["obj-114", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-118", 0],
                  "source": ["obj-115", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-23", 0],
                  "source": ["obj-115", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-115", 0],
                  "source": ["obj-116", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-119", 0],
                  "source": ["obj-117", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-119", 0],
                  "source": ["obj-118", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-23", 0],
                  "source": ["obj-118", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-44", 2],
                  "source": ["obj-119", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-10", 0],
                  "source": ["obj-12", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-121", 1],
                  "source": ["obj-120", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-134", 0],
                  "source": ["obj-120", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-64", 0],
                  "source": ["obj-121", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-129", 0],
                  "source": ["obj-122", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-130", 4],
                  "source": ["obj-123", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-130", 3],
                  "source": ["obj-124", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-123", 0],
                  "source": ["obj-125", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-124", 0],
                  "source": ["obj-126", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-126", 0],
                  "order": 0,
                  "source": ["obj-127", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-130", 2],
                  "order": 1,
                  "source": ["obj-127", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-131", 0],
                  "source": ["obj-128", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-125", 0],
                  "order": 0,
                  "source": ["obj-129", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-130", 1],
                  "order": 1,
                  "source": ["obj-129", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-20", 0],
                  "source": ["obj-13", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-110", 0],
                  "source": ["obj-130", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-130", 0],
                  "source": ["obj-131", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-133", 0],
                  "source": ["obj-132", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-114", 0],
                  "source": ["obj-133", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-95", 0],
                  "source": ["obj-133", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-121", 0],
                  "source": ["obj-134", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-101", 0],
                  "source": ["obj-135", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-203", 0],
                  "source": ["obj-138", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-1", 0],
                  "source": ["obj-14", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-139", 0],
                  "disabled": 1,
                  "source": ["obj-142", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-224", 0],
                  "source": ["obj-142", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-16", 0],
                  "source": ["obj-143", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-168", 1],
                  "source": ["obj-145", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-145", 0],
                  "source": ["obj-146", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-150", 0],
                  "source": ["obj-147", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-150", 1],
                  "source": ["obj-148", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-182", 0],
                  "disabled": 1,
                  "source": ["obj-149", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-227", 0],
                  "source": ["obj-149", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-3", 0],
                  "source": ["obj-15", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-212", 0],
                  "source": ["obj-150", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-170", 0],
                  "source": ["obj-152", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-177", 0],
                  "source": ["obj-152", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-12", 0],
                  "source": ["obj-153", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-158", 0],
                  "source": ["obj-154", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-188", 0],
                  "order": 0,
                  "source": ["obj-154", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-221", 0],
                  "order": 1,
                  "source": ["obj-154", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-52", 0],
                  "source": ["obj-157", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-57", 0],
                  "disabled": 1,
                  "source": ["obj-157", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-159", 0],
                  "order": 0,
                  "source": ["obj-158", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-205", 0],
                  "order": 1,
                  "source": ["obj-158", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-156", 0],
                  "source": ["obj-159", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-15", 0],
                  "order": 0,
                  "source": ["obj-160", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-161", 0],
                  "disabled": 1,
                  "source": ["obj-160", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-209", 0],
                  "order": 1,
                  "source": ["obj-160", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-174", 0],
                  "disabled": 1,
                  "source": ["obj-162", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-25", 0],
                  "source": ["obj-163", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-27", 1],
                  "source": ["obj-163", 3]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-27", 0],
                  "source": ["obj-163", 2]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-38", 0],
                  "source": ["obj-163", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-1", 0],
                  "source": ["obj-164", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-40", 0],
                  "disabled": 1,
                  "source": ["obj-164", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-142", 0],
                  "source": ["obj-168", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-184", 0],
                  "source": ["obj-169", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-160", 0],
                  "source": ["obj-17", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-54", 1],
                  "source": ["obj-171", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-59", 0],
                  "disabled": 1,
                  "source": ["obj-171", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-136", 0],
                  "source": ["obj-172", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-183", 0],
                  "source": ["obj-173", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-175", 0],
                  "disabled": 1,
                  "source": ["obj-176", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-151", 0],
                  "disabled": 1,
                  "source": ["obj-177", 3]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-157", 0],
                  "source": ["obj-177", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-176", 0],
                  "source": ["obj-177", 2]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-45", 0],
                  "source": ["obj-177", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-152", 0],
                  "source": ["obj-179", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-178", 0],
                  "disabled": 1,
                  "source": ["obj-179", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-19", 0],
                  "source": ["obj-18", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-181", 0],
                  "source": ["obj-180", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-227", 0],
                  "source": ["obj-181", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-147", 0],
                  "source": ["obj-183", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-148", 0],
                  "source": ["obj-183", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-147", 0],
                  "source": ["obj-184", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-148", 0],
                  "source": ["obj-184", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-211", 0],
                  "source": ["obj-187", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-190", 0],
                  "source": ["obj-189", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-199", 0],
                  "disabled": 1,
                  "source": ["obj-189", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-152", 1],
                  "order": 1,
                  "source": ["obj-19", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-162", 0],
                  "order": 0,
                  "source": ["obj-19", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-193", 3],
                  "source": ["obj-190", 3]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-193", 2],
                  "source": ["obj-190", 2]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-192", 0],
                  "source": ["obj-191", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-200", 0],
                  "disabled": 1,
                  "source": ["obj-191", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-193", 1],
                  "source": ["obj-192", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-193", 0],
                  "source": ["obj-192", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-194", 0],
                  "order": 0,
                  "source": ["obj-193", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-201", 0],
                  "disabled": 1,
                  "source": ["obj-193", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-225", 0],
                  "order": 1,
                  "source": ["obj-193", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-198", 0],
                  "source": ["obj-194", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-194", 1],
                  "source": ["obj-195", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-197", 0],
                  "disabled": 1,
                  "source": ["obj-195", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-149", 0],
                  "source": ["obj-196", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-197", 0],
                  "disabled": 1,
                  "source": ["obj-198", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-54", 0],
                  "source": ["obj-198", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-21", 0],
                  "source": ["obj-2", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-143", 0],
                  "source": ["obj-20", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-190", 0],
                  "source": ["obj-202", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-199", 0],
                  "disabled": 1,
                  "source": ["obj-202", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-204", 0],
                  "source": ["obj-203", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-158", 1],
                  "source": ["obj-204", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-158", 1],
                  "source": ["obj-205", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-63", 1],
                  "source": ["obj-206", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-206", 0],
                  "source": ["obj-207", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-207", 0],
                  "source": ["obj-208", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-186", 0],
                  "source": ["obj-209", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-143", 0],
                  "source": ["obj-21", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-195", 0],
                  "source": ["obj-211", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-210", 0],
                  "disabled": 1,
                  "source": ["obj-211", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-168", 0],
                  "source": ["obj-212", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-142", 0],
                  "source": ["obj-215", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-23", 1],
                  "source": ["obj-22", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-39", 0],
                  "source": ["obj-221", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-1", 0],
                  "source": ["obj-222", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-197", 0],
                  "source": ["obj-225", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-46", 0],
                  "source": ["obj-23", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-229", 0],
                  "source": ["obj-230", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-32", 0],
                  "source": ["obj-24", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-37", 0],
                  "disabled": 1,
                  "source": ["obj-24", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-144", 0],
                  "disabled": 1,
                  "source": ["obj-27", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-26", 0],
                  "source": ["obj-27", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-102", 1],
                  "source": ["obj-28", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-102", 0],
                  "source": ["obj-28", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-179", 0],
                  "source": ["obj-29", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-61", 0],
                  "source": ["obj-3", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-31", 0],
                  "source": ["obj-30", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-140", 0],
                  "order": 1,
                  "source": ["obj-31", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-160", 0],
                  "order": 0,
                  "source": ["obj-31", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-30", 0],
                  "source": ["obj-32", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-31", 1],
                  "order": 0,
                  "source": ["obj-32", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-36", 0],
                  "order": 1,
                  "source": ["obj-32", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-34", 0],
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
                  "destination": ["obj-33", 0],
                  "disabled": 1,
                  "source": ["obj-36", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-165", 0],
                  "source": ["obj-39", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-1", 0],
                  "source": ["obj-4", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-44", 1],
                  "source": ["obj-42", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-44", 0],
                  "source": ["obj-43", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-47", 0],
                  "source": ["obj-44", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-102", 3],
                  "order": 0,
                  "source": ["obj-45", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-102", 2],
                  "order": 0,
                  "source": ["obj-45", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-117", 0],
                  "order": 1,
                  "source": ["obj-45", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-44", 3],
                  "order": 1,
                  "source": ["obj-45", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-44", 2],
                  "order": 2,
                  "source": ["obj-45", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-166", 0],
                  "source": ["obj-46", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-51", 0],
                  "source": ["obj-46", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-48", 1],
                  "order": 1,
                  "source": ["obj-47", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-48", 0],
                  "order": 1,
                  "source": ["obj-47", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-49", 1],
                  "source": ["obj-47", 2]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-49", 0],
                  "order": 0,
                  "source": ["obj-47", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-50", 1],
                  "source": ["obj-47", 3]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-50", 0],
                  "order": 0,
                  "source": ["obj-47", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-22", 0],
                  "source": ["obj-48", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-48", 2],
                  "source": ["obj-49", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-15", 1],
                  "source": ["obj-5", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-48", 3],
                  "source": ["obj-50", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-166", 0],
                  "source": ["obj-51", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-60", 0],
                  "source": ["obj-52", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-163", 0],
                  "source": ["obj-53", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-132", 0],
                  "source": ["obj-54", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-41", 0],
                  "disabled": 1,
                  "source": ["obj-54", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-157", 1],
                  "source": ["obj-56", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-230", 0],
                  "source": ["obj-58", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-55", 0],
                  "disabled": 1,
                  "source": ["obj-58", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-156", 0],
                  "source": ["obj-60", 2]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-62", 1],
                  "source": ["obj-60", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-63", 0],
                  "source": ["obj-60", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-111", 0],
                  "source": ["obj-61", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-154", 0],
                  "order": 1,
                  "source": ["obj-62", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-66", 0],
                  "order": 0,
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
                  "destination": ["obj-115", 1],
                  "source": ["obj-64", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-155", 0],
                  "source": ["obj-64", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-63", 1],
                  "source": ["obj-65", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-65", 0],
                  "source": ["obj-66", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-114", 1],
                  "source": ["obj-67", 2]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-225", 0],
                  "source": ["obj-67", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-93", 0],
                  "source": ["obj-68", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-92", 0],
                  "source": ["obj-69", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-8", 0],
                  "source": ["obj-7", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-91", 0],
                  "source": ["obj-70", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-90", 0],
                  "source": ["obj-71", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-89", 0],
                  "source": ["obj-72", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-88", 0],
                  "source": ["obj-73", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-87", 0],
                  "source": ["obj-74", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-86", 0],
                  "source": ["obj-75", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-77", 0],
                  "source": ["obj-76", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-78", 0],
                  "source": ["obj-77", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-79", 0],
                  "source": ["obj-77", 1]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-80", 0],
                  "source": ["obj-77", 2]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-81", 0],
                  "source": ["obj-77", 3]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-82", 0],
                  "source": ["obj-77", 4]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-83", 0],
                  "source": ["obj-77", 5]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-84", 0],
                  "source": ["obj-77", 6]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-85", 0],
                  "source": ["obj-77", 7]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-75", 0],
                  "source": ["obj-78", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-74", 0],
                  "source": ["obj-79", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-9", 0],
                  "source": ["obj-8", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-73", 0],
                  "source": ["obj-80", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-72", 0],
                  "source": ["obj-81", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-71", 0],
                  "source": ["obj-82", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-70", 0],
                  "source": ["obj-83", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-69", 0],
                  "source": ["obj-84", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-68", 0],
                  "source": ["obj-85", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-94", 0],
                  "source": ["obj-86", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-94", 0],
                  "source": ["obj-87", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-94", 0],
                  "source": ["obj-88", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-94", 0],
                  "source": ["obj-89", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-6", 0],
                  "source": ["obj-9", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-94", 0],
                  "source": ["obj-90", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-94", 0],
                  "source": ["obj-91", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-94", 0],
                  "source": ["obj-92", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-94", 0],
                  "source": ["obj-93", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-67", 0],
                  "source": ["obj-95", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-97", 0],
                  "source": ["obj-96", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-110", 0],
                  "source": ["obj-97", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-104", 0],
                  "order": 0,
                  "source": ["obj-98", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-97", 2],
                  "order": 1,
                  "source": ["obj-98", 0]
                }
              },
              {
                "patchline": {
                  "destination": ["obj-96", 0],
                  "source": ["obj-99", 0]
                }
              }
            ],
            "default_bgcolor": [
              0.058823529411765,
              0.058823529411765,
              0.058823529411765,
              1
            ],
            "bgcolor": [0, 0, 0, 1],
            "bgfillcolor_type": "gradient",
            "bgfillcolor_color1": [
              0.218158140677074,
              0.218158080844553,
              0.218158096479747,
              1
            ],
            "bgfillcolor_color2": [
              0.218158140677074,
              0.218158080844553,
              0.218158096479747,
              1
            ],
            "bgfillcolor_color": [
              0.218158140677074,
              0.218158080844553,
              0.218158096479747,
              1
            ]
          },
          "patching_rect": [488, 1056, 52, 22],
          "presentation": 1,
          "presentation_rect": [67.0000142222234, 1048, 52, 22],
          "saved_object_attributes": {
            "bgcolor": [
              0.058823529411765,
              0.058823529411765,
              0.058823529411765,
              1
            ],
            "locked_bgcolor": [0, 0, 0, 1]
          },
          "text": "p popup"
        }
      },
      {
        "box": {
          "id": "obj-112",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [288, 528, 63, 22],
          "text": "s ---height"
        }
      },
      {
        "box": {
          "id": "obj-110",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1048, 1096, 61, 22],
          "text": "r ---height"
        }
      },
      {
        "box": {
          "id": "obj-104",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1048, 1136, 97, 22],
          "text": "expr 20./480*$f1"
        }
      },
      {
        "box": {
          "id": "obj-21",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [1048, 1176, 97, 22],
          "text": "prepend fontsize"
        }
      },
      {
        "box": {
          "id": "obj-368",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [800, 768, 31, 22],
          "text": "int 0"
        }
      },
      {
        "box": {
          "id": "obj-363",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [800, 736, 54, 22],
          "text": "r ---reset"
        }
      },
      {
        "box": {
          "id": "obj-294",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [824, 888, 30, 22],
          "text": "text"
        }
      },
      {
        "box": {
          "id": "obj-195",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [960, 784, 77, 22],
          "text": "automatic $1"
        }
      },
      {
        "box": {
          "id": "obj-293",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [928, 1176, 30, 22],
          "text": "int"
        }
      },
      {
        "box": {
          "id": "obj-197",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [928, 1120, 39, 22],
          "text": "round"
        }
      },
      {
        "box": {
          "id": "obj-305",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [928, 1216, 75, 22],
          "text": "prepend text"
        }
      },
      {
        "box": {
          "fontface": 1,
          "fontname": "Arial",
          "id": "obj-303",
          "linecount": 2,
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["jit_matrix", ""],
          "patching_rect": [840, 1256, 352, 35],
          "text": "jit.gl.text @fontsize 20 @color 0.8 0.8 0.8 1. @position -1.09 -0.8 0 @boundcalc 1 @antialias 1 @layer 9 @drawto ---mixer"
        }
      },
      {
        "box": {
          "id": "obj-312",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [888, 888, 30, 22],
          "text": "set"
        }
      },
      {
        "box": {
          "id": "obj-311",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["bang", "bang"],
          "patching_rect": [888, 832, 32, 22],
          "text": "t b b"
        }
      },
      {
        "box": {
          "id": "obj-309",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [968, 888, 31, 22],
          "text": "stop"
        }
      },
      {
        "box": {
          "id": "obj-308",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [928, 832, 35, 22],
          "text": "bang"
        }
      },
      {
        "box": {
          "id": "obj-307",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 3,
          "outlettype": ["", "", ""],
          "patching_rect": [888, 784, 56, 22],
          "text": "route 0 1"
        }
      },
      {
        "box": {
          "id": "obj-292",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [928, 1088, 55, 22],
          "text": "route fps"
        }
      },
      {
        "box": {
          "id": "obj-198",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["bang"],
          "patching_rect": [928, 936, 63, 22],
          "text": "metro 250"
        }
      },
      {
        "box": {
          "fontface": 0,
          "fontname": "Arial Bold",
          "fontsize": 10,
          "id": "obj-194",
          "maxclass": "jit.fpsgui",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [1008, 1024, 80, 33]
        }
      },
      {
        "box": {
          "id": "obj-196",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [928, 976, 51, 22],
          "text": "getstate"
        }
      },
      {
        "box": {
          "id": "obj-105",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [168, 936, 64, 22],
          "text": "listObjects"
        }
      },
      {
        "box": {
          "annotation_name": "FPS",
          "appearance": 1,
          "id": "obj-96",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "parameter_enable": 1,
          "patching_rect": [896, 752, 44, 15],
          "presentation": 1,
          "presentation_rect": [449.0000142222234, 134, 44, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "FPS",
              "parameter_enum": ["val1", "val2"],
              "parameter_longname": "FPS",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "FPS",
              "parameter_type": 2
            }
          },
          "text": "FPS",
          "texton": "FPS",
          "varname": "live.text[18]"
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
          "annotation_name": "Out 9",
          "id": "obj-95",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "parameter_enable": 1,
          "patching_rect": [1568, 808, 44, 15],
          "presentation": 1,
          "presentation_rect": [495.0000142222234, 59, 15, 15],
          "saved_attribute_attributes": {
            "activebgoncolor": {"expression": "themecolor.live_value_arc"},
            "valueof": {
              "parameter_annotation_name": "Out 9",
              "parameter_enum": ["val1", "val2"],
              "parameter_longname": "Out 9",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "Out 9",
              "parameter_type": 2
            }
          },
          "text": "9",
          "texton": "9",
          "varname": "live.text[17]"
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
          "annotation_name": "Out 8",
          "id": "obj-78",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "parameter_enable": 1,
          "patching_rect": [1512, 808, 44, 15],
          "presentation": 1,
          "presentation_rect": [476.00001822222373, 59, 15, 15],
          "saved_attribute_attributes": {
            "activebgoncolor": {"expression": "themecolor.live_value_arc"},
            "valueof": {
              "parameter_annotation_name": "Out 8",
              "parameter_enum": ["val1", "val2"],
              "parameter_longname": "Out 8",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "Out 8",
              "parameter_type": 2
            }
          },
          "text": "8",
          "texton": "8",
          "varname": "live.text[9]"
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
          "annotation_name": "Out 7",
          "id": "obj-79",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "parameter_enable": 1,
          "patching_rect": [1456, 808, 44, 15],
          "presentation": 1,
          "presentation_rect": [457.0000142222234, 59, 15, 15],
          "saved_attribute_attributes": {
            "activebgoncolor": {"expression": "themecolor.live_value_arc"},
            "valueof": {
              "parameter_annotation_name": "Out 7",
              "parameter_enum": ["val1", "val2"],
              "parameter_longname": "Out 7",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "Out 7",
              "parameter_type": 2
            }
          },
          "text": "7",
          "texton": "7",
          "varname": "live.text[10]"
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
          "annotation_name": "Out 6",
          "id": "obj-84",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "parameter_enable": 1,
          "patching_rect": [1400, 808, 44, 15],
          "presentation": 1,
          "presentation_rect": [495.00000355555585, 40, 15, 15],
          "saved_attribute_attributes": {
            "activebgoncolor": {"expression": "themecolor.live_value_arc"},
            "valueof": {
              "parameter_annotation_name": "Out 6",
              "parameter_enum": ["val1", "val2"],
              "parameter_longname": "Out 6",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "Out 6",
              "parameter_type": 2
            }
          },
          "text": "6",
          "texton": "6",
          "varname": "live.text[11]"
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
          "annotation_name": "Out 5",
          "id": "obj-85",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "parameter_enable": 1,
          "patching_rect": [1344, 808, 44, 15],
          "presentation": 1,
          "presentation_rect": [476.00001822222373, 40, 15, 15],
          "saved_attribute_attributes": {
            "activebgoncolor": {"expression": "themecolor.live_value_arc"},
            "valueof": {
              "parameter_annotation_name": "Out 5",
              "parameter_enum": ["val1", "val2"],
              "parameter_longname": "Out 5",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "Out 5",
              "parameter_type": 2
            }
          },
          "text": "5",
          "texton": "5",
          "varname": "live.text[12]"
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
          "annotation_name": "Out 4",
          "id": "obj-88",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "parameter_enable": 1,
          "patching_rect": [1288, 808, 44, 15],
          "presentation": 1,
          "presentation_rect": [457.00000355555585, 40, 15, 15],
          "saved_attribute_attributes": {
            "activebgoncolor": {"expression": "themecolor.live_value_arc"},
            "valueof": {
              "parameter_annotation_name": "Out 4",
              "parameter_enum": ["val1", "val2"],
              "parameter_longname": "Out 4",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "Out 4",
              "parameter_type": 2
            }
          },
          "text": "4",
          "texton": "4",
          "varname": "live.text[13]"
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
          "annotation_name": "Out 3",
          "id": "obj-89",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "parameter_enable": 1,
          "patching_rect": [1232, 808, 44, 15],
          "presentation": 1,
          "presentation_rect": [495.0000142222234, 21, 15, 15],
          "saved_attribute_attributes": {
            "activebgoncolor": {"expression": "themecolor.live_value_arc"},
            "valueof": {
              "parameter_annotation_name": "Out 3",
              "parameter_enum": ["val1", "val2"],
              "parameter_longname": "Out 3",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "Out 3",
              "parameter_type": 2
            }
          },
          "text": "3",
          "texton": "3",
          "varname": "live.text[14]"
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
          "annotation_name": "Out 2",
          "id": "obj-90",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "parameter_enable": 1,
          "patching_rect": [1176, 808, 44, 15],
          "presentation": 1,
          "presentation_rect": [476.00001822222373, 21, 15, 15],
          "saved_attribute_attributes": {
            "activebgoncolor": {"expression": "themecolor.live_value_arc"},
            "valueof": {
              "parameter_annotation_name": "Out 2",
              "parameter_enum": ["val1", "val2"],
              "parameter_longname": "Out 2",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "Out 2",
              "parameter_type": 2
            }
          },
          "text": "2",
          "texton": "2",
          "varname": "live.text[15]"
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
          "annotation_name": "Out 1",
          "id": "obj-91",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "parameter_enable": 1,
          "patching_rect": [1120, 808, 44, 15],
          "presentation": 1,
          "presentation_rect": [457.0000142222234, 21, 15, 15],
          "saved_attribute_attributes": {
            "activebgoncolor": {"expression": "themecolor.live_value_arc"},
            "valueof": {
              "parameter_annotation_name": "Out 1",
              "parameter_enum": ["val1", "val2"],
              "parameter_longname": "Out 1",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "Out 1",
              "parameter_type": 2
            }
          },
          "text": "1",
          "texton": "1",
          "varname": "live.text[16]"
        }
      },
      {
        "box": {
          "id": "obj-11",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["bang", "int"],
          "patching_rect": [96, 504, 30, 22],
          "text": "t b i"
        }
      },
      {
        "box": {
          "id": "obj-10",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["float"],
          "patching_rect": [80, 656, 31, 22],
          "text": "float"
        }
      },
      {
        "box": {
          "id": "obj-5",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["float"],
          "patching_rect": [120, 576, 55, 22],
          "text": "float 219"
        }
      },
      {
        "box": {
          "id": "obj-4",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["float"],
          "patching_rect": [80, 576, 48, 22],
          "text": "float 30"
        }
      },
      {
        "box": {
          "id": "obj-3",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 3,
          "outlettype": ["", "", ""],
          "patching_rect": [80, 544, 56, 22],
          "text": "route 0 1"
        }
      },
      {
        "box": {
          "id": "obj-100",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["float"],
          "patching_rect": [80, 712, 42, 22],
          "text": "+ 219."
        }
      },
      {
        "box": {
          "id": "obj-99",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [80, 776, 100, 22],
          "text": "prepend setwidth"
        }
      },
      {
        "box": {
          "id": "obj-98",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["bang", "int", "int"],
          "patching_rect": [80, 848, 83, 22],
          "text": "live.thisdevice"
        }
      },
      {
        "box": {
          "id": "obj-87",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [360, 792, 69, 22],
          "text": "s ---to_shift"
        }
      },
      {
        "box": {
          "id": "obj-86",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [24, 896, 67, 22],
          "text": "r ---to_shift"
        }
      },
      {
        "box": {
          "id": "obj-83",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["float"],
          "patching_rect": [360, 720, 30, 22],
          "text": "- 0."
        }
      },
      {
        "box": {
          "id": "obj-82",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["float", "bang"],
          "patching_rect": [360, 576, 30, 22],
          "text": "t f b"
        }
      },
      {
        "box": {
          "id": "obj-81",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["float"],
          "patching_rect": [408, 616, 98, 22],
          "text": "float 300.444444"
        }
      },
      {
        "box": {
          "id": "obj-80",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [24, 928, 123, 22],
          "text": "shiftPresentationX $1"
        }
      },
      {
        "box": {
          "code": "function shiftPresentationX(amount) {\n    var obj = this.patcher.firstobject;\n    while (obj) {\n        if (obj.getattr(\"presentation\") !== 0 && !obj?.varname?.endsWith('_static')) { // only if in Presentation\n            var rect = obj.getattr(\"presentation_rect\"); \n            // rect = [left, top, width, height]\n            rect[0] += amount; // shift left (x) by amount\n            obj.setattr(\"presentation_rect\", rect); \n        }\n        obj = obj.nextobject;\n    }\n}\r\n\r\nfunction listObjects() {\n    var obj = this.patcher.firstobject;\n    while (obj) {\n        var name = obj.varname ? obj.varname : \"(unnamed)\";\n        var cls  = obj.maxclass;\n        var pres = obj.getattr(\"presentation\");\n        var rect = obj.getattr(\"presentation_rect\");\n        \n        post(\"Object:\", name, \"| Class:\", cls, \n             \"| In Presentation:\", pres, \n             \"| Rect:\", rect, \"\\n\");\n        \n        obj = obj.nextobject;\n    }\n}\r\n",
          "filename": "none",
          "fontface": 0,
          "fontname": "<Monospaced>",
          "fontsize": 10,
          "id": "obj-74",
          "maxclass": "v8.codebox",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [24, 968, 340, 200],
          "saved_object_attributes": {"parameter_enable": 0}
        }
      },
      {
        "box": {
          "id": "obj-6",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [432, 536, 75, 22],
          "text": "prepend dim"
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
          "annotation_name": "More",
          "id": "obj-54",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "parameter_enable": 1,
          "patching_rect": [88, 472, 44, 15],
          "presentation": 1,
          "presentation_rect": [304.0000142222234, 153, 24, 15],
          "saved_attribute_attributes": {
            "activebgoncolor": {"expression": "themecolor.live_value_arc"},
            "valueof": {
              "parameter_annotation_name": "More",
              "parameter_enum": ["val1", "val2"],
              "parameter_longname": "More",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "More",
              "parameter_type": 2
            }
          },
          "text": "...",
          "texton": "...",
          "varname": "live.text[8]"
        }
      },
      {
        "box": {
          "annotation_name": "8",
          "id": "obj-53",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "parameter_enable": 1,
          "patching_rect": [1416, 248, 44, 15],
          "presentation": 1,
          "presentation_rect": [304.0000142222234, 134, 24, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "8",
              "parameter_enum": ["val1", "val2"],
              "parameter_longname": "8",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "8",
              "parameter_type": 2
            }
          },
          "text": "8",
          "texton": "8",
          "varname": "live.text[7]"
        }
      },
      {
        "box": {
          "annotation_name": "7",
          "id": "obj-52",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "parameter_enable": 1,
          "patching_rect": [1272, 248, 44, 15],
          "presentation": 1,
          "presentation_rect": [304.0000142222234, 115, 24, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "7",
              "parameter_enum": ["val1", "val2"],
              "parameter_longname": "7",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "7",
              "parameter_type": 2
            }
          },
          "text": "7",
          "texton": "7",
          "varname": "live.text[6]"
        }
      },
      {
        "box": {
          "annotation_name": "6",
          "id": "obj-51",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "parameter_enable": 1,
          "patching_rect": [1160, 248, 44, 15],
          "presentation": 1,
          "presentation_rect": [304.0000142222234, 96, 24, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "6",
              "parameter_enum": ["val1", "val2"],
              "parameter_longname": "6",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "6",
              "parameter_type": 2
            }
          },
          "text": "6",
          "texton": "6",
          "varname": "live.text[5]"
        }
      },
      {
        "box": {
          "annotation_name": "5",
          "id": "obj-50",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "parameter_enable": 1,
          "patching_rect": [1016, 248, 44, 15],
          "presentation": 1,
          "presentation_rect": [304.0000142222234, 78, 24, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "5",
              "parameter_enum": ["val1", "val2"],
              "parameter_longname": "5",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "5",
              "parameter_type": 2
            }
          },
          "text": "5",
          "texton": "5",
          "varname": "live.text[4]"
        }
      },
      {
        "box": {
          "annotation_name": "4",
          "id": "obj-49",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "parameter_enable": 1,
          "patching_rect": [912, 248, 44, 15],
          "presentation": 1,
          "presentation_rect": [304.0000142222234, 59, 24, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "4",
              "parameter_enum": ["val1", "val2"],
              "parameter_longname": "4",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "4",
              "parameter_type": 2
            }
          },
          "text": "4",
          "texton": "4",
          "varname": "live.text[3]"
        }
      },
      {
        "box": {
          "annotation_name": "3",
          "id": "obj-48",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "parameter_enable": 1,
          "patching_rect": [768, 248, 44, 15],
          "presentation": 1,
          "presentation_rect": [304.0000142222234, 40, 24, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "3",
              "parameter_enum": ["val1", "val2"],
              "parameter_longname": "3",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "3",
              "parameter_type": 2
            }
          },
          "text": "3",
          "texton": "3",
          "varname": "live.text[2]"
        }
      },
      {
        "box": {
          "annotation_name": "2",
          "id": "obj-47",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "parameter_enable": 1,
          "patching_rect": [656, 248, 44, 15],
          "presentation": 1,
          "presentation_rect": [304.0000142222234, 21, 24, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "2",
              "parameter_enum": ["val1", "val2"],
              "parameter_longname": "2",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "2",
              "parameter_type": 2
            }
          },
          "text": "2",
          "texton": "2",
          "varname": "live.text[1]"
        }
      },
      {
        "box": {
          "annotation_name": "1",
          "id": "obj-46",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "parameter_enable": 1,
          "patching_rect": [528, 232, 44, 15],
          "presentation": 1,
          "presentation_rect": [304.0000142222234, 2, 24, 15],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_annotation_name": "1",
              "parameter_enum": ["val1", "val2"],
              "parameter_initial": [1],
              "parameter_longname": "1",
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "1",
              "parameter_type": 1
            }
          },
          "text": "1",
          "texton": "1",
          "varname": "live.text"
        }
      },
      {
        "box": {
          "id": "obj-44",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["jit_matrix", ""],
          "patching_rect": [1544, 440, 264, 22],
          "text": "jit.gl.layer px-stream @layer 8 @drawto ---mixer"
        }
      },
      {
        "box": {
          "id": "obj-45",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["jit_matrix", ""],
          "patching_rect": [1376, 400, 264, 22],
          "text": "jit.gl.layer px-stream @layer 7 @drawto ---mixer"
        }
      },
      {
        "box": {
          "id": "obj-36",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["jit_matrix", ""],
          "patching_rect": [1256, 440, 264, 22],
          "text": "jit.gl.layer px-stream @layer 6 @drawto ---mixer"
        }
      },
      {
        "box": {
          "id": "obj-37",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["jit_matrix", ""],
          "patching_rect": [1064, 400, 264, 22],
          "text": "jit.gl.layer px-stream @layer 5 @drawto ---mixer"
        }
      },
      {
        "box": {
          "id": "obj-31",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["jit_matrix", ""],
          "patching_rect": [944, 440, 264, 22],
          "text": "jit.gl.layer px-stream @layer 4 @drawto ---mixer"
        }
      },
      {
        "box": {
          "id": "obj-32",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["jit_matrix", ""],
          "patching_rect": [760, 400, 264, 22],
          "text": "jit.gl.layer px-stream @layer 3 @drawto ---mixer"
        }
      },
      {
        "box": {
          "id": "obj-30",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["jit_matrix", ""],
          "patching_rect": [648, 440, 264, 22],
          "text": "jit.gl.layer px-stream @layer 2 @drawto ---mixer"
        }
      },
      {
        "box": {
          "id": "obj-29",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["jit_gl_texture", "", ""],
          "patching_rect": [520, 680, 639, 22],
          "text": "jit.gl.node px-stream @adapt 0 @capture 1 @name ---mixer @blend_enable 1 @erase_color 0 0 0 1 @dim 1920 1080"
        }
      },
      {
        "box": {
          "id": "obj-25",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["jit_matrix", ""],
          "patching_rect": [464, 400, 264, 22],
          "text": "jit.gl.layer px-stream @layer 1 @drawto ---mixer"
        }
      },
      {
        "box": {
          "id": "obj-23",
          "maxclass": "newobj",
          "numinlets": 9,
          "numoutlets": 9,
          "outlettype": ["", "", "", "", "", "", "", "", ""],
          "patching_rect": [496, 136, 116, 22],
          "text": "route 1 2 3 4 5 6 7 8"
        }
      },
      {
        "box": {
          "id": "obj-20",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [496, 72, 70, 22],
          "text": "r px_render"
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
          "patching_rect": [16, 16, 322, 47],
          "saved_attribute_attributes": {
            "textcolor": {"expression": "themecolor.live_control_fg"}
          },
          "text": "PX View by darosh\nhttps://github.com/darosh/px-stream"
        }
      },
      {
        "box": {
          "id": "obj-15",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["float"],
          "patching_rect": [232, 568, 40, 22],
          "text": "* 169."
        }
      },
      {
        "box": {
          "id": "obj-33",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [232, 792, 67, 22],
          "save": ["#N", "thispatcher", ";", "#Q", "end", ";"],
          "text": "thispatcher"
        }
      },
      {
        "box": {
          "id": "obj-14",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [232, 720, 114, 22],
          "text": "prepend script send"
        }
      },
      {
        "box": {
          "id": "obj-13",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [232, 656, 234, 22],
          "text": "pwin_static presentation_rect 0. 0. $1 169."
        }
      },
      {
        "box": {
          "id": "obj-9",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["float"],
          "patching_rect": [232, 528, 30, 22],
          "text": "/ 1."
        }
      },
      {
        "box": {
          "id": "obj-8",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["int", "int"],
          "patching_rect": [232, 480, 47, 22],
          "text": "unpack"
        }
      },
      {
        "box": {
          "id": "obj-7",
          "maxclass": "jit.pwindow",
          "numinlets": 1,
          "numoutlets": 2,
          "onscreen": 0,
          "outlettype": ["jit_matrix", ""],
          "patching_rect": [520, 760, 80, 60],
          "presentation": 1,
          "presentation_rect": [0, 0, 300.44444444444446, 169],
          "sync": 1,
          "varname": "pwin_static"
        }
      },
      {
        "box": {
          "id": "obj-349",
          "maxclass": "button",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": ["bang"],
          "parameter_enable": 0,
          "patching_rect": [24, 176, 24, 24]
        }
      },
      {
        "box": {
          "id": "obj-347",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [24, 224, 56, 22],
          "text": "s ---reset"
        }
      },
      {
        "box": {
          "fontname": "Arial Bold",
          "fontsize": 10,
          "id": "obj-2",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["signal", "signal"],
          "patching_rect": [24, 128, 51, 20],
          "text": "plugout~"
        }
      },
      {
        "box": {
          "fontname": "Arial Bold",
          "fontsize": 10,
          "id": "obj-1",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["signal", "signal"],
          "patching_rect": [24, 72, 44, 20],
          "text": "plugin~"
        }
      },
      {
        "box": {
          "id": "obj-94",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [200, 80, 104, 18],
          "presentation": 1,
          "presentation_rect": [454.0000186666682, 4, 59, 18],
          "saved_attribute_attributes": {
            "textcolor": {"expression": "themecolor.live_control_text_zombie"}
          },
          "text": "Mix OUT",
          "textcolor": [
            0.57636836783545,
            0.576368229540612,
            0.576368265679262,
            1
          ],
          "textjustification": 0
        }
      },
      {
        "box": {
          "angle": 270,
          "bgcolor": [0.235, 0.235, 0.235, 1],
          "id": "obj-93",
          "maxclass": "panel",
          "mode": 0,
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [200, 72, 128, 128],
          "presentation": 1,
          "presentation_rect": [450.0000142222234, 2, 65, 79],
          "proportion": 0.39,
          "saved_attribute_attributes": {
            "bgfillcolor": {"expression": "themecolor.live_control_text_bg"}
          }
        }
      }
    ],
    "lines": [
      {"patchline": {"destination": ["obj-2", 1], "source": ["obj-1", 1]}},
      {"patchline": {"destination": ["obj-2", 0], "source": ["obj-1", 0]}},
      {"patchline": {"destination": ["obj-100", 0], "source": ["obj-10", 0]}},
      {"patchline": {"destination": ["obj-99", 0], "source": ["obj-100", 0]}},
      {"patchline": {"destination": ["obj-21", 0], "source": ["obj-104", 0]}},
      {"patchline": {"destination": ["obj-74", 0], "source": ["obj-105", 0]}},
      {"patchline": {"destination": ["obj-159", 1], "source": ["obj-106", 0]}},
      {"patchline": {"destination": ["obj-107", 0], "source": ["obj-108", 0]}},
      {"patchline": {"destination": ["obj-114", 0], "source": ["obj-109", 0]}},
      {"patchline": {"destination": ["obj-10", 0], "source": ["obj-11", 0]}},
      {"patchline": {"destination": ["obj-3", 0], "source": ["obj-11", 1]}},
      {"patchline": {"destination": ["obj-104", 0], "source": ["obj-110", 0]}},
      {"patchline": {"destination": ["obj-107", 0], "source": ["obj-111", 0]}},
      {
        "patchline": {
          "destination": ["obj-78", 0],
          "order": 1,
          "source": ["obj-113", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-79", 0],
          "order": 2,
          "source": ["obj-113", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-84", 0],
          "order": 3,
          "source": ["obj-113", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-85", 0],
          "order": 4,
          "source": ["obj-113", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-88", 0],
          "order": 5,
          "source": ["obj-113", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-89", 0],
          "order": 6,
          "source": ["obj-113", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-90", 0],
          "order": 7,
          "source": ["obj-113", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-95", 0],
          "order": 0,
          "source": ["obj-113", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-171", 0],
          "order": 1,
          "source": ["obj-114", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-61", 0],
          "order": 0,
          "source": ["obj-114", 0]
        }
      },
      {"patchline": {"destination": ["obj-108", 0], "source": ["obj-115", 0]}},
      {
        "patchline": {
          "destination": ["obj-78", 0],
          "order": 1,
          "source": ["obj-116", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-79", 0],
          "order": 2,
          "source": ["obj-116", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-84", 0],
          "order": 3,
          "source": ["obj-116", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-85", 0],
          "order": 4,
          "source": ["obj-116", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-88", 0],
          "order": 5,
          "source": ["obj-116", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-89", 0],
          "order": 6,
          "source": ["obj-116", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-91", 0],
          "order": 7,
          "source": ["obj-116", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-95", 0],
          "order": 0,
          "source": ["obj-116", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-78", 0],
          "order": 1,
          "source": ["obj-117", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-79", 0],
          "order": 2,
          "source": ["obj-117", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-84", 0],
          "order": 3,
          "source": ["obj-117", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-85", 0],
          "order": 4,
          "source": ["obj-117", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-88", 0],
          "order": 5,
          "source": ["obj-117", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-90", 0],
          "order": 6,
          "source": ["obj-117", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-91", 0],
          "order": 7,
          "source": ["obj-117", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-95", 0],
          "order": 0,
          "source": ["obj-117", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-78", 0],
          "order": 1,
          "source": ["obj-118", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-79", 0],
          "order": 2,
          "source": ["obj-118", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-84", 0],
          "order": 3,
          "source": ["obj-118", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-85", 0],
          "order": 4,
          "source": ["obj-118", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-89", 0],
          "order": 5,
          "source": ["obj-118", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-90", 0],
          "order": 6,
          "source": ["obj-118", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-91", 0],
          "order": 7,
          "source": ["obj-118", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-95", 0],
          "order": 0,
          "source": ["obj-118", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-78", 0],
          "order": 1,
          "source": ["obj-119", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-79", 0],
          "order": 2,
          "source": ["obj-119", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-84", 0],
          "order": 3,
          "source": ["obj-119", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-88", 0],
          "order": 4,
          "source": ["obj-119", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-89", 0],
          "order": 5,
          "source": ["obj-119", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-90", 0],
          "order": 6,
          "source": ["obj-119", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-91", 0],
          "order": 7,
          "source": ["obj-119", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-95", 0],
          "order": 0,
          "source": ["obj-119", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-78", 0],
          "order": 1,
          "source": ["obj-120", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-79", 0],
          "order": 2,
          "source": ["obj-120", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-85", 0],
          "order": 3,
          "source": ["obj-120", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-88", 0],
          "order": 4,
          "source": ["obj-120", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-89", 0],
          "order": 5,
          "source": ["obj-120", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-90", 0],
          "order": 6,
          "source": ["obj-120", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-91", 0],
          "order": 7,
          "source": ["obj-120", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-95", 0],
          "order": 0,
          "source": ["obj-120", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-78", 0],
          "order": 1,
          "source": ["obj-121", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-84", 0],
          "order": 2,
          "source": ["obj-121", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-85", 0],
          "order": 3,
          "source": ["obj-121", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-88", 0],
          "order": 4,
          "source": ["obj-121", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-89", 0],
          "order": 5,
          "source": ["obj-121", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-90", 0],
          "order": 6,
          "source": ["obj-121", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-91", 0],
          "order": 7,
          "source": ["obj-121", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-95", 0],
          "order": 0,
          "source": ["obj-121", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-79", 0],
          "order": 1,
          "source": ["obj-122", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-84", 0],
          "order": 2,
          "source": ["obj-122", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-85", 0],
          "order": 3,
          "source": ["obj-122", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-88", 0],
          "order": 4,
          "source": ["obj-122", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-89", 0],
          "order": 5,
          "source": ["obj-122", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-90", 0],
          "order": 6,
          "source": ["obj-122", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-91", 0],
          "order": 7,
          "source": ["obj-122", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-95", 0],
          "order": 0,
          "source": ["obj-122", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-78", 0],
          "order": 0,
          "source": ["obj-123", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-79", 0],
          "order": 1,
          "source": ["obj-123", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-84", 0],
          "order": 2,
          "source": ["obj-123", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-85", 0],
          "order": 3,
          "source": ["obj-123", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-88", 0],
          "order": 4,
          "source": ["obj-123", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-89", 0],
          "order": 5,
          "source": ["obj-123", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-90", 0],
          "order": 6,
          "source": ["obj-123", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-91", 0],
          "order": 7,
          "source": ["obj-123", 0]
        }
      },
      {"patchline": {"destination": ["obj-133", 0], "source": ["obj-124", 0]}},
      {"patchline": {"destination": ["obj-133", 0], "source": ["obj-125", 0]}},
      {"patchline": {"destination": ["obj-133", 0], "source": ["obj-126", 0]}},
      {"patchline": {"destination": ["obj-133", 0], "source": ["obj-127", 0]}},
      {"patchline": {"destination": ["obj-133", 0], "source": ["obj-128", 0]}},
      {"patchline": {"destination": ["obj-133", 0], "source": ["obj-129", 0]}},
      {"patchline": {"destination": ["obj-14", 0], "source": ["obj-13", 0]}},
      {"patchline": {"destination": ["obj-133", 0], "source": ["obj-130", 0]}},
      {"patchline": {"destination": ["obj-133", 0], "source": ["obj-131", 0]}},
      {"patchline": {"destination": ["obj-133", 0], "source": ["obj-132", 0]}},
      {
        "patchline": {
          "destination": ["obj-139", 0],
          "order": 0,
          "source": ["obj-133", 1]
        }
      },
      {
        "patchline": {
          "destination": ["obj-145", 0],
          "order": 1,
          "source": ["obj-133", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-160", 0],
          "order": 1,
          "source": ["obj-133", 1]
        }
      },
      {
        "patchline": {
          "destination": ["obj-161", 0],
          "order": 0,
          "source": ["obj-133", 0]
        }
      },
      {"patchline": {"destination": ["obj-138", 0], "source": ["obj-136", 0]}},
      {"patchline": {"destination": ["obj-136", 0], "source": ["obj-137", 0]}},
      {"patchline": {"destination": ["obj-134", 0], "source": ["obj-138", 0]}},
      {"patchline": {"destination": ["obj-137", 0], "source": ["obj-139", 1]}},
      {"patchline": {"destination": ["obj-142", 0], "source": ["obj-139", 0]}},
      {"patchline": {"destination": ["obj-33", 0], "source": ["obj-14", 0]}},
      {"patchline": {"destination": ["obj-146", 0], "source": ["obj-140", 0]}},
      {"patchline": {"destination": ["obj-140", 0], "source": ["obj-141", 0]}},
      {"patchline": {"destination": ["obj-134", 0], "source": ["obj-142", 0]}},
      {"patchline": {"destination": ["obj-148", 0], "source": ["obj-143", 0]}},
      {"patchline": {"destination": ["obj-191", 0], "source": ["obj-144", 1]}},
      {"patchline": {"destination": ["obj-134", 0], "source": ["obj-145", 0]}},
      {
        "patchline": {
          "destination": ["obj-6", 0],
          "order": 0,
          "source": ["obj-146", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-8", 0],
          "order": 1,
          "source": ["obj-146", 0]
        }
      },
      {"patchline": {"destination": ["obj-23", 0], "source": ["obj-147", 0]}},
      {"patchline": {"destination": ["obj-114", 0], "source": ["obj-148", 1]}},
      {"patchline": {"destination": ["obj-46", 0], "source": ["obj-149", 0]}},
      {"patchline": {"destination": ["obj-47", 0], "source": ["obj-149", 1]}},
      {"patchline": {"destination": ["obj-48", 0], "source": ["obj-149", 2]}},
      {"patchline": {"destination": ["obj-49", 0], "source": ["obj-149", 3]}},
      {"patchline": {"destination": ["obj-50", 0], "source": ["obj-149", 4]}},
      {"patchline": {"destination": ["obj-51", 0], "source": ["obj-149", 5]}},
      {"patchline": {"destination": ["obj-52", 0], "source": ["obj-149", 6]}},
      {"patchline": {"destination": ["obj-53", 0], "source": ["obj-149", 7]}},
      {
        "patchline": {
          "destination": ["obj-10", 0],
          "order": 2,
          "source": ["obj-15", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-13", 0],
          "order": 1,
          "source": ["obj-15", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-82", 0],
          "order": 0,
          "source": ["obj-15", 0]
        }
      },
      {"patchline": {"destination": ["obj-213", 0], "source": ["obj-150", 1]}},
      {"patchline": {"destination": ["obj-205", 0], "source": ["obj-151", 0]}},
      {"patchline": {"destination": ["obj-214", 0], "source": ["obj-152", 1]}},
      {"patchline": {"destination": ["obj-26", 0], "source": ["obj-153", 1]}},
      {"patchline": {"destination": ["obj-28", 0], "source": ["obj-154", 1]}},
      {"patchline": {"destination": ["obj-38", 0], "source": ["obj-155", 1]}},
      {"patchline": {"destination": ["obj-39", 0], "source": ["obj-156", 1]}},
      {"patchline": {"destination": ["obj-58", 0], "source": ["obj-157", 1]}},
      {"patchline": {"destination": ["obj-106", 1], "source": ["obj-158", 1]}},
      {"patchline": {"destination": ["obj-72", 0], "source": ["obj-158", 0]}},
      {"patchline": {"destination": ["obj-64", 0], "source": ["obj-159", 7]}},
      {"patchline": {"destination": ["obj-64", 0], "source": ["obj-159", 6]}},
      {"patchline": {"destination": ["obj-64", 0], "source": ["obj-159", 5]}},
      {"patchline": {"destination": ["obj-64", 0], "source": ["obj-159", 4]}},
      {"patchline": {"destination": ["obj-64", 0], "source": ["obj-159", 3]}},
      {"patchline": {"destination": ["obj-64", 0], "source": ["obj-159", 2]}},
      {"patchline": {"destination": ["obj-64", 0], "source": ["obj-159", 1]}},
      {"patchline": {"destination": ["obj-64", 0], "source": ["obj-159", 0]}},
      {"patchline": {"destination": ["obj-159", 0], "source": ["obj-160", 0]}},
      {"patchline": {"destination": ["obj-72", 1], "source": ["obj-160", 1]}},
      {"patchline": {"destination": ["obj-160", 0], "source": ["obj-161", 0]}},
      {"patchline": {"destination": ["obj-206", 0], "source": ["obj-162", 0]}},
      {"patchline": {"destination": ["obj-165", 1], "source": ["obj-164", 0]}},
      {"patchline": {"destination": ["obj-202", 0], "source": ["obj-165", 0]}},
      {"patchline": {"destination": ["obj-207", 0], "source": ["obj-166", 0]}},
      {"patchline": {"destination": ["obj-208", 0], "source": ["obj-168", 0]}},
      {"patchline": {"destination": ["obj-209", 0], "source": ["obj-169", 0]}},
      {"patchline": {"destination": ["obj-170", 0], "source": ["obj-171", 0]}},
      {"patchline": {"destination": ["obj-170", 0], "source": ["obj-172", 0]}},
      {"patchline": {"destination": ["obj-210", 0], "source": ["obj-173", 0]}},
      {"patchline": {"destination": ["obj-211", 0], "source": ["obj-174", 0]}},
      {"patchline": {"destination": ["obj-203", 0], "source": ["obj-175", 0]}},
      {"patchline": {"destination": ["obj-34", 0], "source": ["obj-177", 0]}},
      {"patchline": {"destination": ["obj-177", 0], "source": ["obj-178", 0]}},
      {"patchline": {"destination": ["obj-177", 1], "source": ["obj-179", 0]}},
      {"patchline": {"destination": ["obj-57", 0], "source": ["obj-181", 0]}},
      {"patchline": {"destination": ["obj-180", 0], "source": ["obj-182", 1]}},
      {"patchline": {"destination": ["obj-57", 0], "source": ["obj-183", 0]}},
      {"patchline": {"destination": ["obj-57", 0], "source": ["obj-184", 0]}},
      {"patchline": {"destination": ["obj-57", 0], "source": ["obj-185", 0]}},
      {"patchline": {"destination": ["obj-57", 0], "source": ["obj-186", 0]}},
      {"patchline": {"destination": ["obj-57", 0], "source": ["obj-187", 0]}},
      {"patchline": {"destination": ["obj-57", 0], "source": ["obj-188", 0]}},
      {"patchline": {"destination": ["obj-57", 0], "source": ["obj-189", 0]}},
      {"patchline": {"destination": ["obj-25", 0], "source": ["obj-191", 0]}},
      {"patchline": {"destination": ["obj-292", 0], "source": ["obj-194", 1]}},
      {"patchline": {"destination": ["obj-303", 0], "source": ["obj-195", 0]}},
      {"patchline": {"destination": ["obj-194", 0], "source": ["obj-196", 0]}},
      {"patchline": {"destination": ["obj-293", 0], "source": ["obj-197", 0]}},
      {"patchline": {"destination": ["obj-196", 0], "source": ["obj-198", 0]}},
      {"patchline": {"destination": ["obj-147", 0], "source": ["obj-20", 0]}},
      {"patchline": {"destination": ["obj-201", 0], "source": ["obj-200", 0]}},
      {"patchline": {"destination": ["obj-25", 0], "source": ["obj-201", 1]}},
      {"patchline": {"destination": ["obj-29", 0], "source": ["obj-201", 0]}},
      {"patchline": {"destination": ["obj-30", 0], "source": ["obj-201", 2]}},
      {"patchline": {"destination": ["obj-31", 0], "source": ["obj-201", 4]}},
      {"patchline": {"destination": ["obj-32", 0], "source": ["obj-201", 3]}},
      {"patchline": {"destination": ["obj-36", 0], "source": ["obj-201", 6]}},
      {"patchline": {"destination": ["obj-37", 0], "source": ["obj-201", 5]}},
      {"patchline": {"destination": ["obj-44", 0], "source": ["obj-201", 8]}},
      {"patchline": {"destination": ["obj-45", 0], "source": ["obj-201", 7]}},
      {"patchline": {"destination": ["obj-163", 0], "source": ["obj-202", 1]}},
      {"patchline": {"destination": ["obj-163", 0], "source": ["obj-202", 0]}},
      {"patchline": {"destination": ["obj-200", 0], "source": ["obj-203", 0]}},
      {"patchline": {"destination": ["obj-200", 0], "source": ["obj-204", 0]}},
      {"patchline": {"destination": ["obj-200", 0], "source": ["obj-205", 0]}},
      {"patchline": {"destination": ["obj-200", 0], "source": ["obj-206", 0]}},
      {"patchline": {"destination": ["obj-200", 0], "source": ["obj-207", 0]}},
      {"patchline": {"destination": ["obj-200", 0], "source": ["obj-208", 0]}},
      {"patchline": {"destination": ["obj-200", 0], "source": ["obj-209", 0]}},
      {"patchline": {"destination": ["obj-303", 0], "source": ["obj-21", 0]}},
      {"patchline": {"destination": ["obj-200", 0], "source": ["obj-210", 0]}},
      {"patchline": {"destination": ["obj-200", 0], "source": ["obj-211", 0]}},
      {"patchline": {"destination": ["obj-30", 0], "source": ["obj-213", 0]}},
      {"patchline": {"destination": ["obj-32", 0], "source": ["obj-214", 0]}},
      {"patchline": {"destination": ["obj-149", 0], "source": ["obj-22", 0]}},
      {"patchline": {"destination": ["obj-191", 2], "source": ["obj-23", 0]}},
      {"patchline": {"destination": ["obj-213", 2], "source": ["obj-23", 1]}},
      {"patchline": {"destination": ["obj-214", 2], "source": ["obj-23", 2]}},
      {"patchline": {"destination": ["obj-26", 2], "source": ["obj-23", 3]}},
      {"patchline": {"destination": ["obj-28", 2], "source": ["obj-23", 4]}},
      {"patchline": {"destination": ["obj-38", 2], "source": ["obj-23", 5]}},
      {"patchline": {"destination": ["obj-39", 2], "source": ["obj-23", 6]}},
      {"patchline": {"destination": ["obj-58", 2], "source": ["obj-23", 7]}},
      {"patchline": {"destination": ["obj-35", 0], "source": ["obj-24", 0]}},
      {"patchline": {"destination": ["obj-31", 0], "source": ["obj-26", 0]}},
      {"patchline": {"destination": ["obj-37", 0], "source": ["obj-28", 0]}},
      {
        "patchline": {
          "destination": ["obj-134", 0],
          "order": 1,
          "source": ["obj-29", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-158", 0],
          "order": 0,
          "source": ["obj-29", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-194", 0],
          "order": 2,
          "source": ["obj-29", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-66", 1],
          "order": 5,
          "source": ["obj-29", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-67", 1],
          "order": 3,
          "source": ["obj-29", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-7", 0],
          "order": 4,
          "source": ["obj-29", 0]
        }
      },
      {"patchline": {"destination": ["obj-197", 0], "source": ["obj-292", 0]}},
      {"patchline": {"destination": ["obj-305", 0], "source": ["obj-293", 0]}},
      {"patchline": {"destination": ["obj-303", 0], "source": ["obj-294", 0]}},
      {"patchline": {"destination": ["obj-4", 0], "source": ["obj-3", 0]}},
      {"patchline": {"destination": ["obj-5", 0], "source": ["obj-3", 1]}},
      {"patchline": {"destination": ["obj-303", 0], "source": ["obj-305", 0]}},
      {"patchline": {"destination": ["obj-308", 0], "source": ["obj-307", 1]}},
      {"patchline": {"destination": ["obj-311", 0], "source": ["obj-307", 0]}},
      {"patchline": {"destination": ["obj-198", 0], "source": ["obj-308", 0]}},
      {"patchline": {"destination": ["obj-198", 0], "source": ["obj-309", 0]}},
      {
        "patchline": {
          "destination": ["obj-294", 0],
          "order": 2,
          "source": ["obj-311", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-303", 0],
          "order": 1,
          "source": ["obj-311", 0]
        }
      },
      {"patchline": {"destination": ["obj-309", 0], "source": ["obj-311", 1]}},
      {
        "patchline": {
          "destination": ["obj-312", 0],
          "order": 0,
          "source": ["obj-311", 0]
        }
      },
      {"patchline": {"destination": ["obj-107", 0], "source": ["obj-34", 0]}},
      {"patchline": {"destination": ["obj-347", 0], "source": ["obj-349", 0]}},
      {"patchline": {"destination": ["obj-41", 0], "source": ["obj-35", 0]}},
      {"patchline": {"destination": ["obj-42", 0], "source": ["obj-35", 1]}},
      {"patchline": {"destination": ["obj-368", 0], "source": ["obj-363", 0]}},
      {"patchline": {"destination": ["obj-96", 0], "source": ["obj-368", 0]}},
      {"patchline": {"destination": ["obj-36", 0], "source": ["obj-38", 0]}},
      {"patchline": {"destination": ["obj-45", 0], "source": ["obj-39", 0]}},
      {"patchline": {"destination": ["obj-100", 1], "source": ["obj-4", 0]}},
      {"patchline": {"destination": ["obj-178", 0], "source": ["obj-41", 0]}},
      {"patchline": {"destination": ["obj-179", 0], "source": ["obj-42", 0]}},
      {
        "patchline": {
          "destination": ["obj-181", 0],
          "order": 0,
          "source": ["obj-46", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-191", 1],
          "order": 1,
          "source": ["obj-46", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-183", 0],
          "order": 0,
          "source": ["obj-47", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-213", 1],
          "order": 1,
          "source": ["obj-47", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-184", 0],
          "order": 0,
          "source": ["obj-48", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-214", 1],
          "order": 1,
          "source": ["obj-48", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-185", 0],
          "order": 0,
          "source": ["obj-49", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-26", 1],
          "order": 1,
          "source": ["obj-49", 0]
        }
      },
      {"patchline": {"destination": ["obj-100", 1], "source": ["obj-5", 0]}},
      {
        "patchline": {
          "destination": ["obj-186", 0],
          "order": 0,
          "source": ["obj-50", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-28", 1],
          "order": 1,
          "source": ["obj-50", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-187", 0],
          "order": 0,
          "source": ["obj-51", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-38", 1],
          "order": 1,
          "source": ["obj-51", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-188", 0],
          "order": 0,
          "source": ["obj-52", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-39", 1],
          "order": 1,
          "source": ["obj-52", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-189", 0],
          "order": 0,
          "source": ["obj-53", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-58", 1],
          "order": 1,
          "source": ["obj-53", 0]
        }
      },
      {"patchline": {"destination": ["obj-11", 0], "source": ["obj-54", 0]}},
      {"patchline": {"destination": ["obj-44", 0], "source": ["obj-58", 0]}},
      {"patchline": {"destination": ["obj-163", 0], "source": ["obj-59", 0]}},
      {
        "patchline": {
          "destination": ["obj-107", 2],
          "order": 2,
          "source": ["obj-6", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-24", 0],
          "order": 3,
          "source": ["obj-6", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-29", 0],
          "order": 1,
          "source": ["obj-6", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-44", 0],
          "order": 0,
          "source": ["obj-6", 0]
        }
      },
      {"patchline": {"destination": ["obj-204", 0], "source": ["obj-60", 0]}},
      {"patchline": {"destination": ["obj-107", 1], "source": ["obj-61", 1]}},
      {"patchline": {"destination": ["obj-111", 0], "source": ["obj-61", 0]}},
      {"patchline": {"destination": ["obj-46", 0], "source": ["obj-62", 0]}},
      {
        "patchline": {
          "destination": ["obj-143", 0],
          "order": 1,
          "source": ["obj-63", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-165", 0],
          "order": 5,
          "source": ["obj-63", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-65", 0],
          "order": 3,
          "source": ["obj-63", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-66", 0],
          "order": 4,
          "source": ["obj-63", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-68", 0],
          "order": 2,
          "source": ["obj-63", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-69", 0],
          "order": 0,
          "source": ["obj-63", 0]
        }
      },
      {"patchline": {"destination": ["obj-73", 0], "source": ["obj-65", 0]}},
      {"patchline": {"destination": ["obj-59", 0], "source": ["obj-66", 0]}},
      {"patchline": {"destination": ["obj-107", 3], "source": ["obj-67", 0]}},
      {"patchline": {"destination": ["obj-67", 0], "source": ["obj-68", 0]}},
      {"patchline": {"destination": ["obj-70", 0], "source": ["obj-69", 0]}},
      {"patchline": {"destination": ["obj-109", 0], "source": ["obj-7", 1]}},
      {
        "patchline": {
          "destination": ["obj-111", 0],
          "order": 0,
          "source": ["obj-70", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-172", 0],
          "order": 1,
          "source": ["obj-70", 0]
        }
      },
      {"patchline": {"destination": ["obj-67", 0], "source": ["obj-71", 0]}},
      {"patchline": {"destination": ["obj-106", 0], "source": ["obj-72", 0]}},
      {
        "patchline": {
          "destination": ["obj-122", 0],
          "order": 1,
          "source": ["obj-78", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-131", 0],
          "order": 0,
          "source": ["obj-78", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-121", 0],
          "order": 1,
          "source": ["obj-79", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-130", 0],
          "order": 0,
          "source": ["obj-79", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-112", 0],
          "order": 0,
          "source": ["obj-8", 1]
        }
      },
      {
        "patchline": {
          "destination": ["obj-9", 1],
          "order": 1,
          "source": ["obj-8", 1]
        }
      },
      {"patchline": {"destination": ["obj-9", 0], "source": ["obj-8", 0]}},
      {"patchline": {"destination": ["obj-74", 0], "source": ["obj-80", 0]}},
      {"patchline": {"destination": ["obj-83", 1], "source": ["obj-81", 0]}},
      {"patchline": {"destination": ["obj-81", 0], "source": ["obj-82", 1]}},
      {
        "patchline": {
          "destination": ["obj-81", 1],
          "order": 0,
          "source": ["obj-82", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-83", 0],
          "order": 1,
          "source": ["obj-82", 0]
        }
      },
      {"patchline": {"destination": ["obj-87", 0], "source": ["obj-83", 0]}},
      {
        "patchline": {
          "destination": ["obj-120", 0],
          "order": 1,
          "source": ["obj-84", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-129", 0],
          "order": 0,
          "source": ["obj-84", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-119", 0],
          "order": 1,
          "source": ["obj-85", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-128", 0],
          "order": 0,
          "source": ["obj-85", 0]
        }
      },
      {"patchline": {"destination": ["obj-80", 0], "source": ["obj-86", 0]}},
      {
        "patchline": {
          "destination": ["obj-118", 0],
          "order": 1,
          "source": ["obj-88", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-127", 0],
          "order": 0,
          "source": ["obj-88", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-117", 0],
          "order": 1,
          "source": ["obj-89", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-126", 0],
          "order": 0,
          "source": ["obj-89", 0]
        }
      },
      {"patchline": {"destination": ["obj-15", 0], "source": ["obj-9", 0]}},
      {
        "patchline": {
          "destination": ["obj-116", 0],
          "order": 1,
          "source": ["obj-90", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-125", 0],
          "order": 0,
          "source": ["obj-90", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-113", 0],
          "order": 1,
          "source": ["obj-91", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-124", 0],
          "order": 0,
          "source": ["obj-91", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-123", 0],
          "order": 1,
          "source": ["obj-95", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-132", 0],
          "order": 0,
          "source": ["obj-95", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-195", 0],
          "order": 0,
          "source": ["obj-96", 0]
        }
      },
      {
        "patchline": {
          "destination": ["obj-307", 0],
          "order": 1,
          "source": ["obj-96", 0]
        }
      },
      {"patchline": {"destination": ["obj-98", 0], "source": ["obj-99", 0]}}
    ],
    "parameters": {
      "obj-107::obj-142": ["Fullscreen", "Fullscreen", 0],
      "obj-107::obj-68": ["Ch 8", "live.text", 0],
      "obj-107::obj-69": ["Ch 7", "live.text", 0],
      "obj-107::obj-70": ["Ch 6", "live.text", 0],
      "obj-107::obj-71": ["Ch 5", "live.text", 0],
      "obj-107::obj-72": ["Ch 4", "live.text", 0],
      "obj-107::obj-73": ["Ch 3", "live.text", 0],
      "obj-107::obj-74": ["Ch 2", "live.text", 0],
      "obj-107::obj-75": ["Ch 1", "live.text", 0],
      "obj-144": ["Mix 1", "Mix 1", 0],
      "obj-146::obj-151": ["Dimensions", "Dimensions", 0],
      "obj-150": ["Mix 2", "Mix 2", 0],
      "obj-151": ["Blend 2", "Blend 2", 0],
      "obj-152": ["Mix 3", "Mix 3", 0],
      "obj-153": ["Mix 4", "Mix 4", 0],
      "obj-154": ["Mix 5", "Mix 5", 0],
      "obj-155": ["Mix 6", "Mix 6", 0],
      "obj-156": ["Mix 7", "Mix 7", 0],
      "obj-157": ["Mix 8", "Mix 8", 0],
      "obj-162": ["Blend 3", "Blend 3", 0],
      "obj-166": ["Blend 4", "Blend 4", 0],
      "obj-168": ["Blend 5", "Blend 5", 0],
      "obj-169": ["Blend 6", "Blend 6", 0],
      "obj-173": ["Blend 7", "Blend 7", 0],
      "obj-174": ["Blend 8", "Blend 8", 0],
      "obj-175": ["Blend", "Blend", 0],
      "obj-46": ["1", "1", 0],
      "obj-47": ["2", "2", 0],
      "obj-48": ["3", "3", 0],
      "obj-49": ["4", "4", 0],
      "obj-50": ["5", "5", 0],
      "obj-51": ["6", "6", 0],
      "obj-52": ["7", "7", 0],
      "obj-53": ["8", "8", 0],
      "obj-54": ["More", "More", 0],
      "obj-60": ["Blend 1", "Blend 1", 0],
      "obj-78": ["Out 8", "Out 8", 0],
      "obj-79": ["Out 7", "Out 7", 0],
      "obj-84": ["Out 6", "Out 6", 0],
      "obj-85": ["Out 5", "Out 5", 0],
      "obj-88": ["Out 4", "Out 4", 0],
      "obj-89": ["Out 3", "Out 3", 0],
      "obj-90": ["Out 2", "Out 2", 0],
      "obj-91": ["Out 1", "Out 1", 0],
      "obj-95": ["Out 9", "Out 9", 0],
      "obj-96": ["FPS", "FPS", 0],
      "parameterbanks": {
        "0": {
          "index": 0,
          "name": "",
          "parameters": ["-", "-", "-", "-", "-", "-", "-", "-"]
        }
      },
      "parameter_overrides": {
        "obj-146::obj-151": {"parameter_longname": "Dimensions"}
      },
      "inherited_shortname": 1
    },
    "dependency_cache": [
      {
        "name": "PX Mix View._layer.maxpat",
        "bootpath": "~/Documents/GitHub/px-stream/devices",
        "patcherrelativepath": ".",
        "type": "JSON",
        "implicit": 1
      },
      {
        "name": "PX Mix View._logo.svg",
        "bootpath": "~/Documents/GitHub/px-stream/devices",
        "patcherrelativepath": ".",
        "type": "svg",
        "implicit": 1
      },
      {
        "name": "PX._dimensions.maxpat",
        "bootpath": "~/Documents/GitHub/px-stream/devices",
        "patcherrelativepath": ".",
        "type": "JSON",
        "implicit": 1
      },
      {"name": "jit.gl.syphonserver.mxo", "type": "iLaX"}
    ],
    "autosave": 0
  }
}