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
		"rect" : [ 133.0, 71.0, 571.0, 508.0 ],
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
					"id" : "obj-43",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 344.0, 224.0, 326.0, 22.0 ],
					"text" : "expr 0 + ($i1 == 1) * 0 + ($i1 == 2) * -200 + ($i1 == 0) * -400"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 344.0, 272.0, 64.0, 22.0 ],
					"text" : "offset 0 $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 344.0, 312.0, 163.0, 22.0 ],
					"text" : "prepend script send colorTab"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 344.0, 352.0, 67.0, 22.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 824.0, 176.0, 22.0, 22.0 ],
					"text" : "t 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 760.0, 176.0, 22.0, 22.0 ],
					"text" : "t 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 824.0, 136.0, 50.0, 22.0 ],
					"text" : "select 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 760.0, 136.0, 50.0, 22.0 ],
					"text" : "select 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 696.0, 176.0, 22.0, 22.0 ],
					"text" : "t 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 696.0, 136.0, 50.0, 22.0 ],
					"text" : "select 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 696.0, 56.0, 35.0, 22.0 ],
					"text" : "set 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 696.0, 16.0, 50.0, 22.0 ],
					"text" : "select 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 768.0, 56.0, 35.0, 22.0 ],
					"text" : "set 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 768.0, 16.0, 50.0, 22.0 ],
					"text" : "select 1"
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
					"id" : "obj-51",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"numinlets" : 0,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 8,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 33.0, 79.0, 571.0, 498.0 ],
						"openinpresentation" : 1,
						"gridonopen" : 2,
						"gridsize" : [ 8.0, 8.0 ],
						"gridsnaponopen" : 2,
						"objectsnaponopen" : 0,
						"integercoordinates" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 282.0, 915.0, 90.0, 22.0 ],
									"text" : "prepend param"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 806.0, 574.0, 105.0, 22.0 ],
									"text" : "prepend green_lift"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 806.0, 614.0, 97.0, 22.0 ],
									"text" : "prepend blue_lift"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 806.0, 534.0, 92.0, 22.0 ],
									"text" : "prepend red_lift"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 679.0, 575.0, 133.0, 22.0 ],
									"text" : "prepend green_gamma"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 679.0, 615.0, 125.0, 22.0 ],
									"text" : "prepend blue_gamma"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 679.0, 535.0, 120.0, 22.0 ],
									"text" : "prepend red_gamma"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 552.0, 576.0, 116.0, 22.0 ],
									"text" : "prepend green_gain"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 552.0, 616.0, 108.0, 22.0 ],
									"text" : "prepend blue_gain"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 552.0, 536.0, 103.0, 22.0 ],
									"text" : "prepend red_gain"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 600.0, 664.0, 42.0, 22.0 ],
									"text" : "s ---lift"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 304.0, 880.0, 40.0, 22.0 ],
									"text" : "r ---lift"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-40",
									"maxclass" : "live.slider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"orientation" : 1,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 720.0, 480.0, 50.0, 31.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 112.0, 336.0, 50.0, 31.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "live.slider[14]",
											"parameter_mmax" : 1.0,
											"parameter_mmin" : -1.0,
											"parameter_modmode" : 3,
											"parameter_shortname" : "live.slider[8]",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"showname" : 0,
									"varname" : "live.slider[10]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-42",
									"maxclass" : "live.slider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"orientation" : 1,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 720.0, 432.0, 50.0, 31.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 112.0, 280.0, 50.0, 31.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "live.slider[15]",
											"parameter_mmax" : 1.0,
											"parameter_mmin" : -1.0,
											"parameter_modmode" : 3,
											"parameter_shortname" : "live.slider[8]",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"showname" : 0,
									"varname" : "live.slider[11]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-45",
									"maxclass" : "live.slider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"orientation" : 1,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 720.0, 376.0, 50.0, 31.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 112.0, 224.0, 50.0, 31.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "live.slider[16]",
											"parameter_mmax" : 1.0,
											"parameter_mmin" : -1.0,
											"parameter_modmode" : 3,
											"parameter_shortname" : "live.slider[8]",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"showname" : 0,
									"varname" : "live.slider[12]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "live.slider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"orientation" : 1,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 576.0, 472.0, 50.0, 31.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 16.0, 336.0, 50.0, 31.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_initial" : [ 1 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "live.slider[12]",
											"parameter_mmax" : 2.0,
											"parameter_modmode" : 3,
											"parameter_shortname" : "live.slider[8]",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"showname" : 0,
									"varname" : "live.slider[7]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "live.slider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"orientation" : 1,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 648.0, 432.0, 50.0, 31.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 64.0, 280.0, 50.0, 31.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_initial" : [ 1 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "live.slider[9]",
											"parameter_mmax" : 2.0,
											"parameter_modmode" : 3,
											"parameter_shortname" : "live.slider[8]",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"showname" : 0,
									"varname" : "live.slider[8]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "live.slider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"orientation" : 1,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 648.0, 376.0, 50.0, 31.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 64.0, 224.0, 50.0, 31.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_initial" : [ 1 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "live.slider[13]",
											"parameter_mmax" : 2.0,
											"parameter_modmode" : 3,
											"parameter_shortname" : "live.slider[8]",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"showname" : 0,
									"varname" : "live.slider[9]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "live.slider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"orientation" : 1,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 648.0, 480.0, 50.0, 31.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 64.0, 336.0, 50.0, 31.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_initial" : [ 1 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "live.slider[11]",
											"parameter_mmax" : 2.0,
											"parameter_modmode" : 3,
											"parameter_shortname" : "live.slider[8]",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"showname" : 0,
									"varname" : "live.slider[5]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "live.slider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"orientation" : 1,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 576.0, 424.0, 50.0, 31.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 16.0, 280.0, 50.0, 31.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_initial" : [ 1 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "live.slider[8]",
											"parameter_mmax" : 2.0,
											"parameter_modmode" : 3,
											"parameter_shortname" : "live.slider[8]",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"showname" : 0,
									"varname" : "live.slider[4]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "live.slider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"orientation" : 1,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 568.0, 376.0, 50.0, 31.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 16.0, 224.0, 50.0, 31.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_initial" : [ 1 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "live.slider[10]",
											"parameter_mmax" : 2.0,
											"parameter_modmode" : 3,
											"parameter_shortname" : "live.slider[8]",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"showname" : 0,
									"varname" : "live.slider[6]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "live.comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 632.0, 336.0, 56.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 65.0, 200.0, 48.0, 18.0 ],
									"text" : "Gamma",
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "live.comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 568.0, 336.0, 56.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 17.0, 200.0, 48.0, 18.0 ],
									"text" : "Gain",
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "live.comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 704.0, 336.0, 56.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 113.0, 200.0, 48.0, 18.0 ],
									"text" : "Lift",
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-90",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 553.0, 816.0, 161.0, 22.0 ],
									"text" : "prepend param shadow_lum"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-89",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 386.0, 816.0, 143.0, 22.0 ],
									"text" : "prepend param dark_lum"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-88",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 218.0, 816.0, 141.0, 22.0 ],
									"text" : "prepend param light_lum"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-86",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 9,
											"minor" : 0,
											"revision" : 8,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 0.0, 0.0, 661.5, 475.200000000000045 ],
										"gridsize" : [ 15.0, 15.0 ],
										"integercoordinates" : 1,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-52",
													"maxclass" : "newobj",
													"numinlets" : 6,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 170.0, 100.0, 125.0, 22.0 ],
													"text" : "scale -100. 100. -1. 1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-51",
													"maxclass" : "newobj",
													"numinlets" : 6,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 132.0, 125.0, 22.0 ],
													"text" : "scale -100. 100. -1. 1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-54",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 280.0, 180.0, 153.0, 22.0 ],
													"text" : "expr sqrt($f1*$f1 + $f2*$f2)"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-56",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 90.0, 180.0, 167.0, 22.0 ],
													"text" : "expr atan2($f2\\, $f1) / 6.28319"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-80",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-81",
													"index" : 2,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 170.0, 40.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-82",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 90.0, 262.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-83",
													"index" : 2,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 280.0, 262.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-54", 0 ],
													"order" : 0,
													"source" : [ "obj-51", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-56", 0 ],
													"order" : 1,
													"source" : [ "obj-51", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-54", 1 ],
													"order" : 0,
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-56", 1 ],
													"order" : 1,
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-83", 0 ],
													"source" : [ "obj-54", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-82", 0 ],
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-51", 0 ],
													"source" : [ "obj-80", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"source" : [ "obj-81", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 129.0, 532.0, 152.0, 22.0 ],
									"text" : "p"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-87",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 9,
											"minor" : 0,
											"revision" : 8,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 0.0, 0.0, 661.5, 475.200000000000045 ],
										"gridsize" : [ 15.0, 15.0 ],
										"integercoordinates" : 1,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-52",
													"maxclass" : "newobj",
													"numinlets" : 6,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 170.0, 100.0, 125.0, 22.0 ],
													"text" : "scale -100. 100. -1. 1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-51",
													"maxclass" : "newobj",
													"numinlets" : 6,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 132.0, 125.0, 22.0 ],
													"text" : "scale -100. 100. -1. 1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-54",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 280.0, 180.0, 153.0, 22.0 ],
													"text" : "expr sqrt($f1*$f1 + $f2*$f2)"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-56",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 90.0, 180.0, 167.0, 22.0 ],
													"text" : "expr atan2($f2\\, $f1) / 6.28319"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-80",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-81",
													"index" : 2,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 170.0, 40.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-82",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 90.0, 262.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-83",
													"index" : 2,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 280.0, 262.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-54", 0 ],
													"order" : 0,
													"source" : [ "obj-51", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-56", 0 ],
													"order" : 1,
													"source" : [ "obj-51", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-54", 1 ],
													"order" : 0,
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-56", 1 ],
													"order" : 1,
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-83", 0 ],
													"source" : [ "obj-54", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-82", 0 ],
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-51", 0 ],
													"source" : [ "obj-80", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"source" : [ "obj-81", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 274.0, 512.0, 152.0, 22.0 ],
									"text" : "p"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-85",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 9,
											"minor" : 0,
											"revision" : 8,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 58.0, 100.0, 662.0, 476.0 ],
										"gridsize" : [ 15.0, 15.0 ],
										"integercoordinates" : 1,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-52",
													"maxclass" : "newobj",
													"numinlets" : 6,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 170.0, 100.0, 125.0, 22.0 ],
													"text" : "scale -100. 100. -1. 1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-51",
													"maxclass" : "newobj",
													"numinlets" : 6,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 132.0, 125.0, 22.0 ],
													"text" : "scale -100. 100. -1. 1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-54",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 280.0, 180.0, 153.0, 22.0 ],
													"text" : "expr sqrt($f1*$f1 + $f2*$f2)"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-56",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 90.0, 180.0, 167.0, 22.0 ],
													"text" : "expr atan2($f2\\, $f1) / 6.28319"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-80",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-81",
													"index" : 2,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 170.0, 40.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-82",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 90.0, 262.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-83",
													"index" : 2,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 280.0, 262.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-54", 0 ],
													"order" : 0,
													"source" : [ "obj-51", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-56", 0 ],
													"order" : 1,
													"source" : [ "obj-51", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-54", 1 ],
													"order" : 0,
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-56", 1 ],
													"order" : 1,
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-83", 0 ],
													"source" : [ "obj-54", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-82", 0 ],
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-51", 0 ],
													"source" : [ "obj-80", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"source" : [ "obj-81", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 121.0, 308.0, 152.0, 22.0 ],
									"text" : "p"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-84",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 9,
											"minor" : 0,
											"revision" : 8,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 58.0, 100.0, 662.0, 476.0 ],
										"gridsize" : [ 15.0, 15.0 ],
										"integercoordinates" : 1,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-52",
													"maxclass" : "newobj",
													"numinlets" : 6,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 170.0, 100.0, 125.0, 22.0 ],
													"text" : "scale -100. 100. -1. 1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-51",
													"maxclass" : "newobj",
													"numinlets" : 6,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 132.0, 125.0, 22.0 ],
													"text" : "scale -100. 100. -1. 1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-54",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 280.0, 180.0, 153.0, 22.0 ],
													"text" : "expr sqrt($f1*$f1 + $f2*$f2)"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-56",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 90.0, 180.0, 167.0, 22.0 ],
													"text" : "expr atan2($f2\\, $f1) / 6.28319"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-80",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-81",
													"index" : 2,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 170.0, 40.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-82",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 90.0, 262.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-83",
													"index" : 2,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 280.0, 262.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-54", 0 ],
													"order" : 0,
													"source" : [ "obj-51", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-56", 0 ],
													"order" : 1,
													"source" : [ "obj-51", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-54", 1 ],
													"order" : 0,
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-56", 1 ],
													"order" : 1,
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-83", 0 ],
													"source" : [ "obj-54", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-82", 0 ],
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-51", 0 ],
													"source" : [ "obj-80", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"source" : [ "obj-81", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 281.0, 300.0, 152.0, 22.0 ],
									"text" : "p"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-73",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 282.0, 592.0, 157.0, 22.0 ],
									"text" : "prepend param shadow_sat"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-74",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 282.0, 551.0, 161.0, 22.0 ],
									"text" : "prepend param shadow_hue"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-70",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 121.0, 604.0, 138.0, 22.0 ],
									"text" : "prepend param light_sat"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-71",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 121.0, 564.0, 142.0, 22.0 ],
									"text" : "prepend param light_hue"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-57",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 816.0, 151.0, 22.0 ],
									"text" : "prepend param global_lum"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-53",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 265.0, 372.0, 148.0, 22.0 ],
									"text" : "prepend param global_sat"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-55",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 281.0, 348.0, 152.0, 22.0 ],
									"text" : "prepend param global_hue"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-49",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 121.0, 388.0, 139.0, 22.0 ],
									"text" : "prepend param dark_sat"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 121.0, 348.0, 143.0, 22.0 ],
									"text" : "prepend param dark_hue"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-43",
									"maxclass" : "live.slider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 530.0, 680.0, 39.0, 95.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 64.0, 96.0, 18.0, 68.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "live.slider[4]",
											"parameter_mmax" : 1.0,
											"parameter_mmin" : -1.0,
											"parameter_modmode" : 3,
											"parameter_shortname" : "live.slider",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"showname" : 0,
									"shownumber" : 0,
									"varname" : "live.slider[2]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-44",
									"maxclass" : "live.slider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 370.0, 689.0, 39.0, 95.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 64.0, 15.0, 18.0, 68.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "live.slider[5]",
											"parameter_mmax" : 1.0,
											"parameter_mmin" : -1.0,
											"parameter_modmode" : 3,
											"parameter_shortname" : "live.slider",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"showname" : 0,
									"shownumber" : 0,
									"varname" : "live.slider[3]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "live.slider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 50.0, 695.0, 39.0, 95.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 156.0, 97.0, 18.0, 68.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "live.slider[6]",
											"parameter_mmax" : 1.0,
											"parameter_mmin" : -1.0,
											"parameter_modmode" : 3,
											"parameter_shortname" : "live.slider",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"showname" : 0,
									"shownumber" : 0,
									"varname" : "live.slider[1]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "live.comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 281.0, 219.0, 56.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 92.0, 82.0, 64.0, 18.0 ],
									"text" : "Global",
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"bottomvalue" : -100,
									"color" : [ 0.09782765023003, 0.097827613875914, 0.09782762332443, 1.0 ],
									"elementcolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"id" : "obj-36",
									"invisiblebkgnd" : 1,
									"leftvalue" : -100,
									"maxclass" : "pictslider",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 281.0, 244.0, 48.0, 32.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 92.0, 100.0, 60.0, 60.0 ],
									"rightvalue" : 100,
									"saved_attribute_attributes" : 									{
										"color" : 										{
											"expression" : "themecolor.live_contrast_frame"
										}
,
										"elementcolor" : 										{
											"expression" : "themecolor.live_control_fill_handle"
										}
,
										"valueof" : 										{
											"parameter_initial" : [ -1, -1 ],
											"parameter_initial_enable" : 1,
											"parameter_invisible" : 1,
											"parameter_longname" : "pictslider[4]",
											"parameter_modmode" : 0,
											"parameter_shortname" : "pictslider[2]",
											"parameter_type" : 3
										}

									}
,
									"topvalue" : 100,
									"varname" : "pictslider[2]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "jit_matrix" ],
									"patching_rect" : [ 505.0, 164.0, 100.0, 50.0 ],
									"pic" : "Macintosh HD:/Users/jan/Documents/GitHub/px-stream/devices/PX,_color_wheel_cut.svg",
									"presentation" : 1,
									"presentation_rect" : [ 92.0, 100.0, 60.0, 60.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "live.comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 129.0, 419.0, 72.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 92.0, 0.0, 64.0, 18.0 ],
									"text" : "Light",
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"bottomvalue" : -100,
									"color" : [ 0.09782765023003, 0.097827613875914, 0.09782762332443, 1.0 ],
									"elementcolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"id" : "obj-32",
									"invisiblebkgnd" : 1,
									"leftvalue" : -100,
									"maxclass" : "pictslider",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 129.0, 452.0, 56.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 92.0, 18.0, 60.0, 60.0 ],
									"rightvalue" : 100,
									"saved_attribute_attributes" : 									{
										"color" : 										{
											"expression" : "themecolor.live_contrast_frame"
										}
,
										"elementcolor" : 										{
											"expression" : "themecolor.live_control_fill_handle"
										}
,
										"valueof" : 										{
											"parameter_initial" : [ -1, -1 ],
											"parameter_initial_enable" : 1,
											"parameter_invisible" : 1,
											"parameter_longname" : "pictslider[5]",
											"parameter_modmode" : 0,
											"parameter_shortname" : "pictslider[1]",
											"parameter_type" : 3
										}

									}
,
									"topvalue" : 100,
									"varname" : "pictslider[1]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "jit_matrix" ],
									"patching_rect" : [ 393.0, 164.0, 100.0, 50.0 ],
									"pic" : "Macintosh HD:/Users/jan/Documents/GitHub/px-stream/devices/PX,_color_wheel_cut.svg",
									"presentation" : 1,
									"presentation_rect" : [ 92.0, 18.0, 60.0, 60.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "live.comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 291.0, 412.0, 64.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 0.0, 82.0, 64.0, 18.0 ],
									"text" : "Shadow",
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"bottomvalue" : -100,
									"color" : [ 0.09782765023003, 0.097827613875914, 0.09782762332443, 1.0 ],
									"elementcolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"id" : "obj-24",
									"invisiblebkgnd" : 1,
									"leftvalue" : -100,
									"maxclass" : "pictslider",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 291.0, 445.0, 48.0, 48.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 0.0, 100.0, 60.0, 60.0 ],
									"rightvalue" : 100,
									"saved_attribute_attributes" : 									{
										"color" : 										{
											"expression" : "themecolor.live_contrast_frame"
										}
,
										"elementcolor" : 										{
											"expression" : "themecolor.live_control_fill_handle"
										}
,
										"valueof" : 										{
											"parameter_initial" : [ -1, -1 ],
											"parameter_initial_enable" : 1,
											"parameter_invisible" : 1,
											"parameter_longname" : "pictslider[6]",
											"parameter_modmode" : 0,
											"parameter_shortname" : "pictslider[3]",
											"parameter_type" : 3
										}

									}
,
									"topvalue" : 100,
									"varname" : "pictslider[3]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "jit_matrix" ],
									"patching_rect" : [ 505.0, 100.0, 100.0, 50.0 ],
									"pic" : "Macintosh HD:/Users/jan/Documents/GitHub/px-stream/devices/PX,_color_wheel_cut.svg",
									"presentation" : 1,
									"presentation_rect" : [ 0.0, 100.0, 60.0, 60.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "live.comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 121.0, 220.0, 56.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 0.0, 0.0, 64.0, 18.0 ],
									"text" : "Dark",
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"bottomvalue" : -100,
									"color" : [ 0.09782765023003, 0.097827613875914, 0.09782762332443, 1.0 ],
									"elementcolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"id" : "obj-21",
									"invisiblebkgnd" : 1,
									"leftvalue" : -100,
									"maxclass" : "pictslider",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 121.0, 245.0, 56.0, 40.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 0.0, 18.0, 60.0, 60.0 ],
									"rightvalue" : 100,
									"saved_attribute_attributes" : 									{
										"color" : 										{
											"expression" : "themecolor.live_contrast_frame"
										}
,
										"elementcolor" : 										{
											"expression" : "themecolor.live_control_fill_handle"
										}
,
										"valueof" : 										{
											"parameter_initial" : [ -1, -1 ],
											"parameter_initial_enable" : 1,
											"parameter_invisible" : 1,
											"parameter_longname" : "pictslider[7]",
											"parameter_modmode" : 0,
											"parameter_shortname" : "pictslider",
											"parameter_type" : 3
										}

									}
,
									"topvalue" : 100,
									"varname" : "pictslider"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "jit_matrix" ],
									"patching_rect" : [ 393.0, 100.0, 100.0, 50.0 ],
									"pic" : "Macintosh HD:/Users/jan/Documents/GitHub/px-stream/devices/PX,_color_wheel_cut.svg",
									"presentation" : 1,
									"presentation_rect" : [ 0.0, 18.0, 60.0, 60.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "live.slider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 186.0, 689.0, 39.0, 95.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 156.0, 15.0, 18.0, 68.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "live.slider[7]",
											"parameter_mmax" : 1.0,
											"parameter_mmin" : -1.0,
											"parameter_modmode" : 3,
											"parameter_shortname" : "live.slider",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"showname" : 0,
									"shownumber" : 0,
									"varname" : "live.slider"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-48",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 227.416655999999989, 898.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 9.0,
									"id" : "obj-16",
									"maxclass" : "live.comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 520.0, 480.0, 34.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 0.0, 336.0, 16.0, 17.0 ],
									"text" : "B",
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 9.0,
									"id" : "obj-15",
									"maxclass" : "live.comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 520.0, 440.0, 34.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 0.0, 280.0, 16.0, 17.0 ],
									"text" : "G",
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 9.0,
									"id" : "obj-14",
									"maxclass" : "live.comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 510.0, 406.0, 34.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 0.0, 224.0, 16.0, 17.0 ],
									"text" : "R",
									"textjustification" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-85", 0 ],
									"source" : [ "obj-21", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-85", 1 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-87", 0 ],
									"source" : [ "obj-24", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-87", 1 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-86", 0 ],
									"source" : [ "obj-32", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-86", 1 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 0 ],
									"source" : [ "obj-36", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 1 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-88", 0 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-57", 0 ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-90", 0 ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-89", 0 ],
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"source" : [ "obj-57", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"source" : [ "obj-70", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"source" : [ "obj-71", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"source" : [ "obj-73", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"source" : [ "obj-74", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"source" : [ "obj-84", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 0 ],
									"source" : [ "obj-84", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"source" : [ "obj-85", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 0 ],
									"source" : [ "obj-85", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-70", 0 ],
									"source" : [ "obj-86", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-71", 0 ],
									"source" : [ "obj-86", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-73", 0 ],
									"source" : [ "obj-87", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-74", 0 ],
									"source" : [ "obj-87", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"source" : [ "obj-88", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"source" : [ "obj-89", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"source" : [ "obj-90", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 648.0, 432.0, 200.0, 312.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 140.0, 0.0, 268.0, 168.0 ],
					"varname" : "colorTab",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.594473705410263, 0.720560630419913, 0.928309050695498, 1.0 ],
					"fontsize" : 7.0,
					"id" : "obj-40",
					"maxclass" : "live.text",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 768.0, 96.0, 44.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 96.0, 120.0, 32.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"activebgoncolor" : 						{
							"expression" : "themecolor.live_value_arc"
						}
,
						"valueof" : 						{
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "live.text[1]",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "live.text",
							"parameter_type" : 2
						}

					}
,
					"text" : "Gamma",
					"texton" : "Gamma",
					"varname" : "live.text[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-63",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 16.0, 256.0, 109.0, 22.0 ],
					"text" : "prepend param tint"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-62",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 8.0, 416.0, 158.0, 22.0 ],
					"text" : "prepend param temperature"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 160.0, 240.0, 143.0, 22.0 ],
					"text" : "prepend param exposure"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 184.0, 399.0, 136.0, 22.0 ],
					"text" : "prepend param contrast"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-59",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 161.0, 319.0, 149.0, 22.0 ],
					"text" : "prepend param brightness"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 6.0, 515.0, 146.0, 22.0 ],
					"text" : "prepend param saturation"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 696.0, 272.0, 248.0, 22.0 ],
					"text" : "expr 130 + ($i1 == 1) * 186 + ($i1 == 2) * 172"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.594473705410263, 0.720560630419913, 0.928309050695498, 1.0 ],
					"fontsize" : 7.0,
					"id" : "obj-34",
					"maxclass" : "live.text",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 696.0, 96.0, 44.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 96.0, 135.0, 32.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"activebgoncolor" : 						{
							"expression" : "themecolor.live_value_arc"
						}
,
						"valueof" : 						{
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_initial" : [ 1.0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "live.text[8]",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "live.text",
							"parameter_type" : 2
						}

					}
,
					"text" : "Color",
					"texton" : "Color",
					"varname" : "live.text[13]"
				}

			}
, 			{
				"box" : 				{
					"appearance" : 1,
					"id" : "obj-31",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 32.0, 224.0, 25.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 67.0, 116.0, 25.0, 23.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0.0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "live.dial[5]",
							"parameter_mmax" : 100.0,
							"parameter_mmin" : -100.0,
							"parameter_modmode" : 3,
							"parameter_shortname" : "live.dial",
							"parameter_type" : 0,
							"parameter_unitstyle" : 0
						}

					}
,
					"showname" : 0,
					"varname" : "live.dial[5]"
				}

			}
, 			{
				"box" : 				{
					"appearance" : 1,
					"id" : "obj-30",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 216.0, 209.0, 25.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 3.0, 116.0, 25.0, 23.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0.0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "live.dial[4]",
							"parameter_mmax" : 3.0,
							"parameter_mmin" : -3.0,
							"parameter_modmode" : 3,
							"parameter_shortname" : "live.dial",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"showname" : 0,
					"varname" : "live.dial[4]"
				}

			}
, 			{
				"box" : 				{
					"appearance" : 1,
					"id" : "obj-29",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 32.0, 384.0, 25.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 67.0, 68.0, 25.0, 23.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0.0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "live.dial[3]",
							"parameter_mmax" : 100.0,
							"parameter_mmin" : -100.0,
							"parameter_modmode" : 3,
							"parameter_shortname" : "live.dial",
							"parameter_type" : 0,
							"parameter_unitstyle" : 0
						}

					}
,
					"showname" : 0,
					"varname" : "live.dial[3]"
				}

			}
, 			{
				"box" : 				{
					"appearance" : 1,
					"id" : "obj-28",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 233.0, 368.0, 25.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 3.0, 68.0, 25.0, 23.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 1 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "live.dial[2]",
							"parameter_mmax" : 3.0,
							"parameter_modmode" : 3,
							"parameter_shortname" : "live.dial",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"showname" : 0,
					"varname" : "live.dial[2]"
				}

			}
, 			{
				"box" : 				{
					"appearance" : 1,
					"id" : "obj-26",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 55.0, 479.0, 25.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 67.0, 20.0, 25.0, 23.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 1 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "live.dial[1]",
							"parameter_mmax" : 2.0,
							"parameter_modmode" : 3,
							"parameter_shortname" : "live.dial",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"showname" : 0,
					"varname" : "live.dial[1]"
				}

			}
, 			{
				"box" : 				{
					"appearance" : 1,
					"id" : "obj-19",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 224.0, 288.0, 25.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 3.0, 20.0, 25.0, 23.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "live.dial",
							"parameter_mmax" : 1.0,
							"parameter_mmin" : -1.0,
							"parameter_modmode" : 3,
							"parameter_shortname" : "live.dial",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"showname" : 0,
					"varname" : "live.dial"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "live.comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 24.0, 192.0, 72.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 64.0, 96.0, 64.0, 18.0 ],
					"text" : "Tint",
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "live.comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 24.0, 360.0, 72.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 64.0, 48.0, 64.0, 18.0 ],
					"text" : "Temperature",
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "live.comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 184.0, 344.0, 64.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 48.0, 64.0, 18.0 ],
					"text" : "Contrast",
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "live.comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 176.0, 184.0, 72.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 96.0, 64.0, 18.0 ],
					"text" : "Exposure",
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "live.comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 48.0, 456.0, 64.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 64.0, 0.0, 64.0, 18.0 ],
					"text" : "Saturation",
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "live.comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 160.0, 264.0, 150.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 0.0, 64.0, 18.0 ],
					"text" : "Brigtness",
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 696.0, 312.0, 69.0, 22.0 ],
					"text" : "setwidth $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "int", "int" ],
					"patching_rect" : [ 696.0, 352.0, 83.0, 22.0 ],
					"text" : "live.thisdevice"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 184.0, 1146.0, 60.0, 22.0 ],
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
					"patching_rect" : [ 112.0, 1064.0, 30.0, 22.0 ],
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
					"patching_rect" : [ 184.0, 1116.0, 46.0, 22.0 ],
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
					"patching_rect" : [ 184.0, 1064.0, 84.0, 22.0 ],
					"text" : "unpack s s i i i"
				}

			}
, 			{
				"box" : 				{
					"filename" : "PX._colors_plus.jxs",
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "jit_gl_texture", "" ],
					"patching_rect" : [ 279.0, 581.0, 251.0, 22.0 ],
					"text" : "jit.gl.slab px-stream @file PX._colors_plus.jxs",
					"textfile" : 					{
						"filename" : "PX._colors_plus.jxs",
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
					"patching_rect" : [ 16.0, 1218.0, 239.0, 32.0 ],
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
					"fontsize" : 18.0,
					"id" : "obj-167",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 8.0, 8.0, 351.0, 47.0 ],
					"saved_attribute_attributes" : 					{
						"textcolor" : 						{
							"expression" : "themecolor.live_control_fg"
						}

					}
,
					"text" : "PX Stream by darosh\nhttps://github.com/darosh/px-stream"
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
					"patching_rect" : [ 287.0, 1168.0, 80.0, 22.0 ],
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
					"patching_rect" : [ 265.0, 1218.0, 240.0, 32.0 ],
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
					"patching_rect" : [ 16.0, 1104.0, 31.0, 22.0 ],
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
					"patching_rect" : [ 16.0, 1073.0, 54.0, 22.0 ],
					"text" : "r ---reset"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.972549019607843, 0.462745098039216, 0.501960784313725, 1.0 ],
					"focusbordercolor" : [ 0.752941176470588, 0.752941176470588, 0.752941176470588, 0.0 ],
					"id" : "obj-366",
					"maxclass" : "live.tab",
					"num_lines_patching" : 1,
					"num_lines_presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 16.0, 1168.0, 100.0, 20.0 ],
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
							"parameter_enum" : [ "1", "2", "3", "4", "5", "6", "7", "8", "P" ],
							"parameter_initial" : [ 8.0 ],
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
					"patching_rect" : [ 280.0, 80.0, 100.0, 22.0 ],
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
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 4 ],
					"source" : [ "obj-1", 0 ]
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
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
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
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
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
					"destination" : [ "obj-50", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"order" : 0,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"order" : 1,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
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
					"destination" : [ "obj-61", 0 ],
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
					"destination" : [ "obj-63", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"order" : 0,
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"order" : 2,
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"order" : 1,
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"order" : 0,
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"order" : 1,
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"order" : 0,
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
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
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"order" : 2,
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"order" : 1,
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"order" : 0,
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-41", 0 ]
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
					"destination" : [ "obj-41", 0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"source" : [ "obj-46", 0 ]
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
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-63", 0 ]
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
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-19" : [ "live.dial", "live.dial", 0 ],
			"obj-26" : [ "live.dial[1]", "live.dial", 0 ],
			"obj-28" : [ "live.dial[2]", "live.dial", 0 ],
			"obj-29" : [ "live.dial[3]", "live.dial", 0 ],
			"obj-30" : [ "live.dial[4]", "live.dial", 0 ],
			"obj-31" : [ "live.dial[5]", "live.dial", 0 ],
			"obj-34" : [ "live.text[8]", "live.text", 0 ],
			"obj-366" : [ "Channel", "Channel", 0 ],
			"obj-40" : [ "live.text[1]", "live.text", 0 ],
			"obj-51::obj-21" : [ "pictslider[7]", "pictslider", 0 ],
			"obj-51::obj-24" : [ "pictslider[6]", "pictslider[3]", 0 ],
			"obj-51::obj-28" : [ "live.slider[10]", "live.slider[8]", 0 ],
			"obj-51::obj-29" : [ "live.slider[8]", "live.slider[8]", 0 ],
			"obj-51::obj-30" : [ "live.slider[11]", "live.slider[8]", 0 ],
			"obj-51::obj-31" : [ "live.slider[12]", "live.slider[8]", 0 ],
			"obj-51::obj-32" : [ "pictslider[5]", "pictslider[1]", 0 ],
			"obj-51::obj-34" : [ "live.slider[9]", "live.slider[8]", 0 ],
			"obj-51::obj-36" : [ "pictslider[4]", "pictslider[2]", 0 ],
			"obj-51::obj-38" : [ "live.slider[7]", "live.slider", 0 ],
			"obj-51::obj-39" : [ "live.slider[13]", "live.slider[8]", 0 ],
			"obj-51::obj-40" : [ "live.slider[14]", "live.slider[8]", 0 ],
			"obj-51::obj-41" : [ "live.slider[6]", "live.slider", 0 ],
			"obj-51::obj-42" : [ "live.slider[15]", "live.slider[8]", 0 ],
			"obj-51::obj-43" : [ "live.slider[4]", "live.slider", 0 ],
			"obj-51::obj-44" : [ "live.slider[5]", "live.slider", 0 ],
			"obj-51::obj-45" : [ "live.slider[16]", "live.slider[8]", 0 ],
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
		"dependency_cache" : [ 			{
				"name" : "PX,_color_wheel_cut.svg",
				"bootpath" : "~/Documents/GitHub/px-stream/devices",
				"patcherrelativepath" : ".",
				"type" : "svg",
				"implicit" : 1
			}
, 			{
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
 ],
		"autosave" : 0
	}

}
