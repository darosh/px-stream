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
		"rect" : [ 130.0, 150.0, 72.0, 16.0 ],
		"openrect" : [ 0.0, 0.0, 72.0, 17.0 ],
		"openinpresentation" : 1,
		"gridsize" : [ 8.0, 8.0 ],
		"gridsnaponopen" : 2,
		"integercoordinates" : 1,
		"boxes" : [ 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-3",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 32.0, 184.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 32.0, 136.0, 76.0, 22.0 ],
					"text" : "string.tolist ×"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-1",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 32.0, 48.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Dimensions of rendered texture in pixels",
					"annotation_name" : "Dimensions",
					"id" : "obj-151",
					"maxclass" : "live.menu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 32.0, 96.0, 100.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 2.0, 2.0, 68.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_annotation_name" : "Dimensions",
							"parameter_enum" : [ "2560×1440", "2560×1080", "1920×1080", "1280×720", "720×1280", "640×480", "320×240", "512×512", "480×480", "256×256" ],
							"parameter_info" : "Dimensions of rendered texture in pixels",
							"parameter_initial" : [ 3 ],
							"parameter_initial_enable" : 1,
							"parameter_defer" : 1, "parameter_longname" : "Dimensions",
							"parameter_mmax" : 9,
							"parameter_modmode" : 0,
							"parameter_shortname" : "Dimensions",
							"parameter_type" : 2
						}

					}
,
					"varname" : "Dimensions"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-151", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-151", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-151" : [ "Dimensions", "Dimensions", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [  ],
		"autosave" : 0
	}

}
