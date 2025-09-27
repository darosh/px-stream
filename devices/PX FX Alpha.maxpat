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
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 280.0, 96.0, 22.0, 22.0 ],
					"text" : "t b"
				}

			}
, 			{
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
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 280.0, 192.0, 90.0, 22.0 ],
					"text" : "prepend param"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 280.0, 160.0, 62.0, 22.0 ],
					"text" : "r ---param"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 368.0, 520.0, 122.0, 22.0 ],
					"text" : "prepend alpha_mode"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-142",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 976.0, 584.0, 64.0, 22.0 ],
					"text" : "s ---param"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1368.0, 448.0, 131.0, 22.0 ],
					"text" : "prepend alpha_smooth"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1280.0, 488.0, 141.0, 22.0 ],
					"text" : "prepend cutoff_threshold"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1184.0, 448.0, 133.0, 22.0 ],
					"text" : "prepend alpha_multiply"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1096.0, 496.0, 132.0, 22.0 ],
					"text" : "prepend alpha_gamma"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1008.0, 448.0, 137.0, 22.0 ],
					"text" : "prepend alpha_quantize"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 928.0, 496.0, 116.0, 22.0 ],
					"text" : "prepend hard_cutoff"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 832.0, 448.0, 121.0, 22.0 ],
					"text" : "prepend alpha_invert"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 688.0, 448.0, 126.0, 22.0 ],
					"text" : "prepend output_mode"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 368.0, 448.0, 134.0, 22.0 ],
					"text" : "prepend preview_mode"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 176.0, 440.0, 41.0, 22.0 ],
					"text" : "* -128"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 176.0, 576.0, 67.0, 22.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 176.0, 480.0, 64.0, 22.0 ],
					"text" : "offset 0 $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 176.0, 528.0, 147.0, 22.0 ],
					"text" : "prepend script send tabed"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"embed" : 1,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-23",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ 0.0, 0.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 9,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 33.0, 82.0, 567.0, 498.0 ],
						"openinpresentation" : 1,
						"gridonopen" : 2,
						"gridsize" : [ 8.0, 8.0 ],
						"gridsnaponopen" : 2,
						"objectsnaponopen" : 0,
						"integercoordinates" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-51",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 824.0, 1104.0, 64.0, 22.0 ],
									"text" : "s ---param"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-50",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 424.0, 1032.0, 118.0, 22.0 ],
									"text" : "prepend luma_invert"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-49",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 648.0, 568.0, 144.0, 22.0 ],
									"text" : "prepend global_tolerance"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-48",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 560.0, 608.0, 132.0, 22.0 ],
									"text" : "prepend hue_tolerance"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-42",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 472.0, 568.0, 126.0, 22.0 ],
									"text" : "prepend chroma_fade"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 392.0, 616.0, 152.0, 22.0 ],
									"text" : "prepend chroma_tolerance"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 304.0, 568.0, 159.0, 22.0 ],
									"text" : "prepend lightness_tolerance"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 448.0, 680.0, 64.0, 22.0 ],
									"text" : "s ---param"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 464.0, 440.0, 64.0, 22.0 ],
									"text" : "s ---param"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 464.0, 400.0, 133.0, 22.0 ],
									"text" : "prepend distance_color"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 464.0, 352.0, 48.0, 22.0 ],
									"text" : "pak f f f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 584.0, 304.0, 97.0, 22.0 ],
									"text" : "scale 0 255 0. 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 480.0, 304.0, 97.0, 22.0 ],
									"text" : "scale 0 255 0. 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 376.0, 304.0, 97.0, 22.0 ],
									"text" : "scale 0 255 0. 1."
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"annotation_name" : "Distance Color",
									"id" : "obj-15",
									"maxclass" : "live.button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 464.0, 56.0, 40.0, 40.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 8.0, 391.0, 28.0, 28.0 ],
									"saved_attribute_attributes" : 									{
										"activebgcolor" : 										{
											"expression" : ""
										}
,
										"valueof" : 										{
											"parameter_annotation_name" : "Distance Color",
											"parameter_enum" : [ "off", "on" ],
											"parameter_invisible" : 2,
											"parameter_longname" : "Distance Color",
											"parameter_mmax" : 1,
											"parameter_modmode" : 0,
											"parameter_shortname" : "Distance Color",
											"parameter_type" : 2
										}

									}
,
									"varname" : "live.button[1]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 312.0, 304.0, 46.0, 22.0 ],
									"text" : "pak i i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 528.0, 128.0, 139.0, 22.0 ],
									"text" : "activebgcolor $1 $2 $3 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "float", "float", "float" ],
									"patching_rect" : [ 424.0, 168.0, 67.0, 22.0 ],
									"text" : "unpack f f f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "list", "bang" ],
									"patching_rect" : [ 352.0, 128.0, 158.0, 22.0 ],
									"text" : "colorpicker @compatibility 1"
								}

							}
, 							{
								"box" : 								{
									"annotation_name" : "Distance B",
									"id" : "obj-29",
									"maxclass" : "live.numbox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 536.0, 240.0, 44.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 2.0, 455.0, 40.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_annotation_name" : "Distance B",
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "Distance B",
											"parameter_mmax" : 255.0,
											"parameter_modmode" : 4,
											"parameter_shortname" : "Distance B",
											"parameter_type" : 0,
											"parameter_units" : "B",
											"parameter_unitstyle" : 9
										}

									}
,
									"varname" : "live.numbox[7]"
								}

							}
, 							{
								"box" : 								{
									"annotation_name" : "Distance G",
									"id" : "obj-34",
									"maxclass" : "live.numbox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 464.0, 240.0, 44.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 2.0, 439.0, 40.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_annotation_name" : "Distance G",
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "Distance G",
											"parameter_mmax" : 255.0,
											"parameter_modmode" : 4,
											"parameter_shortname" : "Distance G",
											"parameter_type" : 0,
											"parameter_units" : "G",
											"parameter_unitstyle" : 9
										}

									}
,
									"varname" : "live.numbox[8]"
								}

							}
, 							{
								"box" : 								{
									"annotation_name" : "Distance R",
									"id" : "obj-36",
									"maxclass" : "live.numbox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 392.0, 240.0, 44.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 2.0, 423.0, 40.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_annotation_name" : "Distance R",
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "Distance R",
											"parameter_mmax" : 255.0,
											"parameter_modmode" : 4,
											"parameter_shortname" : "Distance R",
											"parameter_type" : 0,
											"parameter_units" : "R",
											"parameter_unitstyle" : 9
										}

									}
,
									"varname" : "live.numbox[12]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 64.0, 112.0, 159.0, 22.0 ],
									"text" : "prepend extract_channel"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 64.0, 152.0, 64.0, 22.0 ],
									"text" : "s ---param"
								}

							}
, 							{
								"box" : 								{
									"annotation_name" : "Distance Fade",
									"id" : "obj-12",
									"maxclass" : "live.numbox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 960.0, 1000.0, 44.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 88.0, 391.0, 40.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_annotation_name" : "Distance Fade",
											"parameter_initial" : [ 0.1 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "Distance Fade",
											"parameter_mmax" : 0.5,
											"parameter_modmode" : 4,
											"parameter_shortname" : "Distance Fade",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"varname" : "live.numbox[6]"
								}

							}
, 							{
								"box" : 								{
									"annotation_name" : "Distance Threshold",
									"id" : "obj-24",
									"maxclass" : "live.numbox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 776.0, 992.0, 44.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 88.0, 407.0, 40.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_annotation_name" : "Distance Threshold",
											"parameter_initial" : [ 0.1 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "Distance Threshold",
											"parameter_mmax" : 1.0,
											"parameter_modmode" : 4,
											"parameter_shortname" : "Distance Threshold",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"varname" : "live.numbox[13]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "live.comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 960.0, 968.0, 64.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 48.0, 390.0, 48.0, 18.0 ],
									"text" : "Fade",
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "live.comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 776.0, 960.0, 64.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 48.0, 406.0, 48.0, 18.0 ],
									"text" : "Thresh.",
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"annotation_name" : "Invert Mapping",
									"automation" : "0",
									"automationon" : "1",
									"id" : "obj-10",
									"maxclass" : "live.text",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 704.0, 768.0, 44.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 88.0, 168.0, 40.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_annotation_name" : "Invert Mapping",
											"parameter_enum" : [ "0", "1" ],
											"parameter_longname" : "Invert Mapping",
											"parameter_mmax" : 1,
											"parameter_modmode" : 0,
											"parameter_shortname" : "Invert Mapping",
											"parameter_type" : 2
										}

									}
,
									"text" : "Invert",
									"texton" : "Invert",
									"varname" : "live.text[2]"
								}

							}
, 							{
								"box" : 								{
									"annotation_name" : "Color Channel",
									"focusbordercolor" : [ 0.752941176470588, 0.752941176470588, 0.752941176470588, 0.0 ],
									"fontsize" : 12.0,
									"id" : "obj-25",
									"maxclass" : "live.tab",
									"multiline" : 0,
									"num_lines_patching" : 1,
									"num_lines_presentation" : 1,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 64.0, 72.0, 100.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 16.0, 536.0, 96.0, 24.0 ],
									"saved_attribute_attributes" : 									{
										"focusbordercolor" : 										{
											"expression" : ""
										}
,
										"valueof" : 										{
											"parameter_annotation_name" : "Color Channel",
											"parameter_enum" : [ "R", "G", "B", "A" ],
											"parameter_initial" : [ 3 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "Color Channel",
											"parameter_mmax" : 3,
											"parameter_modmode" : 0,
											"parameter_shortname" : "Color Channel",
											"parameter_type" : 2,
											"parameter_unitstyle" : 9
										}

									}
,
									"spacing_x" : 3.0,
									"varname" : "live.tab[2]"
								}

							}
, 							{
								"box" : 								{
									"annotation_name" : "Luminance Invert",
									"automation" : "0",
									"automationon" : "1",
									"id" : "obj-22",
									"maxclass" : "live.text",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 432.0, 976.0, 44.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 52.0, 295.0, 40.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_annotation_name" : "Luminance Invert",
											"parameter_enum" : [ "0", "1" ],
											"parameter_longname" : "Luminance Invert",
											"parameter_mmax" : 1,
											"parameter_modmode" : 0,
											"parameter_shortname" : "Luminance Invert",
											"parameter_type" : 2
										}

									}
,
									"text" : "Invert",
									"texton" : "Invert",
									"varname" : "live.text[3]"
								}

							}
, 							{
								"box" : 								{
									"annotation_name" : "Fade",
									"id" : "obj-20",
									"maxclass" : "live.numbox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 472.0, 536.0, 44.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 88.0, 7.0, 40.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_annotation_name" : "Fade",
											"parameter_initial" : [ 0.1 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "Fade",
											"parameter_mmax" : 0.5,
											"parameter_modmode" : 4,
											"parameter_shortname" : "Fade",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"varname" : "live.numbox[5]"
								}

							}
, 							{
								"box" : 								{
									"annotation_name" : "Global",
									"id" : "obj-18",
									"maxclass" : "live.numbox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 640.0, 536.0, 44.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 88.0, 71.0, 40.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_annotation_name" : "Global",
											"parameter_initial" : [ 1 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "Global",
											"parameter_mmax" : 3.0,
											"parameter_modmode" : 4,
											"parameter_shortname" : "Global",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"varname" : "live.numbox[4]"
								}

							}
, 							{
								"box" : 								{
									"annotation_name" : "Hue",
									"id" : "obj-7",
									"maxclass" : "live.numbox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 560.0, 536.0, 44.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 88.0, 55.0, 40.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_annotation_name" : "Hue",
											"parameter_initial" : [ 0.1 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "Hue",
											"parameter_mmax" : 1.0,
											"parameter_modmode" : 4,
											"parameter_shortname" : "Hue",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"varname" : "live.numbox[3]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-143",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1048.0, 800.0, 140.0, 22.0 ],
									"text" : "prepend mapping_mirror"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-142",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 264.0, 1096.0, 64.0, 22.0 ],
									"text" : "s ---param"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-141",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 184.0, 792.0, 116.0, 22.0 ],
									"text" : "prepend range_max"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-140",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 64.0, 792.0, 113.0, 22.0 ],
									"text" : "prepend range_min"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-138",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 864.0, 800.0, 141.0, 22.0 ],
									"text" : "prepend mapping_phase"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-137",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 544.0, 800.0, 137.0, 22.0 ],
									"text" : "prepend mapping_scale"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-134",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 240.0, 1032.0, 112.0, 22.0 ],
									"text" : "prepend luma_fade"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-133",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 72.0, 1032.0, 138.0, 22.0 ],
									"text" : "prepend luma_threshold"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-132",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 960.0, 1032.0, 131.0, 22.0 ],
									"text" : "prepend distance_fade"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-131",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 776.0, 1024.0, 157.0, 22.0 ],
									"text" : "prepend distance_threshold"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-130",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 368.0, 800.0, 139.0, 22.0 ],
									"text" : "prepend mapping_mode"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-128",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 704.0, 800.0, 138.0, 22.0 ],
									"text" : "prepend invert_mapping"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-127",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 584.0, 1024.0, 162.0, 22.0 ],
									"text" : "prepend use_oklab_distance"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-124",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 472.0, 904.0, 64.0, 22.0 ],
									"text" : "s ---param"
								}

							}
, 							{
								"box" : 								{
									"annotation_name" : "Luminance Threshold",
									"id" : "obj-118",
									"maxclass" : "live.numbox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 72.0, 1000.0, 44.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 52.0, 263.0, 40.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_annotation_name" : "Luminance Threshold",
											"parameter_initial" : [ 0.5 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "Luminance Threshold",
											"parameter_mmax" : 1.0,
											"parameter_modmode" : 4,
											"parameter_shortname" : "Luminance Threshold",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"varname" : "live.numbox[16]"
								}

							}
, 							{
								"box" : 								{
									"annotation_name" : "Mirror",
									"automation" : "0",
									"automationon" : "1",
									"id" : "obj-117",
									"maxclass" : "live.text",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1048.0, 752.0, 44.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 88.0, 151.0, 40.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_annotation_name" : "Mirror",
											"parameter_enum" : [ "0", "1" ],
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "Mirror",
											"parameter_mmax" : 1.0,
											"parameter_modmode" : 0,
											"parameter_shortname" : "Mirror",
											"parameter_type" : 1,
											"parameter_unitstyle" : 0
										}

									}
,
									"text" : "Mirror",
									"texton" : "Mirror",
									"varname" : "live.text[4]"
								}

							}
, 							{
								"box" : 								{
									"annotation_name" : "Scale",
									"id" : "obj-116",
									"maxclass" : "live.numbox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 544.0, 752.0, 44.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 32.0, 151.0, 40.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_annotation_name" : "Scale",
											"parameter_initial" : [ 1 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "Scale",
											"parameter_mmax" : 16.0,
											"parameter_mmin" : 0.1,
											"parameter_modmode" : 4,
											"parameter_shortname" : "Scale",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"varname" : "live.numbox[21]"
								}

							}
, 							{
								"box" : 								{
									"annotation_name" : "Mapping",
									"id" : "obj-112",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 384.0, 760.0, 100.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 2.0, 135.0, 126.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_annotation_name" : "Mapping",
											"parameter_enum" : [ "OKLAB Lightness", "OKLAB Chroma", "OKLAB Hue", " RGB Luminance", "RGB Saturation", "RGB Average", "RGB Max", "RGB Min" ],
											"parameter_initial" : [ 3 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "Mapping",
											"parameter_mmax" : 7,
											"parameter_modmode" : 0,
											"parameter_shortname" : "Mapping",
											"parameter_type" : 2
										}

									}
,
									"varname" : "live.menu"
								}

							}
, 							{
								"box" : 								{
									"annotation_name" : "OKLAB",
									"automation" : "0",
									"automationon" : "1",
									"id" : "obj-105",
									"maxclass" : "live.text",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 584.0, 976.0, 44.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 88.0, 423.0, 40.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_annotation_name" : "OKLAB",
											"parameter_enum" : [ "0", "1" ],
											"parameter_initial" : [ 1 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "OKLAB",
											"parameter_mmax" : 1,
											"parameter_modmode" : 0,
											"parameter_shortname" : "OKLAB",
											"parameter_type" : 2
										}

									}
,
									"text" : "RGB",
									"texton" : "OKLAB",
									"varname" : "live.text[1]"
								}

							}
, 							{
								"box" : 								{
									"annotation_name" : "Max",
									"id" : "obj-97",
									"maxclass" : "live.numbox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 184.0, 760.0, 44.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 32.0, 199.0, 40.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_annotation_name" : "Max",
											"parameter_initial" : [ 1 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "Max",
											"parameter_mmax" : 1.0,
											"parameter_modmode" : 4,
											"parameter_shortname" : "Max",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"varname" : "live.numbox[14]"
								}

							}
, 							{
								"box" : 								{
									"annotation_name" : "Min",
									"id" : "obj-100",
									"maxclass" : "live.numbox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 64.0, 760.0, 44.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 32.0, 183.0, 40.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_annotation_name" : "Min",
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "Min",
											"parameter_mmax" : 1.0,
											"parameter_modmode" : 4,
											"parameter_shortname" : "Min",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"varname" : "live.numbox[15]"
								}

							}
, 							{
								"box" : 								{
									"annotation_name" : "Phase",
									"id" : "obj-104",
									"maxclass" : "live.numbox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 864.0, 752.0, 44.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 32.0, 167.0, 40.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_annotation_name" : "Phase",
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "Phase",
											"parameter_mmax" : 1.0,
											"parameter_modmode" : 4,
											"parameter_shortname" : "Phase",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"varname" : "live.numbox[17]"
								}

							}
, 							{
								"box" : 								{
									"annotation_name" : "Luminance Fade",
									"id" : "obj-90",
									"maxclass" : "live.numbox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 232.0, 992.0, 44.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 52.0, 279.0, 40.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_annotation_name" : "Luminance Fade",
											"parameter_initial" : [ 0.1 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "Luminance Fade",
											"parameter_mmax" : 0.5,
											"parameter_modmode" : 4,
											"parameter_shortname" : "Luminance Fade",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"varname" : "live.numbox[11]"
								}

							}
, 							{
								"box" : 								{
									"annotation_name" : "Lightness",
									"id" : "obj-82",
									"maxclass" : "live.numbox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 304.0, 536.0, 44.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 88.0, 39.0, 40.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_annotation_name" : "Lightness",
											"parameter_initial" : [ 0.2 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "Lightness",
											"parameter_mmax" : 1.0,
											"parameter_modmode" : 4,
											"parameter_shortname" : "Lightness",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"varname" : "live.numbox[10]"
								}

							}
, 							{
								"box" : 								{
									"annotation_name" : "Chroma",
									"id" : "obj-79",
									"maxclass" : "live.numbox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 392.0, 536.0, 44.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 88.0, 23.0, 40.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_annotation_name" : "Chroma",
											"parameter_initial" : [ 0.1 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "Chroma",
											"parameter_mmax" : 1.0,
											"parameter_modmode" : 4,
											"parameter_shortname" : "Chroma",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"varname" : "live.numbox[9]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 856.0, 440.0, 64.0, 22.0 ],
									"text" : "s ---param"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-46",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 856.0, 400.0, 119.0, 22.0 ],
									"text" : "prepend target_color"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-45",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 856.0, 352.0, 48.0, 22.0 ],
									"text" : "pak f f f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-44",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 976.0, 304.0, 97.0, 22.0 ],
									"text" : "scale 0 255 0. 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-43",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 864.0, 304.0, 97.0, 22.0 ],
									"text" : "scale 0 255 0. 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 760.0, 304.0, 97.0, 22.0 ],
									"text" : "scale 0 255 0. 1."
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"annotation_name" : "Chroma Color",
									"id" : "obj-33",
									"maxclass" : "live.button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 856.0, 56.0, 40.0, 40.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 8.0, 7.0, 28.0, 28.0 ],
									"saved_attribute_attributes" : 									{
										"activebgcolor" : 										{
											"expression" : ""
										}
,
										"valueof" : 										{
											"parameter_annotation_name" : "Chroma Color",
											"parameter_enum" : [ "off", "on" ],
											"parameter_invisible" : 2,
											"parameter_longname" : "Chroma Color",
											"parameter_mmax" : 1,
											"parameter_modmode" : 0,
											"parameter_shortname" : "Chroma Color",
											"parameter_type" : 2
										}

									}
,
									"varname" : "live.button"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 696.0, 304.0, 46.0, 22.0 ],
									"text" : "pak i i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 912.0, 128.0, 139.0, 22.0 ],
									"text" : "activebgcolor $1 $2 $3 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "float", "float", "float" ],
									"patching_rect" : [ 816.0, 168.0, 67.0, 22.0 ],
									"text" : "unpack f f f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "list", "bang" ],
									"patching_rect" : [ 736.0, 128.0, 158.0, 22.0 ],
									"text" : "colorpicker @compatibility 1"
								}

							}
, 							{
								"box" : 								{
									"annotation_name" : "Chroma B",
									"id" : "obj-14",
									"maxclass" : "live.numbox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 920.0, 240.0, 44.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 2.0, 71.0, 40.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_annotation_name" : "Chroma B",
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "Chroma B",
											"parameter_mmax" : 255.0,
											"parameter_modmode" : 4,
											"parameter_shortname" : "Chroma B",
											"parameter_type" : 0,
											"parameter_units" : "B",
											"parameter_unitstyle" : 9
										}

									}
,
									"varname" : "live.numbox[2]"
								}

							}
, 							{
								"box" : 								{
									"annotation_name" : "Chroma G",
									"id" : "obj-13",
									"maxclass" : "live.numbox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 856.0, 240.0, 44.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 2.0, 55.0, 40.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_annotation_name" : "Chroma G",
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "Chroma G",
											"parameter_mmax" : 255.0,
											"parameter_modmode" : 4,
											"parameter_shortname" : "Chroma G",
											"parameter_type" : 0,
											"parameter_units" : "G",
											"parameter_unitstyle" : 9
										}

									}
,
									"varname" : "live.numbox[1]"
								}

							}
, 							{
								"box" : 								{
									"annotation_name" : "Chroma R",
									"id" : "obj-4",
									"maxclass" : "live.numbox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 776.0, 240.0, 44.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 2.0, 39.0, 40.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_annotation_name" : "Chroma R",
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "Chroma R",
											"parameter_mmax" : 255.0,
											"parameter_modmode" : 4,
											"parameter_shortname" : "Chroma R",
											"parameter_type" : 0,
											"parameter_units" : "R",
											"parameter_unitstyle" : 9
										}

									}
,
									"varname" : "live.numbox"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-115",
									"maxclass" : "live.comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 552.0, 728.0, 56.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 1.0, 150.0, 42.0, 18.0 ],
									"text" : "Scale",
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-98",
									"maxclass" : "live.comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 184.0, 736.0, 64.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 1.0, 198.0, 38.0, 18.0 ],
									"text" : "Max",
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-99",
									"maxclass" : "live.comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 64.0, 736.0, 48.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 1.0, 182.0, 42.0, 18.0 ],
									"text" : "Min",
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-103",
									"maxclass" : "live.comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 856.0, 720.0, 64.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 1.0, 166.0, 42.0, 18.0 ],
									"text" : "Phase",
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-89",
									"maxclass" : "live.comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 232.0, 960.0, 56.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 1.0, 278.0, 35.0, 18.0 ],
									"text" : "Fade",
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-88",
									"maxclass" : "live.comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 72.0, 968.0, 64.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 1.0, 262.0, 51.0, 18.0 ],
									"text" : "Threshold",
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "live.comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 472.0, 496.0, 64.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 48.0, 6.0, 48.0, 18.0 ],
									"text" : "Fade",
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "live.comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 640.0, 496.0, 64.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 48.0, 70.0, 56.0, 18.0 ],
									"text" : "Global",
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "live.comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 552.0, 496.0, 64.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 48.0, 54.0, 56.0, 18.0 ],
									"text" : "Hue",
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-81",
									"maxclass" : "live.comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 304.0, 496.0, 64.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 48.0, 38.0, 56.0, 18.0 ],
									"text" : "Light.",
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-80",
									"maxclass" : "live.comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 392.0, 496.0, 64.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 48.0, 22.0, 48.0, 18.0 ],
									"text" : "Chroma",
									"textjustification" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-128", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-140", 0 ],
									"source" : [ "obj-100", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-138", 0 ],
									"source" : [ "obj-104", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-127", 0 ],
									"source" : [ "obj-105", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-130", 0 ],
									"source" : [ "obj-112", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-137", 0 ],
									"source" : [ "obj-116", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-143", 0 ],
									"source" : [ "obj-117", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-133", 0 ],
									"source" : [ "obj-118", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-132", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"source" : [ "obj-127", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-124", 0 ],
									"source" : [ "obj-128", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 1 ],
									"order" : 1,
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"order" : 0,
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-124", 0 ],
									"source" : [ "obj-130", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"source" : [ "obj-131", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"source" : [ "obj-132", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-142", 0 ],
									"source" : [ "obj-133", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-142", 0 ],
									"source" : [ "obj-134", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-124", 0 ],
									"source" : [ "obj-137", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-124", 0 ],
									"source" : [ "obj-138", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 2 ],
									"order" : 1,
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"order" : 0,
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-124", 0 ],
									"source" : [ "obj-140", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-124", 0 ],
									"source" : [ "obj-141", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-124", 0 ],
									"source" : [ "obj-143", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-131", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"source" : [ "obj-26", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"source" : [ "obj-26", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 2 ],
									"order" : 1,
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"order" : 0,
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-30", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-30", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 1 ],
									"order" : 1,
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"order" : 0,
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"order" : 0,
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"order" : 1,
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"order" : 1,
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"order" : 0,
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 1 ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 2 ],
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"order" : 0,
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"order" : 1,
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-142", 0 ],
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"order" : 0,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"order" : 1,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"source" : [ "obj-79", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 2 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-82", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 1 ],
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-134", 0 ],
									"source" : [ "obj-90", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-141", 0 ],
									"source" : [ "obj-97", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 8.0, 392.0, 136.0, 576.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 64.0, 130.0, 88.0 ],
					"varname" : "tabed",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"annotation_name" : "Cutoff",
					"automation" : "0",
					"automationon" : "1",
					"id" : "obj-56",
					"maxclass" : "live.text",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 936.0, 408.0, 44.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 176.0, 2.0, 40.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_annotation_name" : "Cutoff",
							"parameter_enum" : [ "0", "1" ],
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Cutoff",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "Cutoff",
							"parameter_type" : 2
						}

					}
,
					"text" : "Cutoff",
					"texton" : "Cutoff",
					"varname" : "live.text[5]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "live.comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1320.0, 376.0, 64.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 174.0, 24.0, 48.0, 18.0 ],
					"text" : "Thresh.",
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"annotation_name" : "Multiply",
					"id" : "obj-50",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1208.0, 408.0, 44.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 134.0, 39.0, 40.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_annotation_name" : "Multiply",
							"parameter_initial" : [ 1 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Multiply",
							"parameter_mmax" : 2.0,
							"parameter_modmode" : 4,
							"parameter_shortname" : "Multiply",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "live.numbox[6]"
				}

			}
, 			{
				"box" : 				{
					"annotation_name" : "Threshold",
					"id" : "obj-51",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1320.0, 408.0, 44.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 176.0, 39.0, 40.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_annotation_name" : "Threshold",
							"parameter_initial" : [ 0.5 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Threshold",
							"parameter_mmax" : 1.0,
							"parameter_modmode" : 4,
							"parameter_shortname" : "Threshold",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "live.numbox[7]"
				}

			}
, 			{
				"box" : 				{
					"annotation_name" : "Smooth",
					"id" : "obj-52",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1424.0, 408.0, 44.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 134.0, 135.0, 40.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_annotation_name" : "Smooth",
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Smooth",
							"parameter_mmax" : 1.0,
							"parameter_modmode" : 4,
							"parameter_shortname" : "Smooth",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "live.numbox[8]"
				}

			}
, 			{
				"box" : 				{
					"annotation_name" : "Quantize",
					"id" : "obj-53",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1040.0, 408.0, 44.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 134.0, 103.0, 40.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_annotation_name" : "Quantize",
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Quantize",
							"parameter_mmax" : 16.0,
							"parameter_modmode" : 4,
							"parameter_shortname" : "Quantize",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "live.numbox[12]"
				}

			}
, 			{
				"box" : 				{
					"annotation_name" : "Gamma",
					"id" : "obj-54",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1128.0, 408.0, 44.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 134.0, 71.0, 40.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_annotation_name" : "Gamma",
							"parameter_initial" : [ 1 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Gamma",
							"parameter_mmax" : 3.0,
							"parameter_modmode" : 4,
							"parameter_shortname" : "Gamma",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "live.numbox[13]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "live.comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1424.0, 376.0, 64.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 132.0, 120.0, 48.0, 18.0 ],
					"text" : "Smooth",
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "live.comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1040.0, 376.0, 64.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 132.0, 88.0, 48.0, 18.0 ],
					"text" : "Quantize",
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "live.comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1128.0, 376.0, 64.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 132.0, 56.0, 48.0, 18.0 ],
					"text" : "Gamma",
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "live.comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1208.0, 376.0, 64.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 132.0, 24.0, 48.0, 18.0 ],
					"text" : "Multiply",
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"annotation_name" : "Preview",
					"id" : "obj-37",
					"maxclass" : "live.menu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 424.0, 408.0, 100.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 46.0, 2.0, 56.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_annotation_name" : "Preview",
							"parameter_enum" : [ "Normal", "Alpha", "Overlay" ],
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Preview",
							"parameter_mmax" : 2,
							"parameter_modmode" : 0,
							"parameter_shortname" : "Preview",
							"parameter_type" : 2
						}

					}
,
					"varname" : "live.menu[3]"
				}

			}
, 			{
				"box" : 				{
					"annotation_name" : "Mode",
					"focusbordercolor" : [ 0.752941176470588, 0.752941176470588, 0.752941176470588, 0.0 ],
					"fontsize" : 9.0,
					"id" : "obj-36",
					"maxclass" : "live.tab",
					"mode" : 1,
					"num_lines_patching" : 2,
					"num_lines_presentation" : 2,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 176.0, 384.0, 113.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 2.0, 38.0, 126.0, 28.0 ],
					"saved_attribute_attributes" : 					{
						"focusbordercolor" : 						{
							"expression" : ""
						}
,
						"valueof" : 						{
							"parameter_annotation_name" : "Mode",
							"parameter_enum" : [ "Chroma", "Mapping", "Luminance", "Distance", "Channel" ],
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Mode",
							"parameter_mmax" : 4,
							"parameter_modmode" : 0,
							"parameter_shortname" : "Mode",
							"parameter_type" : 2,
							"parameter_unitstyle" : 9
						}

					}
,
					"spacing_x" : 3.0,
					"spacing_y" : 3.0,
					"varname" : "live.tab[4]"
				}

			}
, 			{
				"box" : 				{
					"annotation_name" : "Blend",
					"id" : "obj-29",
					"maxclass" : "live.menu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 688.0, 408.0, 100.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 72.0, 18.0, 56.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_annotation_name" : "Blend",
							"parameter_enum" : [ "Replace", "Multiply", "Add", "Subtract" ],
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Blend",
							"parameter_mmax" : 3,
							"parameter_modmode" : 0,
							"parameter_shortname" : "Blend",
							"parameter_type" : 2
						}

					}
,
					"varname" : "live.menu[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-125",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 536.0, 448.0, 121.0, 22.0 ],
					"text" : "prepend mix_amount"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-122",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 568.0, 48.0, 145.0, 22.0 ],
					"text" : "expr 130 + ($i1 == 1) * 88"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-121",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 568.0, 88.0, 69.0, 22.0 ],
					"text" : "setwidth $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-120",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "int", "int" ],
					"patching_rect" : [ 568.0, 128.0, 83.0, 22.0 ],
					"text" : "live.thisdevice"
				}

			}
, 			{
				"box" : 				{
					"annotation_name" : "Invert",
					"automation" : "0",
					"automationon" : "1",
					"id" : "obj-110",
					"maxclass" : "live.text",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 832.0, 408.0, 44.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 134.0, 2.0, 40.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_annotation_name" : "Invert",
							"parameter_enum" : [ "0", "1" ],
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Invert",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "Invert",
							"parameter_type" : 2
						}

					}
,
					"text" : "Invert",
					"texton" : "Invert",
					"varname" : "live.text[2]"
				}

			}
, 			{
				"box" : 				{
					"annotation_name" : "Mix",
					"id" : "obj-106",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 600.0, 408.0, 44.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 23.0, 18.0, 45.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_annotation_name" : "Mix",
							"parameter_initial" : [ 100 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Mix",
							"parameter_mmax" : 100.0,
							"parameter_modmode" : 4,
							"parameter_shortname" : "Mix",
							"parameter_type" : 0,
							"parameter_unitstyle" : 5
						}

					}
,
					"varname" : "live.numbox[18]"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.594473705410263, 0.720560630419913, 0.928309050695498, 1.0 ],
					"annotation_name" : "More",
					"id" : "obj-87",
					"maxclass" : "live.text",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 568.0, 16.0, 44.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 106.0, 2.0, 22.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"activebgoncolor" : 						{
							"expression" : "themecolor.live_value_arc"
						}
,
						"valueof" : 						{
							"parameter_annotation_name" : "More",
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_initial" : [ 1 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "More",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "More",
							"parameter_type" : 2
						}

					}
,
					"text" : "...",
					"texton" : "...",
					"varname" : "live.text[13]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-108",
					"maxclass" : "live.comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 544.0, 408.0, 48.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 17.0, 42.0, 18.0 ],
					"text" : "Mix",
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 176.0, 256.0, 60.0, 22.0 ],
					"text" : "zl.change"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 104.0, 176.0, 30.0, 22.0 ],
					"text" : "t l l"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 176.0, 224.0, 46.0, 22.0 ],
					"text" : "pack i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "int", "int", "int" ],
					"patching_rect" : [ 176.0, 176.0, 84.0, 22.0 ],
					"text" : "unpack s s i i i"
				}

			}
, 			{
				"box" : 				{
					"filename" : "PX._alpha_oklab.jxs",
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "jit_gl_texture", "" ],
					"patching_rect" : [ 280.0, 224.0, 255.0, 22.0 ],
					"text" : "jit.gl.slab px-stream @file PX._alpha_oklab.jxs",
					"textfile" : 					{
						"filename" : "PX._alpha_oklab.jxs",
						"flags" : 0,
						"embed" : 0,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-42",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "PX._channel.maxpat",
					"numinlets" : 5,
					"numoutlets" : 6,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "int", "bang", "", "", "", "" ],
					"patching_rect" : [ 8.0, 328.0, 239.0, 32.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 280.0, 128.0, 82.0, 22.0 ],
					"text" : "s ---this_bang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 128.0, 80.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 128.0, 128.0, 56.0, 22.0 ],
					"text" : "s ---reset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-309",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 280.0, 280.0, 80.0, 22.0 ],
					"text" : "r ---this_bang"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "audio" ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-12",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "PX._chain.maxpat",
					"numinlets" : 3,
					"numoutlets" : 4,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 256.0, 328.0, 240.0, 32.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-376",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 8.0, 216.0, 31.0, 22.0 ],
					"text" : "int 8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-372",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 8.0, 184.0, 54.0, 22.0 ],
					"text" : "r ---reset"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.972549019607843, 0.462745098039216, 0.501960784313725, 1.0 ],
					"annotation" : "Sets target mix channel, rendered in Mix View device, alternative to Mix Channel device. When P (pass) is select texture is processed by following device.",
					"annotation_name" : "Channel",
					"focusbordercolor" : [ 0.752941176470588, 0.752941176470588, 0.752941176470588, 0.0 ],
					"id" : "obj-366",
					"maxclass" : "live.tab",
					"num_lines_patching" : 1,
					"num_lines_presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 8.0, 280.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 2.0, 153.0, 126.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"activebgoncolor" : 						{
							"expression" : "themecolor.live_display_handle_two"
						}
,
						"focusbordercolor" : 						{
							"expression" : ""
						}
,
						"valueof" : 						{
							"parameter_annotation_name" : "Channel",
							"parameter_enum" : [ "1", "2", "3", "4", "5", "6", "7", "8", "P" ],
							"parameter_info" : "Sets target mix channel, rendered in Mix View device, alternative to Mix Channel device. When P (pass) is select texture is processed by following device.",
							"parameter_initial" : [ 8 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Channel",
							"parameter_mmax" : 8,
							"parameter_modmode" : 0,
							"parameter_shortname" : "Channel",
							"parameter_type" : 2,
							"parameter_unitstyle" : 9
						}

					}
,
					"spacing_x" : 3.0,
					"varname" : "live.tab[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "int", "int" ],
					"patching_rect" : [ 280.0, 64.0, 100.0, 22.0 ],
					"text" : "live.thisdevice"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 8.0, 80.0, 62.0, 22.0 ],
					"text" : "plugin~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 8.0, 128.0, 62.0, 22.0 ],
					"text" : "plugout~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "live.comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 368.0, 408.0, 48.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 1.0, 42.0, 18.0 ],
					"text" : "Preview",
					"textjustification" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 4 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-125", 0 ],
					"source" : [ "obj-106", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 1 ],
					"source" : [ "obj-11", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-110", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"order" : 1,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 2 ],
					"order" : 0,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-120", 0 ],
					"source" : [ "obj-121", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-121", 0 ],
					"source" : [ "obj-122", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-142", 0 ],
					"source" : [ "obj-125", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-142", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-142", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-142", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-142", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-142", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-142", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-142", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-142", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-142", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 1 ],
					"source" : [ "obj-309", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"order" : 0,
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"order" : 1,
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"source" : [ "obj-366", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-376", 0 ],
					"source" : [ "obj-372", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-366", 0 ],
					"source" : [ "obj-376", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-42", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-366", 0 ],
					"source" : [ "obj-42", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 3 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-142", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 1 ],
					"source" : [ "obj-8", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-8", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-122", 0 ],
					"source" : [ "obj-87", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"source" : [ "obj-9", 1 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-106" : [ "Mix", "Mix", 0 ],
			"obj-110" : [ "Invert", "Invert", 0 ],
			"obj-23::obj-10" : [ "Invert Mapping", "Invert Mapping", 0 ],
			"obj-23::obj-100" : [ "Min", "Min", 0 ],
			"obj-23::obj-104" : [ "Phase", "Phase", 0 ],
			"obj-23::obj-105" : [ "OKLAB", "OKLAB", 0 ],
			"obj-23::obj-112" : [ "Mapping", "Mapping", 0 ],
			"obj-23::obj-116" : [ "Scale", "Scale", 0 ],
			"obj-23::obj-117" : [ "Mirror", "Mirror", 0 ],
			"obj-23::obj-118" : [ "Luminance Threshold", "Luminance Threshold", 0 ],
			"obj-23::obj-12" : [ "Distance Fade", "Distance Fade", 0 ],
			"obj-23::obj-13" : [ "Chroma G", "Chroma G", 0 ],
			"obj-23::obj-14" : [ "Chroma B", "Chroma B", 0 ],
			"obj-23::obj-15" : [ "Distance Color", "Distance Color", 0 ],
			"obj-23::obj-18" : [ "Global", "Global", 0 ],
			"obj-23::obj-20" : [ "Fade", "Fade", 0 ],
			"obj-23::obj-22" : [ "Luminance Invert", "Luminance Invert", 0 ],
			"obj-23::obj-24" : [ "Distance Threshold", "Distance Threshold", 0 ],
			"obj-23::obj-25" : [ "Color Channel", "Color Channel", 0 ],
			"obj-23::obj-29" : [ "Distance B", "Distance B", 0 ],
			"obj-23::obj-33" : [ "Chroma Color", "Chroma Color", 0 ],
			"obj-23::obj-34" : [ "Distance G", "Distance G", 0 ],
			"obj-23::obj-36" : [ "Distance R", "Distance R", 0 ],
			"obj-23::obj-4" : [ "Chroma R", "Chroma R", 0 ],
			"obj-23::obj-7" : [ "Hue", "Hue", 0 ],
			"obj-23::obj-79" : [ "Chroma", "Chroma", 0 ],
			"obj-23::obj-82" : [ "Lightness", "Lightness", 0 ],
			"obj-23::obj-90" : [ "Luminance Fade", "Luminance Fade", 0 ],
			"obj-23::obj-97" : [ "Max", "Max", 0 ],
			"obj-29" : [ "Blend", "Blend", 0 ],
			"obj-36" : [ "Mode", "Mode", 0 ],
			"obj-366" : [ "Channel", "Channel", 0 ],
			"obj-37" : [ "Preview", "Preview", 0 ],
			"obj-50" : [ "Multiply", "Multiply", 0 ],
			"obj-51" : [ "Threshold", "Threshold", 0 ],
			"obj-52" : [ "Smooth", "Smooth", 0 ],
			"obj-53" : [ "Quantize", "Quantize", 0 ],
			"obj-54" : [ "Gamma", "Gamma", 0 ],
			"obj-56" : [ "Cutoff", "Cutoff", 0 ],
			"obj-87" : [ "More", "More", 0 ],
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "PX._chain.js",
				"bootpath" : "~/Documents/GitHub/px-stream/devices",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "PX._chain.maxpat",
				"bootpath" : "~/Documents/GitHub/px-stream/devices",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "PX._channel.maxpat",
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
 ],
		"autosave" : 0
	}

}
