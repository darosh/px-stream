{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 9,
			"minor" : 0,
			"revision" : 8,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 33.0, 71.0, 643.0, 508.0 ],
		"openinpresentation" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-14",
					"index" : 1,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 89.0, 321.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 29.0, 215.0, 55.0, 22.0 ],
					"text" : "zl.slice 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 81.0, 262.0, 63.0, 22.0 ],
					"text" : "array.tolist"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 177.0, 245.0, 115.0, 22.0 ],
					"text" : "get $1::blend_mode"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 177.0, 203.0, 41.0, 22.0 ],
					"text" : "zl.mth"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "int", "bang" ],
					"patching_rect" : [ 185.0, 92.0, 40.0, 22.0 ],
					"text" : "t b i b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 177.0, 165.0, 38.0, 22.0 ],
					"text" : "zl.reg"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "live.menu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 0.0, 0.0, 88.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 0.0, 65.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "Add", "Alpha", "Alpha add", "Alpha saturate", "Alpha mask", "Darken", "Exclusion", "Ghosting", "Hard contrast", "Lighten", "Multiply", "Overlay", "Overlay inverted", "Screen", "Subtract" ],
							"parameter_longname" : "live.menu[1]",
							"parameter_mmax" : 14,
							"parameter_modmode" : 0,
							"parameter_shortname" : "live.menu[1]",
							"parameter_type" : 2
						}

					}
,
					"varname" : "live.menu"
				}

			}
, 			{
				"box" : 				{
					"data" : 					{
						"Add" : 						{
							"blend_mode" : [ 1, 1 ],
							"description" : "Pure additive blend, brightens by accumulating light."
						}
,
						"Alpha" : 						{
							"blend_mode" : [ 6, 7 ],
							"description" : "Standard transparency blending based on source alpha."
						}
,
						"Alpha add" : 						{
							"blend_mode" : [ 6, 1 ],
							"description" : "Additive blending that respects source transparency."
						}
,
						"Alpha saturate" : 						{
							"blend_mode" : [ 10, 1 ],
							"description" : "Clamps alpha to avoid oversaturation; useful for particles."
						}
,
						"Alpha mask" : 						{
							"blend_mode" : [ 6, 0 ],
							"description" : "Acts like a stencil mask; replaces destination where alpha > 0."
						}
,
						"Darken" : 						{
							"blend_mode" : [ 2, 5 ],
							"description" : "Keeps darker portions of source and blends with destination."
						}
,
						"Exclusion" : 						{
							"blend_mode" : [ 4, 5 ],
							"description" : "Creates a difference-like effect with softer contrast than 'difference'."
						}
,
						"Ghosting" : 						{
							"blend_mode" : [ 6, 9 ],
							"description" : "Creates ghost-like transitions by mixing source alpha with inverse destination alpha."
						}
,
						"Hard contrast" : 						{
							"blend_mode" : [ 3, 4 ],
							"description" : "High-contrast blend using source color against inverted destination."
						}
,
						"Lighten" : 						{
							"blend_mode" : [ 1, 4 ],
							"description" : "Emphasizes brighter portions of the source."
						}
,
						"Multiply" : 						{
							"blend_mode" : [ 2, 1 ],
							"description" : "Darkens by multiplying source and destination colors."
						}
,
						"Overlay" : 						{
							"blend_mode" : [ 3, 5 ],
							"description" : "Overlay-like effect that boosts midtone contrast."
						}
,
						"Overlay inverted" : 						{
							"blend_mode" : [ 7, 2 ],
							"description" : "Weird inverted overlay effect with transparency artifacts."
						}
,
						"Screen" : 						{
							"blend_mode" : [ 4, 1 ],
							"description" : "Brightens by inverting, multiplying, and inverting again."
						}
,
						"Subtract" : 						{
							"blend_mode" : [ 1, 9 ],
							"description" : "Inverted add effect, useful for subtractive-like blending."
						}

					}
,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "dictionary", "", "", "", "" ],
					"patching_rect" : [ 64.0, 165.0, 89.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 1,
						"legacy" : 0,
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "dict @embed 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 64.0, 123.0, 50.0, 22.0 ],
					"text" : "getkeys"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 1 ],
					"source" : [ "obj-1", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-13", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-5", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 1 ],
					"source" : [ "obj-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
		"saved_attribute_attributes" : 		{
			"default_plcolor" : 			{
				"expression" : ""
			}

		}

	}

}
