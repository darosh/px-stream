{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 9,
			"minor" : 0,
			"revision" : 9,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 33.0, 71.0, 877.0, 508.0 ],
		"openinpresentation" : 1,
		"gridonopen" : 2,
		"gridsize" : [ 8.0, 8.0 ],
		"gridsnaponopen" : 2,
		"objectsnaponopen" : 0,
		"enablehscroll" : 0,
		"enablevscroll" : 0,
		"integercoordinates" : 1,
		"boxes" : [ 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-84",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "PX._legend.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ 0.0, 0.0 ],
					"patching_rect" : [ 8.0, 8.0, 351.0, 47.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 9.0,
					"id" : "obj-166",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 8.0, 56.0, 480.0, 17.0 ],
					"text" : "Based on https://cycling74.com/articles/audio-routings-a-new-system-for-multi-channel-routing-in-ableton-live"
				}

			}
, 			{
				"box" : 				{
					"coldcolor" : [ 0.972549019607843, 0.462745098039216, 0.501960784313725, 1.0 ],
					"display_range" : [ -70.0, 24.0 ],
					"hotcolor" : [ 0.972549019607843, 0.462745098039216, 0.501960784313725, 1.0 ],
					"id" : "obj-19",
					"maxclass" : "live.meter~",
					"numinlets" : 1,
					"numoutlets" : 2,
					"orientation" : 1,
					"outlettype" : [ "float", "int" ],
					"overloadcolor" : [ 0.972549019607843, 0.462745098039216, 0.501960784313725, 1.0 ],
					"patching_rect" : [ 184.0, 224.0, 30.0, 10.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 5.0, 143.0, 94.0, 2.0 ],
					"saved_attribute_attributes" : 					{
						"coldcolor" : 						{
							"expression" : "themecolor.live_display_handle_two"
						}
,
						"hotcolor" : 						{
							"expression" : "themecolor.live_display_handle_two"
						}
,
						"overloadcolor" : 						{
							"expression" : "themecolor.live_display_handle_two"
						}
,
						"warmcolor" : 						{
							"expression" : "themecolor.live_display_handle_two"
						}

					}
,
					"slidercolor" : [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ],
					"warmcolor" : [ 0.972549019607843, 0.462745098039216, 0.501960784313725, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"coldcolor" : [ 0.972549019607843, 0.462745098039216, 0.501960784313725, 1.0 ],
					"display_range" : [ -70.0, 24.0 ],
					"hotcolor" : [ 0.972549019607843, 0.462745098039216, 0.501960784313725, 1.0 ],
					"id" : "obj-29",
					"maxclass" : "live.meter~",
					"numinlets" : 1,
					"numoutlets" : 2,
					"orientation" : 1,
					"outlettype" : [ "float", "int" ],
					"overloadcolor" : [ 0.972549019607843, 0.462745098039216, 0.501960784313725, 1.0 ],
					"patching_rect" : [ 120.0, 224.0, 30.0, 10.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 5.0, 139.0, 94.0, 2.0 ],
					"saved_attribute_attributes" : 					{
						"coldcolor" : 						{
							"expression" : "themecolor.live_display_handle_two"
						}
,
						"hotcolor" : 						{
							"expression" : "themecolor.live_display_handle_two"
						}
,
						"overloadcolor" : 						{
							"expression" : "themecolor.live_display_handle_two"
						}
,
						"warmcolor" : 						{
							"expression" : "themecolor.live_display_handle_two"
						}

					}
,
					"slidercolor" : [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ],
					"warmcolor" : [ 0.972549019607843, 0.462745098039216, 0.501960784313725, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Sets the gain of remote audio.",
					"annotation_name" : "Receive Gain",
					"appearance" : 2,
					"id" : "obj-4",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 320.0, 88.0, 42.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 3.0, 75.0, 98.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_annotation_name" : "Receive Gain",
							"parameter_info" : "Sets the gain of remote audio.",
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "Receive Gain",
							"parameter_mmax" : 24.0,
							"parameter_mmin" : -70.0,
							"parameter_modmode" : 2,
							"parameter_shortname" : "Receive Gain",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "Receive Gain"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 8.0, 248.0, 62.0, 22.0 ],
					"text" : "live.banks"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 96.0, 136.0, 89.0, 22.0 ],
					"text" : "PX._gain2~"
				}

			}
, 			{
				"box" : 				{
					"activeslidercolor" : [ 0.972549, 0.462745, 0.501961, 1.0 ],
					"annotation" : "Sets the gain of audio thru.",
					"annotation_name" : "Thru Gain",
					"appearance" : 2,
					"id" : "obj-27",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 176.0, 88.0, 42.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 3.0, 152.0, 98.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"activeslidercolor" : 						{
							"expression" : "themecolor.live_value_bar2"
						}
,
						"valueof" : 						{
							"parameter_annotation_name" : "Thru Gain",
							"parameter_info" : "Sets the gain of audio thru.",
							"parameter_initial" : [ -70 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "Thru Gain",
							"parameter_mmax" : 24.0,
							"parameter_mmin" : -70.0,
							"parameter_modmode" : 2,
							"parameter_shortname" : "Thru Gain",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "Thru Gain"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 240.0, 88.0, 69.0, 22.0 ],
					"text" : "plugin~ 3 4"
				}

			}
, 			{
				"box" : 				{
					"coldcolor" : [ 0.594473705410263, 0.720560630419913, 0.928309050695498, 1.0 ],
					"display_range" : [ -70.0, 24.0 ],
					"hotcolor" : [ 0.594473705410263, 0.720560630419913, 0.928309050695498, 1.0 ],
					"id" : "obj-8",
					"maxclass" : "live.meter~",
					"numinlets" : 1,
					"numoutlets" : 2,
					"orientation" : 1,
					"outlettype" : [ "float", "int" ],
					"overloadcolor" : [ 0.594473705410263, 0.720560630419913, 0.928309050695498, 1.0 ],
					"patching_rect" : [ 304.0, 248.0, 30.0, 10.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 5.0, 66.0, 94.0, 2.0 ],
					"saved_attribute_attributes" : 					{
						"coldcolor" : 						{
							"expression" : "themecolor.live_value_arc"
						}
,
						"hotcolor" : 						{
							"expression" : "themecolor.live_value_arc"
						}
,
						"overloadcolor" : 						{
							"expression" : "themecolor.live_value_arc"
						}
,
						"warmcolor" : 						{
							"expression" : "themecolor.live_value_arc"
						}

					}
,
					"slidercolor" : [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ],
					"warmcolor" : [ 0.594473705410263, 0.720560630419913, 0.928309050695498, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"coldcolor" : [ 0.594473705410263, 0.720560630419913, 0.928309050695498, 1.0 ],
					"display_range" : [ -70.0, 24.0 ],
					"hotcolor" : [ 0.594473705410263, 0.720560630419913, 0.928309050695498, 1.0 ],
					"id" : "obj-3",
					"maxclass" : "live.meter~",
					"numinlets" : 1,
					"numoutlets" : 2,
					"orientation" : 1,
					"outlettype" : [ "float", "int" ],
					"overloadcolor" : [ 0.594473705410263, 0.720560630419913, 0.928309050695498, 1.0 ],
					"patching_rect" : [ 240.0, 248.0, 30.0, 10.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 5.0, 62.0, 94.0, 2.0 ],
					"saved_attribute_attributes" : 					{
						"coldcolor" : 						{
							"expression" : "themecolor.live_value_arc"
						}
,
						"hotcolor" : 						{
							"expression" : "themecolor.live_value_arc"
						}
,
						"overloadcolor" : 						{
							"expression" : "themecolor.live_value_arc"
						}
,
						"warmcolor" : 						{
							"expression" : "themecolor.live_value_arc"
						}

					}
,
					"slidercolor" : [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ],
					"warmcolor" : [ 0.594473705410263, 0.720560630419913, 0.928309050695498, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 96.0, 248.0, 89.0, 22.0 ],
					"text" : "plugout~ 1 2"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.972549019607843, 0.462745098039216, 0.501960784313725, 1.0 ],
					"annotation" : "Enables/disables audio thru.",
					"annotation_name" : "Thru",
					"appearance" : 1,
					"automation" : "Off",
					"automationon" : "On",
					"id" : "obj-11",
					"maxclass" : "live.text",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 8.0, 88.0, 50.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 3.0, 117.0, 46.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"activebgoncolor" : 						{
							"expression" : "themecolor.live_display_handle_two"
						}
,
						"valueof" : 						{
							"parameter_annotation_name" : "Thru",
							"parameter_enum" : [ "Off", "On" ],
							"parameter_info" : "Enables/disables audio thru.",
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "Thru",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "Thru",
							"parameter_type" : 2,
							"parameter_unitstyle" : 9
						}

					}
,
					"text" : "Thru",
					"texton" : "Thru",
					"varname" : "Thru"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 376.0, 112.0, 41.0, 22.0 ],
					"text" : "$1 50"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 376.0, 136.0, 36.0, 22.0 ],
					"text" : "line~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 304.0, 192.0, 29.0, 22.0 ],
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 240.0, 192.0, 29.0, 22.0 ],
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.594473705410263, 0.720560630419913, 0.928309050695498, 1.0 ],
					"annotation" : "Enables/disables remote audio.",
					"annotation_name" : "Receive",
					"appearance" : 1,
					"automation" : "Off",
					"automationon" : "On",
					"id" : "obj-10",
					"maxclass" : "live.text",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 376.0, 88.0, 77.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 3.0, 40.0, 72.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"activebgoncolor" : 						{
							"expression" : "themecolor.live_value_arc"
						}
,
						"valueof" : 						{
							"parameter_annotation_name" : "Receive",
							"parameter_enum" : [ "Off", "On" ],
							"parameter_info" : "Enables/disables remote audio.",
							"parameter_initial" : [ 1 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Receive",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "Receive",
							"parameter_type" : 2,
							"parameter_unitstyle" : 9
						}

					}
,
					"text" : "Receive",
					"texton" : "Receive",
					"varname" : "Receive"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 8.0, 112.0, 41.0, 22.0 ],
					"text" : "$1 50"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 8.0, 136.0, 36.0, 22.0 ],
					"text" : "line~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 160.0, 192.0, 29.0, 22.0 ],
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 96.0, 192.0, 29.0, 22.0 ],
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 96.0, 88.0, 70.0, 22.0 ],
					"text" : "plugin~ 1 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 240.0, 136.0, 89.0, 22.0 ],
					"text" : "PX._gain2~"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Selects a remore audio input.",
					"args" : [ "audio_inputs", 2 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-107",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "PX Route Audio._browse_routing.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ 0.0, 0.0 ],
					"patching_rect" : [ 360.0, 232.0, 120.0, 29.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 4.0, 3.0, 96.0, 32.0 ],
					"viewvisibility" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"order" : 1,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"order" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 1 ],
					"order" : 0,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 1 ],
					"order" : 1,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 1 ],
					"order" : 1,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"order" : 0,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"order" : 1,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"order" : 0,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 1 ],
					"source" : [ "obj-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-22", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 1 ],
					"source" : [ "obj-24", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 2 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 2 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 1 ],
					"order" : 1,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"order" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 1 ],
					"order" : 1,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 1 ],
					"order" : 0,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-10" : [ "Receive", "Receive", 0 ],
			"obj-11" : [ "Thru", "Thru", 0 ],
			"obj-27" : [ "Thru Gain", "Thru Gain", 0 ],
			"obj-4" : [ "Receive Gain", "Receive Gain", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ],
					"buttons" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "PX Route Audio._browse_routing.maxpat",
				"bootpath" : "~/Documents/GitHub/px-stream/devices",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "PX._gain2~.maxpat",
				"bootpath" : "~/Documents/GitHub/px-stream/devices",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "PX._legend.maxpat",
				"bootpath" : "~/Documents/GitHub/px-stream/devices",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "PX._routing_objects.maxpat",
				"bootpath" : "~/Documents/GitHub/px-stream/devices",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
