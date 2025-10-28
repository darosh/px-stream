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
		"rect" : [ 33.0, 71.0, 697.0, 508.0 ],
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
					"id" : "obj-212",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1056.0, 1280.0, 40.0, 22.0 ],
					"text" : "* 0.5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-211",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 680.0, 1280.0, 40.0, 22.0 ],
					"text" : "* 0.5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-210",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 848.0, 1288.0, 40.0, 22.0 ],
					"text" : "* 0.5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-202",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 512.0, 1280.0, 40.0, 22.0 ],
					"text" : "* 0.5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 416.0, 256.0, 100.0, 22.0 ],
					"text" : "print"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-239",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1144.0, 256.0, 100.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-238",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 960.0, 256.0, 100.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-237",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 784.0, 272.0, 100.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-236",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 632.0, 272.0, 100.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-231",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 456.0, 856.0, 100.0, 22.0 ],
					"text" : "delay 200"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-228",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 320.0, 720.0, 100.0, 22.0 ],
					"text" : "routepass 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-227",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 320.0, 768.0, 100.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-226",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "int", "int" ],
					"patching_rect" : [ 456.0, 728.0, 100.0, 22.0 ],
					"text" : "change"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 320.0, 848.0, 50.0, 22.0 ],
					"text" : "set 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 456.0, 818.0, 100.0, 22.0 ],
					"text" : "deferlow"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 416.0, 608.0, 100.0, 22.0 ],
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-224",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 224.0, 152.0, 82.0, 22.0 ],
					"text" : "r ---this_bang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-450",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 32.0, 120.0, 83.0, 22.0 ],
					"text" : "s ---real_bang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-222",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 128.0, 120.0, 22.0, 22.0 ],
					"text" : "t b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-223",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 88.0, 159.0, 82.0, 22.0 ],
					"text" : "s ---this_bang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-221",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 416.0, 576.0, 100.0, 22.0 ],
					"text" : "r ---real_bang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-220",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 456.0, 768.0, 100.0, 22.0 ],
					"text" : "select 0 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-219",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 456.0, 904.0, 50.0, 22.0 ],
					"text" : "\" \""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-217",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 456.0, 696.0, 124.0, 20.0 ],
					"saved_object_attributes" : 					{
						"_persistence" : 1
					}
,
					"text" : "live.observer is_playing"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-218",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 456.0, 664.0, 91.0, 20.0 ],
					"text" : "live.path live_set"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-209",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
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
						"rect" : [ 132.0, 202.0, 662.0, 476.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"integercoordinates" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-197",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 175.0, 196.0, 112.0, 35.0 ],
									"text" : "tricolor \"Text / Icon On (Inactive)\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-195",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ],
									"patching_rect" : [ 50.0, 132.0, 100.0, 22.0 ],
									"text" : "select 1 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-187",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 196.0, 112.0, 22.0 ],
									"text" : "tricolor \"Text / Icon\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-185",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 50.0, 100.0, 32.0, 22.0 ],
									"text" : "> 0"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-198",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-199",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 287.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-195", 0 ],
									"source" : [ "obj-185", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-199", 0 ],
									"source" : [ "obj-187", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-187", 0 ],
									"source" : [ "obj-195", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-197", 0 ],
									"source" : [ "obj-195", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-199", 0 ],
									"source" : [ "obj-197", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-185", 0 ],
									"source" : [ "obj-198", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 568.0, 312.0, 24.0, 22.0 ],
					"text" : "p"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-205",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
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
						"rect" : [ 132.0, 202.0, 662.0, 476.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"integercoordinates" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-197",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 175.0, 196.0, 112.0, 35.0 ],
									"text" : "tricolor \"Text / Icon On (Inactive)\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-195",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ],
									"patching_rect" : [ 50.0, 132.0, 100.0, 22.0 ],
									"text" : "select 1 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-187",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 196.0, 112.0, 22.0 ],
									"text" : "tricolor \"Text / Icon\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-185",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 50.0, 100.0, 32.0, 22.0 ],
									"text" : "> 0"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-198",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-199",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 287.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-195", 0 ],
									"source" : [ "obj-185", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-199", 0 ],
									"source" : [ "obj-187", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-187", 0 ],
									"source" : [ "obj-195", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-197", 0 ],
									"source" : [ "obj-195", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-199", 0 ],
									"source" : [ "obj-197", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-185", 0 ],
									"source" : [ "obj-198", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 456.0, 312.0, 24.0, 22.0 ],
					"text" : "p"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-203",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
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
						"rect" : [ 132.0, 202.0, 662.0, 476.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"integercoordinates" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-197",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 175.0, 196.0, 112.0, 35.0 ],
									"text" : "tricolor \"Text / Icon On (Inactive)\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-195",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ],
									"patching_rect" : [ 50.0, 132.0, 100.0, 22.0 ],
									"text" : "select 1 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-187",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 196.0, 112.0, 22.0 ],
									"text" : "tricolor \"Text / Icon\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-185",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 50.0, 100.0, 32.0, 22.0 ],
									"text" : "> 0"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-198",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-199",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 287.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-195", 0 ],
									"source" : [ "obj-185", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-199", 0 ],
									"source" : [ "obj-187", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-187", 0 ],
									"source" : [ "obj-195", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-197", 0 ],
									"source" : [ "obj-195", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-199", 0 ],
									"source" : [ "obj-197", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-185", 0 ],
									"source" : [ "obj-198", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 168.0, 312.0, 24.0, 22.0 ],
					"text" : "p"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-201",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
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
						"rect" : [ 132.0, 202.0, 662.0, 476.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"integercoordinates" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-197",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 175.0, 196.0, 112.0, 35.0 ],
									"text" : "tricolor \"Text / Icon On (Inactive)\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-195",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ],
									"patching_rect" : [ 50.0, 132.0, 100.0, 22.0 ],
									"text" : "select 1 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-187",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 196.0, 112.0, 22.0 ],
									"text" : "tricolor \"Text / Icon\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-185",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 50.0, 100.0, 32.0, 22.0 ],
									"text" : "> 0"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-198",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-199",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 287.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-195", 0 ],
									"source" : [ "obj-185", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-199", 0 ],
									"source" : [ "obj-187", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-187", 0 ],
									"source" : [ "obj-195", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-197", 0 ],
									"source" : [ "obj-195", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-199", 0 ],
									"source" : [ "obj-197", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-185", 0 ],
									"source" : [ "obj-198", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 112.0, 312.0, 24.0, 22.0 ],
					"text" : "p"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-199",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 528.0, 400.0, 100.0, 22.0 ],
					"text" : "deferlow"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-198",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 400.0, 400.0, 100.0, 22.0 ],
					"text" : "deferlow"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-191",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 272.0, 400.0, 100.0, 22.0 ],
					"text" : "deferlow"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-190",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 144.0, 400.0, 100.0, 22.0 ],
					"text" : "deferlow"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-197",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
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
						"rect" : [ 55.0, 100.0, 662.0, 476.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"integercoordinates" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-197",
									"linecount" : 3,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 175.0, 196.0, 112.0, 49.0 ],
									"text" : "activebgoncolor \"Control On (Inactive)\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-195",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ],
									"patching_rect" : [ 50.0, 132.0, 100.0, 22.0 ],
									"text" : "select 1 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-187",
									"linecount" : 3,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 196.0, 112.0, 49.0 ],
									"text" : "activebgoncolor \"Control On Variant\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-185",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 50.0, 100.0, 32.0, 22.0 ],
									"text" : "> 0"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-198",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-199",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 287.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-195", 0 ],
									"source" : [ "obj-185", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-199", 0 ],
									"source" : [ "obj-187", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-187", 0 ],
									"source" : [ "obj-195", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-197", 0 ],
									"source" : [ "obj-195", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-199", 0 ],
									"source" : [ "obj-197", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-185", 0 ],
									"source" : [ "obj-198", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 1112.0, 520.0, 24.0, 22.0 ],
					"text" : "p"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-196",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
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
						"rect" : [ 55.0, 100.0, 662.0, 476.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"integercoordinates" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-197",
									"linecount" : 3,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 175.0, 196.0, 112.0, 49.0 ],
									"text" : "activebgoncolor \"Control On (Inactive)\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-195",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ],
									"patching_rect" : [ 50.0, 132.0, 100.0, 22.0 ],
									"text" : "select 1 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-187",
									"linecount" : 3,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 196.0, 112.0, 49.0 ],
									"text" : "activebgoncolor \"Control On Variant\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-185",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 50.0, 100.0, 32.0, 22.0 ],
									"text" : "> 0"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-198",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-199",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 287.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-195", 0 ],
									"source" : [ "obj-185", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-199", 0 ],
									"source" : [ "obj-187", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-187", 0 ],
									"source" : [ "obj-195", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-197", 0 ],
									"source" : [ "obj-195", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-199", 0 ],
									"source" : [ "obj-197", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-185", 0 ],
									"source" : [ "obj-198", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 952.0, 512.0, 24.0, 22.0 ],
					"text" : "p"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-195",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
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
						"rect" : [ 55.0, 100.0, 662.0, 476.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"integercoordinates" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-197",
									"linecount" : 3,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 175.0, 196.0, 112.0, 49.0 ],
									"text" : "activebgoncolor \"Control On (Inactive)\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-195",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ],
									"patching_rect" : [ 50.0, 132.0, 100.0, 22.0 ],
									"text" : "select 1 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-187",
									"linecount" : 3,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 196.0, 112.0, 49.0 ],
									"text" : "activebgoncolor \"Control On Variant\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-185",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 50.0, 100.0, 32.0, 22.0 ],
									"text" : "> 0"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-198",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-199",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 287.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-195", 0 ],
									"source" : [ "obj-185", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-199", 0 ],
									"source" : [ "obj-187", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-187", 0 ],
									"source" : [ "obj-195", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-197", 0 ],
									"source" : [ "obj-195", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-199", 0 ],
									"source" : [ "obj-197", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-185", 0 ],
									"source" : [ "obj-198", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 792.0, 496.0, 24.0, 22.0 ],
					"text" : "p"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-193",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
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
						"rect" : [ 55.0, 100.0, 662.0, 476.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"integercoordinates" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-197",
									"linecount" : 3,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 175.0, 196.0, 112.0, 49.0 ],
									"text" : "activebgoncolor \"Control On (Inactive)\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-195",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ],
									"patching_rect" : [ 50.0, 132.0, 100.0, 22.0 ],
									"text" : "select 1 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-187",
									"linecount" : 3,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 196.0, 112.0, 49.0 ],
									"text" : "activebgoncolor \"Control On Variant\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-185",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 50.0, 100.0, 32.0, 22.0 ],
									"text" : "> 0"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-198",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-199",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 287.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-195", 0 ],
									"source" : [ "obj-185", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-199", 0 ],
									"source" : [ "obj-187", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-187", 0 ],
									"source" : [ "obj-195", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-197", 0 ],
									"source" : [ "obj-195", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-199", 0 ],
									"source" : [ "obj-197", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-185", 0 ],
									"source" : [ "obj-198", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 600.0, 496.0, 24.0, 22.0 ],
					"text" : "p"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-194",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"patching_rect" : [ 424.0, 552.0, 100.0, 22.0 ],
					"text" : "route 1 2 3 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-189",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 424.0, 520.0, 100.0, 22.0 ],
					"text" : "route set_param"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-188",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
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
						"rect" : [ 58.0, 100.0, 662.0, 476.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"integercoordinates" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-197",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 175.0, 196.0, 112.0, 35.0 ],
									"text" : "textcolor \"Text / Icon On (Inactive)\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-195",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ],
									"patching_rect" : [ 50.0, 132.0, 100.0, 22.0 ],
									"text" : "select 1 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-187",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 196.0, 112.0, 35.0 ],
									"text" : "textcolor \"Text / Icon\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-185",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 50.0, 100.0, 32.0, 22.0 ],
									"text" : "> 0"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-198",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-199",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 287.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-195", 0 ],
									"source" : [ "obj-185", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-199", 0 ],
									"source" : [ "obj-187", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-187", 0 ],
									"source" : [ "obj-195", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-197", 0 ],
									"source" : [ "obj-195", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-199", 0 ],
									"source" : [ "obj-197", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-185", 0 ],
									"source" : [ "obj-198", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 193.0, 1552.0, 24.0, 22.0 ],
					"text" : "p"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-187",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
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
						"rect" : [ 58.0, 100.0, 662.0, 476.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"integercoordinates" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-197",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 175.0, 196.0, 112.0, 35.0 ],
									"text" : "textcolor \"Text / Icon On (Inactive)\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-195",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ],
									"patching_rect" : [ 50.0, 132.0, 100.0, 22.0 ],
									"text" : "select 1 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-187",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 196.0, 112.0, 35.0 ],
									"text" : "textcolor \"Text / Icon\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-185",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 50.0, 100.0, 32.0, 22.0 ],
									"text" : "> 0"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-198",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-199",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 287.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-195", 0 ],
									"source" : [ "obj-185", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-199", 0 ],
									"source" : [ "obj-187", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-187", 0 ],
									"source" : [ "obj-195", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-197", 0 ],
									"source" : [ "obj-195", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-199", 0 ],
									"source" : [ "obj-197", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-185", 0 ],
									"source" : [ "obj-198", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 143.0, 1552.0, 24.0, 22.0 ],
					"text" : "p"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-185",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
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
						"rect" : [ 58.0, 100.0, 662.0, 476.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"integercoordinates" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-197",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 175.0, 196.0, 112.0, 35.0 ],
									"text" : "textcolor \"Text / Icon On (Inactive)\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-195",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ],
									"patching_rect" : [ 50.0, 132.0, 100.0, 22.0 ],
									"text" : "select 1 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-187",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 196.0, 112.0, 35.0 ],
									"text" : "textcolor \"Text / Icon\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-185",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 50.0, 100.0, 32.0, 22.0 ],
									"text" : "> 0"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-198",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-199",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 287.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-195", 0 ],
									"source" : [ "obj-185", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-199", 0 ],
									"source" : [ "obj-187", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-187", 0 ],
									"source" : [ "obj-195", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-197", 0 ],
									"source" : [ "obj-195", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-199", 0 ],
									"source" : [ "obj-197", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-185", 0 ],
									"source" : [ "obj-198", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 95.0, 1552.0, 24.0, 22.0 ],
					"text" : "p"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.125490196078431, 0.125490196078431, 0.125490196078431, 1.0 ],
					"annotation_name" : "Release Slope",
					"appearance" : 4,
					"bordercolor" : [ 0.188235294117647, 0.188235294117647, 0.188235294117647, 1.0 ],
					"id" : "obj-208",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 840.0, 856.0, 44.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 206.0, 144.0, 40.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"activebgcolor" : 						{
							"expression" : "themecolor.live_meter_bg"
						}
,
						"bordercolor" : 						{
							"expression" : "themecolor.live_control_text_bg"
						}
,
						"valueof" : 						{
							"parameter_annotation_name" : "Release Slope",
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Release Slope",
							"parameter_mmax" : 1.0,
							"parameter_modmode" : 3,
							"parameter_shortname" : "R. Slope",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"textjustification" : 0,
					"varname" : "live.numbox[10]"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.125490196078431, 0.125490196078431, 0.125490196078431, 1.0 ],
					"annotation_name" : "Attack Slope",
					"appearance" : 4,
					"bordercolor" : [ 0.188235294117647, 0.188235294117647, 0.188235294117647, 1.0 ],
					"id" : "obj-204",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 537.0, 903.0, 44.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 155.0, 144.0, 40.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"activebgcolor" : 						{
							"expression" : "themecolor.live_meter_bg"
						}
,
						"bordercolor" : 						{
							"expression" : "themecolor.live_control_text_bg"
						}
,
						"valueof" : 						{
							"parameter_annotation_name" : "Attack Slope",
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Attack Slope",
							"parameter_mmax" : 1.0,
							"parameter_modmode" : 3,
							"parameter_shortname" : "A. Slope",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"textjustification" : 0,
					"varname" : "live.numbox[9]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-206",
					"maxclass" : "live.comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 109.0, 733.0, 150.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 205.0, 130.0, 48.0, 18.0 ],
					"saved_attribute_attributes" : 					{
						"textcolor" : 						{
							"expression" : "themecolor.live_lcd_control_fg_zombie"
						}

					}
,
					"text" : "R. Slope",
					"textcolor" : [ 0.701960784313725, 0.701960784313725, 0.701960784313725, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-207",
					"maxclass" : "live.comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 94.0, 716.0, 150.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 154.0, 130.0, 48.0, 18.0 ],
					"saved_attribute_attributes" : 					{
						"textcolor" : 						{
							"expression" : "themecolor.live_lcd_control_fg_zombie"
						}

					}
,
					"text" : "A. Slope",
					"textcolor" : [ 0.701960784313725, 0.701960784313725, 0.701960784313725, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-200",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
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
						"rect" : [ 58.0, 100.0, 662.0, 476.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"integercoordinates" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-197",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 175.0, 196.0, 112.0, 35.0 ],
									"text" : "textcolor \"Text / Icon On (Inactive)\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-195",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ],
									"patching_rect" : [ 50.0, 132.0, 100.0, 22.0 ],
									"text" : "select 1 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-187",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 196.0, 112.0, 35.0 ],
									"text" : "textcolor \"Text / Icon\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-185",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 50.0, 100.0, 32.0, 22.0 ],
									"text" : "> 0"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-198",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-199",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 287.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-195", 0 ],
									"source" : [ "obj-185", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-199", 0 ],
									"source" : [ "obj-187", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-187", 0 ],
									"source" : [ "obj-195", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-197", 0 ],
									"source" : [ "obj-195", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-199", 0 ],
									"source" : [ "obj-197", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-185", 0 ],
									"source" : [ "obj-198", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 48.0, 1552.0, 24.0, 22.0 ],
					"text" : "p"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-149",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"patching_rect" : [ 105.0, 1502.0, 100.0, 22.0 ],
					"text" : "route 1 2 3 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-147",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 104.0, 1440.0, 100.0, 22.0 ],
					"text" : "route set_param"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-166",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"patching_rect" : [ 632.0, 208.0, 100.0, 22.0 ],
					"text" : "route 1 2 3 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-181",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 1144.0, 576.0, 100.0, 22.0 ],
					"text" : "select 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-182",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1144.0, 608.0, 100.0, 22.0 ],
					"text" : "deferlow"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-179",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 984.0, 576.0, 100.0, 22.0 ],
					"text" : "select 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-180",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 984.0, 608.0, 100.0, 22.0 ],
					"text" : "deferlow"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-174",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1144.0, 466.0, 114.0, 22.0 ],
					"text" : "append outputvalue"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-175",
					"maxclass" : "newobj",
					"numinlets" : 9,
					"numoutlets" : 9,
					"outlettype" : [ "", "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 1144.0, 497.0, 144.0, 22.0 ],
					"text" : "route 1 2 3 4 5 6 7 8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-176",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1264.0, 432.0, 50.0, 22.0 ],
					"text" : "set $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-177",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 1144.0, 432.0, 100.0, 22.0 ],
					"text" : "t i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-178",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "", "int" ],
					"patching_rect" : [ 1144.0, 400.0, 100.0, 22.0 ],
					"text" : "counter 1 8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-168",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 984.0, 465.0, 114.0, 22.0 ],
					"text" : "append outputvalue"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-169",
					"maxclass" : "newobj",
					"numinlets" : 9,
					"numoutlets" : 9,
					"outlettype" : [ "", "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 984.0, 497.0, 144.0, 22.0 ],
					"text" : "route 1 2 3 4 5 6 7 8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-170",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1104.0, 432.0, 50.0, 22.0 ],
					"text" : "set $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-171",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 984.0, 432.0, 100.0, 22.0 ],
					"text" : "t i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-172",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "", "int" ],
					"patching_rect" : [ 984.0, 400.0, 100.0, 22.0 ],
					"text" : "counter 1 8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-167",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 824.0, 576.0, 100.0, 22.0 ],
					"text" : "select 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-159",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 824.0, 465.0, 114.0, 22.0 ],
					"text" : "append outputvalue"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-160",
					"maxclass" : "newobj",
					"numinlets" : 9,
					"numoutlets" : 9,
					"outlettype" : [ "", "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 824.0, 497.0, 144.0, 22.0 ],
					"text" : "route 1 2 3 4 5 6 7 8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-161",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 944.0, 432.0, 50.0, 22.0 ],
					"text" : "set $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-162",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 824.0, 432.0, 100.0, 22.0 ],
					"text" : "t i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-163",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "", "int" ],
					"patching_rect" : [ 824.0, 400.0, 100.0, 22.0 ],
					"text" : "counter 1 8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-165",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 672.0, 577.0, 100.0, 22.0 ],
					"text" : "select 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-164",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 640.0, 465.0, 114.0, 22.0 ],
					"text" : "append outputvalue"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-158",
					"maxclass" : "newobj",
					"numinlets" : 9,
					"numoutlets" : 9,
					"outlettype" : [ "", "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 640.0, 497.0, 144.0, 22.0 ],
					"text" : "route 1 2 3 4 5 6 7 8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-157",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 760.0, 432.0, 50.0, 22.0 ],
					"text" : "set $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-156",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 640.0, 432.0, 100.0, 22.0 ],
					"text" : "t i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-155",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "", "int" ],
					"patching_rect" : [ 640.0, 400.0, 100.0, 22.0 ],
					"text" : "counter 1 8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-154",
					"maxclass" : "live.comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1264.0, 464.0, 32.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 105.0, 129.0, 40.0, 18.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-153",
					"maxclass" : "live.comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1104.0, 464.0, 31.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 105.0, 92.0, 40.0, 18.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-152",
					"maxclass" : "live.comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 944.0, 464.0, 32.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 105.0, 55.0, 40.0, 18.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-150",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1144.0, 336.0, 138.0, 23.0 ],
					"text" : "metro 4n"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-148",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 984.0, 336.0, 138.0, 23.0 ],
					"text" : "metro 4n"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-142",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 824.0, 608.0, 100.0, 22.0 ],
					"text" : "deferlow"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-146",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 824.0, 336.0, 138.0, 23.0 ],
					"text" : "metro 4n"
				}

			}
, 			{
				"box" : 				{
					"annotation_name" : "Step D",
					"id" : "obj-145",
					"maxclass" : "live.menu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1136.0, 304.0, 100.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 105.0, 112.0, 40.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_annotation_name" : "Step D",
							"parameter_enum" : [ "1nd", "1n", "1nt", "2nd", "2n", "2nt", "4nd", "4n", "4nt", "8nd", "8n", "8nt", "16nd", "16n", "16nt", "32nd", "32n", "32nt", "64nd", "64n", "128n" ],
							"parameter_initial" : [ 7 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Step D",
							"parameter_mmax" : 20,
							"parameter_modmode" : 0,
							"parameter_shortname" : "Step D",
							"parameter_type" : 2
						}

					}
,
					"varname" : "live.menu[7]"
				}

			}
, 			{
				"box" : 				{
					"annotation_name" : "Step C",
					"id" : "obj-144",
					"maxclass" : "live.menu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 984.0, 304.0, 100.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 105.0, 75.0, 40.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_annotation_name" : "Step C",
							"parameter_enum" : [ "1nd", "1n", "1nt", "2nd", "2n", "2nt", "4nd", "4n", "4nt", "8nd", "8n", "8nt", "16nd", "16n", "16nt", "32nd", "32n", "32nt", "64nd", "64n", "128n" ],
							"parameter_initial" : [ 7 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Step C",
							"parameter_mmax" : 20,
							"parameter_modmode" : 0,
							"parameter_shortname" : "Step C",
							"parameter_type" : 2
						}

					}
,
					"varname" : "live.menu[6]"
				}

			}
, 			{
				"box" : 				{
					"annotation_name" : "Step B",
					"id" : "obj-143",
					"maxclass" : "live.menu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 832.0, 304.0, 100.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 105.0, 38.0, 40.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_annotation_name" : "Step B",
							"parameter_enum" : [ "1nd", "1n", "1nt", "2nd", "2n", "2nt", "4nd", "4n", "4nt", "8nd", "8n", "8nt", "16nd", "16n", "16nt", "32nd", "32n", "32nt", "64nd", "64n", "128n" ],
							"parameter_initial" : [ 7 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Step B",
							"parameter_mmax" : 20,
							"parameter_modmode" : 0,
							"parameter_shortname" : "Step B",
							"parameter_type" : 2
						}

					}
,
					"varname" : "live.menu[5]"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.619607843137255, 0.619607843137255, 0.619607843137255, 1.0 ],
					"annotation_name" : "D8",
					"id" : "obj-134",
					"maxclass" : "live.toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1256.0, 536.0, 15.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 90.0, 132.0, 12.0, 12.0 ],
					"saved_attribute_attributes" : 					{
						"activebgoncolor" : 						{
							"expression" : "themecolor.live_control_zombie"
						}
,
						"valueof" : 						{
							"parameter_annotation_name" : "D8",
							"parameter_enum" : [ "off", "on" ],
							"parameter_longname" : "D8",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "D8",
							"parameter_type" : 2
						}

					}
,
					"varname" : "live.toggle[24]"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.619607843137255, 0.619607843137255, 0.619607843137255, 1.0 ],
					"annotation_name" : "D7",
					"id" : "obj-135",
					"maxclass" : "live.toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1240.0, 536.0, 15.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 77.0, 132.0, 12.0, 12.0 ],
					"saved_attribute_attributes" : 					{
						"activebgoncolor" : 						{
							"expression" : "themecolor.live_control_zombie"
						}
,
						"valueof" : 						{
							"parameter_annotation_name" : "D7",
							"parameter_enum" : [ "off", "on" ],
							"parameter_longname" : "D7",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "D7",
							"parameter_type" : 2
						}

					}
,
					"varname" : "live.toggle[25]"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.619607843137255, 0.619607843137255, 0.619607843137255, 1.0 ],
					"annotation_name" : "D6",
					"id" : "obj-136",
					"maxclass" : "live.toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1224.0, 536.0, 15.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 65.0, 132.0, 12.0, 12.0 ],
					"saved_attribute_attributes" : 					{
						"activebgoncolor" : 						{
							"expression" : "themecolor.live_control_zombie"
						}
,
						"valueof" : 						{
							"parameter_annotation_name" : "D6",
							"parameter_enum" : [ "off", "on" ],
							"parameter_longname" : "D6",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "D6",
							"parameter_type" : 2
						}

					}
,
					"varname" : "live.toggle[26]"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.619607843137255, 0.619607843137255, 0.619607843137255, 1.0 ],
					"annotation_name" : "D5",
					"id" : "obj-137",
					"maxclass" : "live.toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1208.0, 536.0, 15.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 52.0, 132.0, 12.0, 12.0 ],
					"saved_attribute_attributes" : 					{
						"activebgoncolor" : 						{
							"expression" : "themecolor.live_control_zombie"
						}
,
						"valueof" : 						{
							"parameter_annotation_name" : "D5",
							"parameter_enum" : [ "off", "on" ],
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "D5",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "D5",
							"parameter_type" : 2
						}

					}
,
					"varname" : "live.toggle[27]"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.619607843137255, 0.619607843137255, 0.619607843137255, 1.0 ],
					"annotation_name" : "D4",
					"id" : "obj-138",
					"maxclass" : "live.toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1192.0, 536.0, 15.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 39.0, 132.0, 12.0, 12.0 ],
					"saved_attribute_attributes" : 					{
						"activebgoncolor" : 						{
							"expression" : "themecolor.live_control_zombie"
						}
,
						"valueof" : 						{
							"parameter_annotation_name" : "D4",
							"parameter_enum" : [ "off", "on" ],
							"parameter_longname" : "D4",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "D4",
							"parameter_type" : 2
						}

					}
,
					"varname" : "live.toggle[28]"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.619607843137255, 0.619607843137255, 0.619607843137255, 1.0 ],
					"annotation_name" : "D3",
					"id" : "obj-139",
					"maxclass" : "live.toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1176.0, 536.0, 15.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 27.0, 132.0, 12.0, 12.0 ],
					"saved_attribute_attributes" : 					{
						"activebgoncolor" : 						{
							"expression" : "themecolor.live_control_zombie"
						}
,
						"valueof" : 						{
							"parameter_annotation_name" : "D3",
							"parameter_enum" : [ "off", "on" ],
							"parameter_longname" : "D3",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "D3",
							"parameter_type" : 2
						}

					}
,
					"varname" : "live.toggle[29]"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.619607843137255, 0.619607843137255, 0.619607843137255, 1.0 ],
					"annotation_name" : "D2",
					"id" : "obj-140",
					"maxclass" : "live.toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1160.0, 536.0, 15.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.0, 132.0, 12.0, 12.0 ],
					"saved_attribute_attributes" : 					{
						"activebgoncolor" : 						{
							"expression" : "themecolor.live_control_zombie"
						}
,
						"valueof" : 						{
							"parameter_annotation_name" : "D2",
							"parameter_enum" : [ "off", "on" ],
							"parameter_longname" : "D2",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "D2",
							"parameter_type" : 2
						}

					}
,
					"varname" : "live.toggle[30]"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.619607843137255, 0.619607843137255, 0.619607843137255, 1.0 ],
					"annotation_name" : "D1",
					"id" : "obj-141",
					"maxclass" : "live.toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1143.0, 536.0, 15.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 2.0, 132.0, 12.0, 12.0 ],
					"saved_attribute_attributes" : 					{
						"activebgoncolor" : 						{
							"expression" : "themecolor.live_control_zombie"
						}
,
						"valueof" : 						{
							"parameter_annotation_name" : "D1",
							"parameter_enum" : [ "off", "on" ],
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "D1",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "D1",
							"parameter_type" : 2
						}

					}
,
					"varname" : "live.toggle[31]"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.619607843137255, 0.619607843137255, 0.619607843137255, 1.0 ],
					"annotation_name" : "C8",
					"id" : "obj-119",
					"maxclass" : "live.toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1096.0, 536.0, 15.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 90.0, 95.0, 12.0, 12.0 ],
					"saved_attribute_attributes" : 					{
						"activebgoncolor" : 						{
							"expression" : "themecolor.live_control_zombie"
						}
,
						"valueof" : 						{
							"parameter_annotation_name" : "C8",
							"parameter_enum" : [ "off", "on" ],
							"parameter_longname" : "C8",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "C8",
							"parameter_type" : 2
						}

					}
,
					"varname" : "live.toggle[16]"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.619607843137255, 0.619607843137255, 0.619607843137255, 1.0 ],
					"annotation_name" : "C7",
					"id" : "obj-120",
					"maxclass" : "live.toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1080.0, 536.0, 15.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 77.0, 95.0, 12.0, 12.0 ],
					"saved_attribute_attributes" : 					{
						"activebgoncolor" : 						{
							"expression" : "themecolor.live_control_zombie"
						}
,
						"valueof" : 						{
							"parameter_annotation_name" : "C7",
							"parameter_enum" : [ "off", "on" ],
							"parameter_longname" : "C7",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "C7",
							"parameter_type" : 2
						}

					}
,
					"varname" : "live.toggle[17]"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.619607843137255, 0.619607843137255, 0.619607843137255, 1.0 ],
					"annotation_name" : "C6",
					"id" : "obj-121",
					"maxclass" : "live.toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1063.0, 536.0, 15.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 65.0, 95.0, 12.0, 12.0 ],
					"saved_attribute_attributes" : 					{
						"activebgoncolor" : 						{
							"expression" : "themecolor.live_control_zombie"
						}
,
						"valueof" : 						{
							"parameter_annotation_name" : "C6",
							"parameter_enum" : [ "off", "on" ],
							"parameter_longname" : "C6",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "C6",
							"parameter_type" : 2
						}

					}
,
					"varname" : "live.toggle[18]"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.619607843137255, 0.619607843137255, 0.619607843137255, 1.0 ],
					"annotation_name" : "C5",
					"id" : "obj-129",
					"maxclass" : "live.toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1047.0, 536.0, 15.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 52.0, 95.0, 12.0, 12.0 ],
					"saved_attribute_attributes" : 					{
						"activebgoncolor" : 						{
							"expression" : "themecolor.live_control_zombie"
						}
,
						"valueof" : 						{
							"parameter_annotation_name" : "C5",
							"parameter_enum" : [ "off", "on" ],
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "C5",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "C5",
							"parameter_type" : 2
						}

					}
,
					"varname" : "live.toggle[19]"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.619607843137255, 0.619607843137255, 0.619607843137255, 1.0 ],
					"annotation_name" : "C4",
					"id" : "obj-130",
					"maxclass" : "live.toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1031.0, 536.0, 15.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 39.0, 95.0, 12.0, 12.0 ],
					"saved_attribute_attributes" : 					{
						"activebgoncolor" : 						{
							"expression" : "themecolor.live_control_zombie"
						}
,
						"valueof" : 						{
							"parameter_annotation_name" : "C4",
							"parameter_enum" : [ "off", "on" ],
							"parameter_longname" : "C4",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "C4",
							"parameter_type" : 2
						}

					}
,
					"varname" : "live.toggle[20]"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.619607843137255, 0.619607843137255, 0.619607843137255, 1.0 ],
					"annotation_name" : "C3",
					"id" : "obj-131",
					"maxclass" : "live.toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1015.0, 536.0, 15.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 27.0, 95.0, 12.0, 12.0 ],
					"saved_attribute_attributes" : 					{
						"activebgoncolor" : 						{
							"expression" : "themecolor.live_control_zombie"
						}
,
						"valueof" : 						{
							"parameter_annotation_name" : "C3",
							"parameter_enum" : [ "off", "on" ],
							"parameter_longname" : "C3",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "C3",
							"parameter_type" : 2
						}

					}
,
					"varname" : "live.toggle[21]"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.619607843137255, 0.619607843137255, 0.619607843137255, 1.0 ],
					"annotation_name" : "C2",
					"id" : "obj-132",
					"maxclass" : "live.toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 999.0, 536.0, 15.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.0, 95.0, 12.0, 12.0 ],
					"saved_attribute_attributes" : 					{
						"activebgoncolor" : 						{
							"expression" : "themecolor.live_control_zombie"
						}
,
						"valueof" : 						{
							"parameter_annotation_name" : "C2",
							"parameter_enum" : [ "off", "on" ],
							"parameter_longname" : "C2",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "C2",
							"parameter_type" : 2
						}

					}
,
					"varname" : "live.toggle[22]"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.619607843137255, 0.619607843137255, 0.619607843137255, 1.0 ],
					"annotation_name" : "C1",
					"id" : "obj-133",
					"maxclass" : "live.toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 982.0, 536.0, 15.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 2.0, 95.0, 12.0, 12.0 ],
					"saved_attribute_attributes" : 					{
						"activebgoncolor" : 						{
							"expression" : "themecolor.live_control_zombie"
						}
,
						"valueof" : 						{
							"parameter_annotation_name" : "C1",
							"parameter_enum" : [ "off", "on" ],
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "C1",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "C1",
							"parameter_type" : 2
						}

					}
,
					"varname" : "live.toggle[23]"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.619607843137255, 0.619607843137255, 0.619607843137255, 1.0 ],
					"annotation_name" : "B8",
					"id" : "obj-47",
					"maxclass" : "live.toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 936.0, 536.0, 15.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 90.0, 58.0, 12.0, 12.0 ],
					"saved_attribute_attributes" : 					{
						"activebgoncolor" : 						{
							"expression" : "themecolor.live_control_zombie"
						}
,
						"valueof" : 						{
							"parameter_annotation_name" : "B8",
							"parameter_enum" : [ "off", "on" ],
							"parameter_longname" : "B8",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "B8",
							"parameter_type" : 2
						}

					}
,
					"varname" : "live.toggle[8]"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.619607843137255, 0.619607843137255, 0.619607843137255, 1.0 ],
					"annotation_name" : "B7",
					"id" : "obj-48",
					"maxclass" : "live.toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 920.0, 536.0, 15.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 77.0, 58.0, 12.0, 12.0 ],
					"saved_attribute_attributes" : 					{
						"activebgoncolor" : 						{
							"expression" : "themecolor.live_control_zombie"
						}
,
						"valueof" : 						{
							"parameter_annotation_name" : "B7",
							"parameter_enum" : [ "off", "on" ],
							"parameter_longname" : "B7",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "B7",
							"parameter_type" : 2
						}

					}
,
					"varname" : "live.toggle[9]"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.619607843137255, 0.619607843137255, 0.619607843137255, 1.0 ],
					"annotation_name" : "B6",
					"id" : "obj-49",
					"maxclass" : "live.toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 906.0, 536.0, 15.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 65.0, 58.0, 12.0, 12.0 ],
					"saved_attribute_attributes" : 					{
						"activebgoncolor" : 						{
							"expression" : "themecolor.live_control_zombie"
						}
,
						"valueof" : 						{
							"parameter_annotation_name" : "B6",
							"parameter_enum" : [ "off", "on" ],
							"parameter_longname" : "B6",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "B6",
							"parameter_type" : 2
						}

					}
,
					"varname" : "live.toggle[10]"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.619607843137255, 0.619607843137255, 0.619607843137255, 1.0 ],
					"annotation_name" : "B5",
					"id" : "obj-50",
					"maxclass" : "live.toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 890.0, 536.0, 15.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 52.0, 58.0, 12.0, 12.0 ],
					"saved_attribute_attributes" : 					{
						"activebgoncolor" : 						{
							"expression" : "themecolor.live_control_zombie"
						}
,
						"valueof" : 						{
							"parameter_annotation_name" : "B5",
							"parameter_enum" : [ "off", "on" ],
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "B5",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "B5",
							"parameter_type" : 2
						}

					}
,
					"varname" : "live.toggle[11]"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.619607843137255, 0.619607843137255, 0.619607843137255, 1.0 ],
					"annotation_name" : "B4",
					"id" : "obj-115",
					"maxclass" : "live.toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 873.0, 536.0, 15.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 39.0, 58.0, 12.0, 12.0 ],
					"saved_attribute_attributes" : 					{
						"activebgoncolor" : 						{
							"expression" : "themecolor.live_control_zombie"
						}
,
						"valueof" : 						{
							"parameter_annotation_name" : "B4",
							"parameter_enum" : [ "off", "on" ],
							"parameter_longname" : "B4",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "B4",
							"parameter_type" : 2
						}

					}
,
					"varname" : "live.toggle[12]"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.619607843137255, 0.619607843137255, 0.619607843137255, 1.0 ],
					"annotation_name" : "B3",
					"id" : "obj-116",
					"maxclass" : "live.toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 856.0, 536.0, 15.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 27.0, 58.0, 12.0, 12.0 ],
					"saved_attribute_attributes" : 					{
						"activebgoncolor" : 						{
							"expression" : "themecolor.live_control_zombie"
						}
,
						"valueof" : 						{
							"parameter_annotation_name" : "B3",
							"parameter_enum" : [ "off", "on" ],
							"parameter_longname" : "B3",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "B3",
							"parameter_type" : 2
						}

					}
,
					"varname" : "live.toggle[13]"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.619607843137255, 0.619607843137255, 0.619607843137255, 1.0 ],
					"annotation_name" : "B2",
					"id" : "obj-117",
					"maxclass" : "live.toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 840.0, 536.0, 15.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.0, 58.0, 12.0, 12.0 ],
					"saved_attribute_attributes" : 					{
						"activebgoncolor" : 						{
							"expression" : "themecolor.live_control_zombie"
						}
,
						"valueof" : 						{
							"parameter_annotation_name" : "B2",
							"parameter_enum" : [ "off", "on" ],
							"parameter_longname" : "B2",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "B2",
							"parameter_type" : 2
						}

					}
,
					"varname" : "live.toggle"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.619607843137255, 0.619607843137255, 0.619607843137255, 1.0 ],
					"annotation_name" : "B1",
					"id" : "obj-118",
					"maxclass" : "live.toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 826.0, 536.0, 15.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 2.0, 58.0, 12.0, 12.0 ],
					"saved_attribute_attributes" : 					{
						"activebgoncolor" : 						{
							"expression" : "themecolor.live_control_zombie"
						}
,
						"valueof" : 						{
							"parameter_annotation_name" : "B1",
							"parameter_enum" : [ "off", "on" ],
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "B1",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "B1",
							"parameter_type" : 2
						}

					}
,
					"varname" : "live.toggle[15]"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.619607843137255, 0.619607843137255, 0.619607843137255, 1.0 ],
					"id" : "obj-125",
					"maxclass" : "live.toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 752.0, 537.0, 15.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 90.0, 21.0, 12.0, 12.0 ],
					"saved_attribute_attributes" : 					{
						"activebgoncolor" : 						{
							"expression" : "themecolor.live_control_zombie"
						}
,
						"valueof" : 						{
							"parameter_enum" : [ "off", "on" ],
							"parameter_longname" : "A8",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "A8",
							"parameter_type" : 2
						}

					}
,
					"varname" : "A8"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.619607843137255, 0.619607843137255, 0.619607843137255, 1.0 ],
					"annotation_name" : "A7",
					"id" : "obj-126",
					"maxclass" : "live.toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 736.0, 537.0, 15.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 77.0, 21.0, 12.0, 12.0 ],
					"saved_attribute_attributes" : 					{
						"activebgoncolor" : 						{
							"expression" : "themecolor.live_control_zombie"
						}
,
						"valueof" : 						{
							"parameter_annotation_name" : "A7",
							"parameter_enum" : [ "off", "on" ],
							"parameter_longname" : "A7",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "A7",
							"parameter_type" : 2
						}

					}
,
					"varname" : "live.toggle[5]"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.619607843137255, 0.619607843137255, 0.619607843137255, 1.0 ],
					"id" : "obj-127",
					"maxclass" : "live.toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 720.0, 537.0, 15.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 65.0, 21.0, 12.0, 12.0 ],
					"saved_attribute_attributes" : 					{
						"activebgoncolor" : 						{
							"expression" : "themecolor.live_control_zombie"
						}
,
						"valueof" : 						{
							"parameter_enum" : [ "off", "on" ],
							"parameter_longname" : "A6",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "A6",
							"parameter_type" : 2
						}

					}
,
					"varname" : "A6"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.619607843137255, 0.619607843137255, 0.619607843137255, 1.0 ],
					"annotation_name" : "A5",
					"id" : "obj-128",
					"maxclass" : "live.toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 704.0, 537.0, 15.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 52.0, 21.0, 12.0, 12.0 ],
					"saved_attribute_attributes" : 					{
						"activebgoncolor" : 						{
							"expression" : "themecolor.live_control_zombie"
						}
,
						"valueof" : 						{
							"parameter_annotation_name" : "A5",
							"parameter_enum" : [ "off", "on" ],
							"parameter_initial" : [ 1 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "A5",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "A5",
							"parameter_type" : 2
						}

					}
,
					"varname" : "live.toggle[7]"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.619607843137255, 0.619607843137255, 0.619607843137255, 1.0 ],
					"annotation_name" : "A4",
					"id" : "obj-123",
					"maxclass" : "live.toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 689.0, 537.0, 15.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 39.0, 21.0, 12.0, 12.0 ],
					"saved_attribute_attributes" : 					{
						"activebgoncolor" : 						{
							"expression" : "themecolor.live_control_zombie"
						}
,
						"valueof" : 						{
							"parameter_annotation_name" : "A4",
							"parameter_enum" : [ "off", "on" ],
							"parameter_longname" : "A4",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "A4",
							"parameter_type" : 2
						}

					}
,
					"varname" : "live.toggle[2]"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.619607843137255, 0.619607843137255, 0.619607843137255, 1.0 ],
					"annotation_name" : "A3",
					"id" : "obj-124",
					"maxclass" : "live.toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 672.0, 537.0, 15.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 27.0, 21.0, 12.0, 12.0 ],
					"saved_attribute_attributes" : 					{
						"activebgoncolor" : 						{
							"expression" : "themecolor.live_control_zombie"
						}
,
						"valueof" : 						{
							"parameter_annotation_name" : "A3",
							"parameter_enum" : [ "off", "on" ],
							"parameter_longname" : "A3",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "A3",
							"parameter_type" : 2
						}

					}
,
					"varname" : "live.toggle[3]"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.619607843137255, 0.619607843137255, 0.619607843137255, 1.0 ],
					"annotation_name" : "A2",
					"id" : "obj-122",
					"maxclass" : "live.toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 656.0, 537.0, 15.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.0, 21.0, 12.0, 12.0 ],
					"saved_attribute_attributes" : 					{
						"activebgoncolor" : 						{
							"expression" : "themecolor.live_control_zombie"
						}
,
						"valueof" : 						{
							"parameter_annotation_name" : "A2",
							"parameter_enum" : [ "off", "on" ],
							"parameter_longname" : "A2",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "A2",
							"parameter_type" : 2
						}

					}
,
					"varname" : "live.toggle[1]"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.619607843137255, 0.619607843137255, 0.619607843137255, 1.0 ],
					"annotation_name" : "A1",
					"id" : "obj-113",
					"maxclass" : "live.toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 640.0, 537.0, 15.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 2.0, 21.0, 12.0, 12.0 ],
					"saved_attribute_attributes" : 					{
						"activebgoncolor" : 						{
							"expression" : "themecolor.live_control_zombie"
						}
,
						"valueof" : 						{
							"parameter_annotation_name" : "A1",
							"parameter_enum" : [ "off", "on" ],
							"parameter_initial" : [ 1 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "A1",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "A1",
							"parameter_type" : 2
						}

					}
,
					"varname" : "live.toggle[4]"
				}

			}
, 			{
				"box" : 				{
					"annotation_name" : "Step A",
					"id" : "obj-112",
					"maxclass" : "live.menu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 664.0, 304.0, 100.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 105.0, 1.0, 40.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_annotation_name" : "Step A",
							"parameter_enum" : [ "1nd", "1n", "1nt", "2nd", "2n", "2nt", "4nd", "4n", "4nt", "8nd", "8n", "8nt", "16nd", "16n", "16nt", "32nd", "32n", "32nt", "64nd", "64n", "128n" ],
							"parameter_initial" : [ 7 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Step A",
							"parameter_mmax" : 20,
							"parameter_modmode" : 0,
							"parameter_shortname" : "Step A",
							"parameter_type" : 2
						}

					}
,
					"varname" : "live.menu[4]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-111",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 672.0, 608.0, 100.0, 22.0 ],
					"text" : "deferlow"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-114",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 656.0, 336.0, 138.0, 23.0 ],
					"text" : "metro 4n"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-110",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 376.0, 1640.0, 100.0, 22.0 ],
					"text" : "* 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-109",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 440.0, 1776.0, 100.0, 22.0 ],
					"text" : "* 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-108",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 448.0, 1895.0, 100.0, 22.0 ],
					"text" : "* 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-107",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 576.0, 2033.0, 100.0, 22.0 ],
					"text" : "* 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-100",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 576.0, 1960.0, 100.0, 22.0 ],
					"text" : "+ 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-101",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 707.0, 1960.0, 100.0, 22.0 ],
					"text" : "+ 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-102",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 848.0, 1960.0, 100.0, 22.0 ],
					"text" : "+ 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-103",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 983.0, 1919.0, 100.0, 22.0 ],
					"text" : "float"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-104",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 848.0, 1919.0, 100.0, 22.0 ],
					"text" : "float"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-105",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 707.0, 1919.0, 100.0, 22.0 ],
					"text" : "float"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-106",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 576.0, 1919.0, 100.0, 22.0 ],
					"text" : "float"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-89",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 576.0, 1840.0, 100.0, 22.0 ],
					"text" : "+ 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-94",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 707.0, 1840.0, 100.0, 22.0 ],
					"text" : "+ 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-95",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 843.0, 1840.0, 100.0, 22.0 ],
					"text" : "+ 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-96",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 981.0, 1802.0, 100.0, 22.0 ],
					"text" : "float"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-97",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 843.0, 1802.0, 100.0, 22.0 ],
					"text" : "float"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-98",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 707.0, 1802.0, 100.0, 22.0 ],
					"text" : "float"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-99",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 576.0, 1802.0, 100.0, 22.0 ],
					"text" : "float"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 304.0, 1278.0, 50.0, 22.0 ],
					"text" : "/ 100."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 232.0, 1280.0, 48.0, 22.0 ],
					"text" : "/ 100."
				}

			}
, 			{
				"box" : 				{
					"annotation_name" : "Range D",
					"id" : "obj-36",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 304.0, 1248.0, 44.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 67.0, 112.0, 35.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"textcolor" : 						{
							"expression" : "themecolor.live_control_text_zombie"
						}
,
						"valueof" : 						{
							"parameter_annotation_name" : "Range D",
							"parameter_initial" : [ 50 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Range D",
							"parameter_mmax" : 100.0,
							"parameter_mmin" : -100.0,
							"parameter_modmode" : 3,
							"parameter_shortname" : "Range D",
							"parameter_steps" : 201,
							"parameter_type" : 0,
							"parameter_unitstyle" : 5
						}

					}
,
					"textcolor" : [ 0.619607843137255, 0.619607843137255, 0.619607843137255, 1.0 ],
					"varname" : "live.numbox[8]"
				}

			}
, 			{
				"box" : 				{
					"annotation_name" : "Range C",
					"id" : "obj-31",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 232.0, 1253.0, 44.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 67.0, 75.0, 35.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"textcolor" : 						{
							"expression" : "themecolor.live_control_text_zombie"
						}
,
						"valueof" : 						{
							"parameter_annotation_name" : "Range C",
							"parameter_initial" : [ 50 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Range C",
							"parameter_mmax" : 100.0,
							"parameter_mmin" : -100.0,
							"parameter_modmode" : 3,
							"parameter_shortname" : "Range C",
							"parameter_steps" : 201,
							"parameter_type" : 0,
							"parameter_unitstyle" : 5
						}

					}
,
					"textcolor" : [ 0.619607843137255, 0.619607843137255, 0.619607843137255, 1.0 ],
					"varname" : "live.numbox[7]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 160.0, 1280.0, 56.0, 22.0 ],
					"text" : "/ 100."
				}

			}
, 			{
				"box" : 				{
					"annotation_name" : "Range B",
					"id" : "obj-25",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 160.0, 1252.0, 44.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 67.0, 38.0, 35.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"textcolor" : 						{
							"expression" : "themecolor.live_control_text_zombie"
						}
,
						"valueof" : 						{
							"parameter_annotation_name" : "Range B",
							"parameter_initial" : [ 50 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Range B",
							"parameter_mmax" : 100.0,
							"parameter_mmin" : -100.0,
							"parameter_modmode" : 3,
							"parameter_shortname" : "Range B",
							"parameter_steps" : 201,
							"parameter_type" : 0,
							"parameter_unitstyle" : 5
						}

					}
,
					"textcolor" : [ 0.619607843137255, 0.619607843137255, 0.619607843137255, 1.0 ],
					"varname" : "live.numbox[6]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 72.0, 1276.0, 64.0, 22.0 ],
					"text" : "/ 100."
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.125490196078431, 0.125490196078431, 0.125490196078431, 1.0 ],
					"annotation_name" : "Sustain",
					"appearance" : 4,
					"bordercolor" : [ 0.188235294117647, 0.188235294117647, 0.188235294117647, 1.0 ],
					"id" : "obj-20",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 640.0, 792.0, 44.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 155.0, 112.0, 40.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"activebgcolor" : 						{
							"expression" : "themecolor.live_meter_bg"
						}
,
						"bordercolor" : 						{
							"expression" : "themecolor.live_control_text_bg"
						}
,
						"valueof" : 						{
							"parameter_annotation_name" : "Sustain",
							"parameter_initial" : [ 0.5 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Sustain",
							"parameter_mmax" : 1.0,
							"parameter_modmode" : 3,
							"parameter_shortname" : "Sustain",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"textjustification" : 0,
					"varname" : "live.numbox[5]"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.125490196078431, 0.125490196078431, 0.125490196078431, 1.0 ],
					"annotation_name" : "Release",
					"appearance" : 4,
					"bordercolor" : [ 0.188235294117647, 0.188235294117647, 0.188235294117647, 1.0 ],
					"id" : "obj-19",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 760.0, 864.0, 44.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 206.0, 112.0, 40.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"activebgcolor" : 						{
							"expression" : "themecolor.live_meter_bg"
						}
,
						"bordercolor" : 						{
							"expression" : "themecolor.live_control_text_bg"
						}
,
						"valueof" : 						{
							"parameter_annotation_name" : "Release",
							"parameter_initial" : [ 300 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Release",
							"parameter_mmax" : 4000.0,
							"parameter_modmode" : 3,
							"parameter_shortname" : "Release",
							"parameter_type" : 0,
							"parameter_unitstyle" : 2
						}

					}
,
					"textjustification" : 0,
					"varname" : "live.numbox[4]"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.125490196078431, 0.125490196078431, 0.125490196078431, 1.0 ],
					"annotation_name" : "Decay",
					"appearance" : 4,
					"bordercolor" : [ 0.188235294117647, 0.188235294117647, 0.188235294117647, 1.0 ],
					"id" : "obj-18",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 752.0, 832.0, 44.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 206.0, 80.0, 40.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"activebgcolor" : 						{
							"expression" : "themecolor.live_meter_bg"
						}
,
						"bordercolor" : 						{
							"expression" : "themecolor.live_control_text_bg"
						}
,
						"valueof" : 						{
							"parameter_annotation_name" : "Decay",
							"parameter_initial" : [ 200 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Decay",
							"parameter_mmax" : 4000.0,
							"parameter_modmode" : 3,
							"parameter_shortname" : "Decay",
							"parameter_type" : 0,
							"parameter_unitstyle" : 2
						}

					}
,
					"textjustification" : 0,
					"varname" : "live.numbox[1]"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.125490196078431, 0.125490196078431, 0.125490196078431, 1.0 ],
					"annotation_name" : "Attack",
					"appearance" : 4,
					"bordercolor" : [ 0.188235294117647, 0.188235294117647, 0.188235294117647, 1.0 ],
					"id" : "obj-15",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 752.0, 784.0, 44.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 155.0, 80.0, 40.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"activebgcolor" : 						{
							"expression" : "themecolor.live_meter_bg"
						}
,
						"bordercolor" : 						{
							"expression" : "themecolor.live_control_text_bg"
						}
,
						"valueof" : 						{
							"parameter_annotation_name" : "Attack",
							"parameter_initial" : [ 100 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Attack",
							"parameter_mmax" : 4000.0,
							"parameter_modmode" : 3,
							"parameter_shortname" : "Attack",
							"parameter_type" : 0,
							"parameter_unitstyle" : 2
						}

					}
,
					"textjustification" : 0,
					"varname" : "live.numbox"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 556.0, 64.0, 152.0, 22.0 ],
					"text" : "expr 104 + ($i1 == 1) * 161"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "int", "int" ],
					"patching_rect" : [ 556.0, 152.0, 83.0, 22.0 ],
					"text" : "live.thisdevice"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.011764705882353, 0.764705882352941, 0.835294117647059, 1.0 ],
					"annotation_name" : "More",
					"automation" : "Off",
					"automationon" : "On",
					"id" : "obj-11",
					"maxclass" : "live.text",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 556.0, 24.0, 44.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 74.0, 153.0, 28.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"activebgoncolor" : 						{
							"expression" : "themecolor.live_value_arc"
						}
,
						"valueof" : 						{
							"parameter_annotation_name" : "More",
							"parameter_enum" : [ "Off", "On" ],
							"parameter_initial" : [ 0 ],
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
					"id" : "obj-13",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 556.0, 112.0, 69.0, 22.0 ],
					"text" : "setwidth $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 696.0, 728.0, 100.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-93",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
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
						"rect" : [ 0.0, 0.0, 661.5, 475.200000000000045 ],
						"gridsize" : [ 15.0, 15.0 ],
						"integercoordinates" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 132.0, 48.0, 20.0 ],
									"text" : "pipe 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 50.0, 100.0, 48.0, 20.0 ],
									"text" : "t 0 1"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-88",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-89",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 44.0, 212.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-89", 0 ],
									"source" : [ "obj-26", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-89", 0 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-88", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 1072.0, 792.0, 48.0, 22.0 ],
					"text" : "p"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-92",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
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
						"rect" : [ 0.0, 0.0, 661.5, 475.200000000000045 ],
						"gridsize" : [ 15.0, 15.0 ],
						"integercoordinates" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 132.0, 48.0, 20.0 ],
									"text" : "pipe 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 50.0, 100.0, 48.0, 20.0 ],
									"text" : "t 0 1"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-88",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-89",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 44.0, 212.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-89", 0 ],
									"source" : [ "obj-26", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-89", 0 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-88", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 1008.0, 792.0, 48.0, 22.0 ],
					"text" : "p"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-91",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
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
						"rect" : [ 0.0, 0.0, 661.5, 475.200000000000045 ],
						"gridsize" : [ 15.0, 15.0 ],
						"integercoordinates" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 132.0, 48.0, 20.0 ],
									"text" : "pipe 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 50.0, 100.0, 48.0, 20.0 ],
									"text" : "t 0 1"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-88",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-89",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 44.0, 212.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-89", 0 ],
									"source" : [ "obj-26", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-89", 0 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-88", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 1056.0, 751.0, 48.0, 22.0 ],
					"text" : "p"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-90",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
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
						"rect" : [ 0.0, 0.0, 661.5, 475.200000000000045 ],
						"gridsize" : [ 15.0, 15.0 ],
						"integercoordinates" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 132.0, 48.0, 20.0 ],
									"text" : "pipe 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 50.0, 100.0, 48.0, 20.0 ],
									"text" : "t 0 1"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-88",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-89",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 44.0, 212.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-89", 0 ],
									"source" : [ "obj-26", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-89", 0 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-88", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 992.0, 751.0, 48.0, 22.0 ],
					"text" : "p"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-70",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 528.0, 440.0, 100.0, 22.0 ],
					"text" : "prepend 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-69",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 400.0, 440.0, 100.0, 22.0 ],
					"text" : "prepend 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-68",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 272.0, 440.0, 100.0, 22.0 ],
					"text" : "prepend 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-66",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 144.0, 440.0, 100.0, 22.0 ],
					"text" : "prepend 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 312.0, 488.0, 113.0, 22.0 ],
					"text" : "prepend set_param"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-87",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"patching_rect" : [ 256.0, 1184.0, 100.0, 22.0 ],
					"text" : "route 1 2 3 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-80",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 440.0, 1714.0, 100.0, 22.0 ],
					"text" : "+ 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-81",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 576.0, 1714.0, 100.0, 22.0 ],
					"text" : "+ 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-82",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 707.0, 1714.0, 100.0, 22.0 ],
					"text" : "+ 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-83",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 848.0, 1676.0, 100.0, 22.0 ],
					"text" : "float"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 707.0, 1676.0, 100.0, 22.0 ],
					"text" : "float"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-85",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 576.0, 1676.0, 100.0, 22.0 ],
					"text" : "float"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-86",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 440.0, 1676.0, 100.0, 22.0 ],
					"text" : "float"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-79",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"patching_rect" : [ 231.0, 1626.0, 100.0, 22.0 ],
					"text" : "route 1 2 3 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-78",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 440.0, 1576.0, 100.0, 22.0 ],
					"text" : "+ 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-77",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 576.0, 1576.0, 100.0, 22.0 ],
					"text" : "+ 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-76",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 712.0, 1576.0, 100.0, 22.0 ],
					"text" : "+ 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-75",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "bang", "bang", "bang", "bang" ],
					"patching_rect" : [ 729.0, 1614.0, 100.0, 22.0 ],
					"text" : "t b b b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-74",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 848.0, 1538.0, 100.0, 22.0 ],
					"text" : "float"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-73",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 712.0, 1538.0, 100.0, 22.0 ],
					"text" : "float"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-72",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 576.0, 1538.0, 100.0, 22.0 ],
					"text" : "float"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-71",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 440.0, 1538.0, 100.0, 22.0 ],
					"text" : "float"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-67",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "bang", "bang", "bang", "bang", "bang" ],
					"patching_rect" : [ 400.0, 1164.0, 100.0, 22.0 ],
					"text" : "t b b b b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-65",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 1008.0, 1312.0, 104.0, 22.0 ],
					"text" : "gate 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-64",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 797.0, 1317.0, 104.0, 22.0 ],
					"text" : "gate 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-63",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 616.0, 1317.0, 104.0, 22.0 ],
					"text" : "gate 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-62",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 441.0, 1317.0, 104.0, 22.0 ],
					"text" : "gate 4"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-61",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 576.0, 2071.0, 93.0, 23.0 ],
					"saved_object_attributes" : 					{
						"_persistence" : 0,
						"depth" : 1.0,
						"smoothing" : 1.0
					}
,
					"text" : "live.modulate~"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-60",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 448.0, 1938.0, 93.0, 23.0 ],
					"saved_object_attributes" : 					{
						"_persistence" : 0,
						"depth" : 1.0,
						"smoothing" : 1.0
					}
,
					"text" : "live.modulate~"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 440.0, 1814.0, 93.0, 23.0 ],
					"saved_object_attributes" : 					{
						"_persistence" : 0,
						"depth" : 1.0,
						"smoothing" : 1.0
					}
,
					"text" : "live.modulate~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 848.0, 1216.0, 100.0, 22.0 ],
					"text" : "snapshot~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 712.0, 1216.0, 100.0, 22.0 ],
					"text" : "snapshot~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 576.0, 1220.0, 100.0, 22.0 ],
					"text" : "snapshot~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 11,
					"numoutlets" : 3,
					"outlettype" : [ "signal", "signal", "" ],
					"patching_rect" : [ 608.0, 1124.0, 192.0, 22.0 ],
					"text" : "live.adsr~ @loop_mode 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 11,
					"numoutlets" : 3,
					"outlettype" : [ "signal", "signal", "" ],
					"patching_rect" : [ 816.0, 1124.0, 192.0, 22.0 ],
					"text" : "live.adsr~ @loop_mode 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 11,
					"numoutlets" : 3,
					"outlettype" : [ "signal", "signal", "" ],
					"patching_rect" : [ 816.0, 1084.0, 192.0, 22.0 ],
					"text" : "live.adsr~ @loop_mode 1"
				}

			}
, 			{
				"box" : 				{
					"annotation_name" : "Bang",
					"id" : "obj-59",
					"maxclass" : "live.text",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1032.0, 704.0, 44.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 37.0, 153.0, 36.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_annotation_name" : "Bang",
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_longname" : "Bang",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "Bang",
							"parameter_type" : 2
						}

					}
,
					"text" : "Bang",
					"texton" : "Bang",
					"varname" : "live.text"
				}

			}
, 			{
				"box" : 				{
					"annotation_name" : "Intensity",
					"appearance" : 2,
					"id" : "obj-56",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 112.0, 1826.0, 44.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 153.0, 36.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_annotation_name" : "Intensity",
							"parameter_initial" : [ 100 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Intensity",
							"parameter_mmax" : 100.0,
							"parameter_modmode" : 3,
							"parameter_shortname" : "Intensity",
							"parameter_type" : 0,
							"parameter_unitstyle" : 5
						}

					}
,
					"varname" : "live.numbox[3]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "newobj",
					"numinlets" : 9,
					"numoutlets" : 9,
					"outlettype" : [ "", "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 224.0, 280.0, 216.0, 22.0 ],
					"text" : "route range 1 2 3 4 target gate metro"
				}

			}
, 			{
				"box" : 				{
					"annotation_name" : "Range A",
					"id" : "obj-51",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 72.0, 1254.0, 44.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 67.0, 1.0, 35.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"textcolor" : 						{
							"expression" : "themecolor.live_control_text_zombie"
						}
,
						"valueof" : 						{
							"parameter_annotation_name" : "Range A",
							"parameter_initial" : [ 50 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Range A",
							"parameter_mmax" : 100.0,
							"parameter_mmin" : -100.0,
							"parameter_modmode" : 3,
							"parameter_shortname" : "Range A",
							"parameter_steps" : 201,
							"parameter_type" : 0,
							"parameter_unitstyle" : 5
						}

					}
,
					"textcolor" : [ 0.619607843137255, 0.619607843137255, 0.619607843137255, 1.0 ],
					"varname" : "live.numbox[2]"
				}

			}
, 			{
				"box" : 				{
					"annotation_name" : "Parameter D",
					"id" : "obj-45",
					"maxclass" : "live.menu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 528.0, 368.0, 100.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 2.0, 112.0, 62.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_annotation_name" : "Parameter D",
							"parameter_enum" : [ " ", " " ],
							"parameter_longname" : "Parameter D",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "Parameter D",
							"parameter_type" : 2
						}

					}
,
					"varname" : "live.menu"
				}

			}
, 			{
				"box" : 				{
					"annotation_name" : "Parameter C",
					"id" : "obj-44",
					"maxclass" : "live.menu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 400.0, 368.0, 100.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 2.0, 75.0, 62.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_annotation_name" : "Parameter C",
							"parameter_enum" : [ " ", " " ],
							"parameter_longname" : "Parameter C",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "Parameter C",
							"parameter_type" : 2
						}

					}
,
					"varname" : "live.menu[2]"
				}

			}
, 			{
				"box" : 				{
					"annotation_name" : "Parameter B",
					"id" : "obj-22",
					"maxclass" : "live.menu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 272.0, 368.0, 100.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 2.0, 38.0, 62.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_annotation_name" : "Parameter B",
							"parameter_enum" : [ " ", " " ],
							"parameter_longname" : "Parameter B",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "Parameter B",
							"parameter_type" : 2
						}

					}
,
					"varname" : "live.menu[1]"
				}

			}
, 			{
				"box" : 				{
					"annotation_name" : "Parameter A",
					"id" : "obj-9",
					"maxclass" : "live.menu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 144.0, 368.0, 100.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 2.0, 1.0, 62.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"tricolor" : 						{
							"expression" : "themecolor.live_control_text_zombie"
						}
,
						"valueof" : 						{
							"parameter_annotation_name" : "Parameter A",
							"parameter_enum" : [ " ", " " ],
							"parameter_longname" : "Parameter A",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "Parameter A",
							"parameter_type" : 2
						}

					}
,
					"tricolor" : [ 0.619607843137255, 0.619607843137255, 0.619607843137255, 1.0 ],
					"varname" : "live.menu[3]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 224.0, 200.0, 100.0, 22.0 ],
					"text" : "prepend u"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 352.0, 1076.0, 100.0, 22.0 ],
					"text" : "r px_bang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 440.0, 1220.0, 100.0, 22.0 ],
					"text" : "snapshot~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 11,
					"numoutlets" : 3,
					"outlettype" : [ "signal", "signal", "" ],
					"patching_rect" : [ 608.0, 1084.0, 192.0, 22.0 ],
					"text" : "live.adsr~ @loop_mode 1"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.125490196078431, 0.125490196078431, 0.125490196078431, 1.0 ],
					"attack_domain" : [ 0.0, 4000.0 ],
					"attack_time" : 100.0,
					"bgcolor" : [ 0.188235294117647, 0.188235294117647, 0.188235294117647, 1.0 ],
					"decay_domain" : [ 0.0, 4000.0 ],
					"decay_slope" : 0.0,
					"decay_time" : 200.0,
					"enable_final" : 0,
					"enable_initial" : 0,
					"enable_peak" : 0,
					"id" : "obj-32",
					"maxclass" : "live.adsrui",
					"numinlets" : 10,
					"numoutlets" : 10,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "" ],
					"outputmode" : 0,
					"patching_rect" : [ 664.0, 912.0, 184.0, 68.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 156.0, 8.0, 100.0, 50.0 ],
					"release_domain" : [ 0.0, 4000.0 ],
					"release_slope" : 0.0,
					"release_time" : 300.0,
					"saved_attribute_attributes" : 					{
						"activebgcolor" : 						{
							"expression" : "themecolor.live_meter_bg"
						}
,
						"bgcolor" : 						{
							"expression" : "themecolor.live_control_text_bg"
						}

					}
,
					"show_bounds" : 1,
					"show_slopehandles" : 0,
					"sustain" : 0.5
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 331.0, 1690.0, 93.0, 23.0 ],
					"saved_object_attributes" : 					{
						"_persistence" : 0,
						"depth" : 1.0,
						"smoothing" : 1.0
					}
,
					"text" : "live.modulate~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "int", "int" ],
					"patching_rect" : [ 32.0, 80.0, 100.0, 22.0 ],
					"text" : "live.thisdevice"
				}

			}
, 			{
				"box" : 				{
					"filename" : "PX._sync.js",
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 224.0, 240.0, 100.0, 22.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"text" : "v8 PX._sync.js",
					"textfile" : 					{
						"filename" : "PX._sync.js",
						"flags" : 0,
						"embed" : 0,
						"autowatch" : 1
					}
,
					"varname" : "v8_AA"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "live.comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 94.0, 718.0, 150.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 205.0, 98.0, 48.0, 18.0 ],
					"saved_attribute_attributes" : 					{
						"textcolor" : 						{
							"expression" : "themecolor.live_lcd_control_fg_zombie"
						}

					}
,
					"text" : "Release",
					"textcolor" : [ 0.701960784313725, 0.701960784313725, 0.701960784313725, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "live.comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 79.0, 701.0, 150.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 154.0, 98.0, 48.0, 18.0 ],
					"saved_attribute_attributes" : 					{
						"textcolor" : 						{
							"expression" : "themecolor.live_lcd_control_fg_zombie"
						}

					}
,
					"text" : "Sustain",
					"textcolor" : [ 0.701960784313725, 0.701960784313725, 0.701960784313725, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "live.comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 63.0, 685.0, 150.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 205.0, 66.0, 48.0, 18.0 ],
					"saved_attribute_attributes" : 					{
						"textcolor" : 						{
							"expression" : "themecolor.live_lcd_control_fg_zombie"
						}

					}
,
					"text" : "Decay",
					"textcolor" : [ 0.701960784313725, 0.701960784313725, 0.701960784313725, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "live.comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 48.0, 672.0, 150.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 154.0, 66.0, 48.0, 18.0 ],
					"saved_attribute_attributes" : 					{
						"textcolor" : 						{
							"expression" : "themecolor.live_lcd_control_fg_zombie"
						}

					}
,
					"text" : "Attack",
					"textcolor" : [ 0.701960784313725, 0.701960784313725, 0.701960784313725, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.125490196078431, 0.125490196078431, 0.125490196078431, 1.0 ],
					"id" : "obj-151",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 24.0, 520.0, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 149.0, 2.0, 114.0, 165.0 ],
					"proportion" : 0.39,
					"saved_attribute_attributes" : 					{
						"bgfillcolor" : 						{
							"expression" : "themecolor.live_meter_bg"
						}

					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-173",
					"maxclass" : "live.comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 760.0, 465.0, 48.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 105.0, 18.0, 40.0, 18.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.282352941176471, 0.282352941176471, 0.282352941176471, 1.0 ],
					"blinkcolor" : [ 1.0, 0.411764705882353, 0.498039215686275, 1.0 ],
					"id" : "obj-186",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.282352941176471, 0.282352941176471, 0.282352941176471, 1.0 ],
					"parameter_enable" : 0,
					"patching_rect" : [ 632.0, 648.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 100.0, 15.0, 24.0, 24.0 ],
					"saved_attribute_attributes" : 					{
						"bgcolor" : 						{
							"expression" : "themecolor.live_surface_bg"
						}
,
						"blinkcolor" : 						{
							"expression" : "themecolor.live_display_handle_two"
						}
,
						"outlinecolor" : 						{
							"expression" : "themecolor.live_surface_bg"
						}

					}

				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.282352941176471, 0.282352941176471, 0.282352941176471, 1.0 ],
					"blinkcolor" : [ 1.0, 0.411764705882353, 0.498039215686275, 1.0 ],
					"id" : "obj-184",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.282352941176471, 0.282352941176471, 0.282352941176471, 1.0 ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1104.0, 640.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 100.0, 126.0, 24.0, 24.0 ],
					"saved_attribute_attributes" : 					{
						"bgcolor" : 						{
							"expression" : "themecolor.live_surface_bg"
						}
,
						"blinkcolor" : 						{
							"expression" : "themecolor.live_display_handle_two"
						}
,
						"outlinecolor" : 						{
							"expression" : "themecolor.live_surface_bg"
						}

					}

				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.282352941176471, 0.282352941176471, 0.282352941176471, 1.0 ],
					"blinkcolor" : [ 1.0, 0.411764705882353, 0.498039215686275, 1.0 ],
					"id" : "obj-183",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.282352941176471, 0.282352941176471, 0.282352941176471, 1.0 ],
					"parameter_enable" : 0,
					"patching_rect" : [ 968.0, 640.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 100.0, 89.0, 24.0, 24.0 ],
					"saved_attribute_attributes" : 					{
						"bgcolor" : 						{
							"expression" : "themecolor.live_surface_bg"
						}
,
						"blinkcolor" : 						{
							"expression" : "themecolor.live_display_handle_two"
						}
,
						"outlinecolor" : 						{
							"expression" : "themecolor.live_surface_bg"
						}

					}

				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.282352941176471, 0.282352941176471, 0.282352941176471, 1.0 ],
					"blinkcolor" : [ 1.0, 0.411764705882353, 0.498039215686275, 1.0 ],
					"id" : "obj-192",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.282352941176471, 0.282352941176471, 0.282352941176471, 1.0 ],
					"parameter_enable" : 0,
					"patching_rect" : [ 792.0, 648.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 100.0, 52.0, 24.0, 24.0 ],
					"saved_attribute_attributes" : 					{
						"bgcolor" : 						{
							"expression" : "themecolor.live_surface_bg"
						}
,
						"blinkcolor" : 						{
							"expression" : "themecolor.live_display_handle_two"
						}
,
						"outlinecolor" : 						{
							"expression" : "themecolor.live_surface_bg"
						}

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
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-82", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-107", 0 ],
					"source" : [ "obj-100", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 1 ],
					"source" : [ "obj-101", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-101", 1 ],
					"source" : [ "obj-102", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-102", 1 ],
					"source" : [ "obj-103", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-102", 0 ],
					"source" : [ "obj-104", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-101", 0 ],
					"source" : [ "obj-105", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 0 ],
					"source" : [ "obj-106", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"source" : [ "obj-107", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"source" : [ "obj-108", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"source" : [ "obj-109", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-110", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-186", 0 ],
					"order" : 1,
					"source" : [ "obj-111", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 0 ],
					"order" : 0,
					"source" : [ "obj-111", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-114", 1 ],
					"source" : [ "obj-112", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-165", 0 ],
					"source" : [ "obj-113", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-236", 1 ],
					"source" : [ "obj-114", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-167", 0 ],
					"source" : [ "obj-115", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-167", 0 ],
					"source" : [ "obj-116", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-167", 0 ],
					"source" : [ "obj-117", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-167", 0 ],
					"source" : [ "obj-118", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-179", 0 ],
					"source" : [ "obj-119", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-231", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-179", 0 ],
					"source" : [ "obj-120", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-179", 0 ],
					"source" : [ "obj-121", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-165", 0 ],
					"source" : [ "obj-122", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-165", 0 ],
					"source" : [ "obj-123", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-165", 0 ],
					"source" : [ "obj-124", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-165", 0 ],
					"source" : [ "obj-125", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-165", 0 ],
					"source" : [ "obj-126", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-165", 0 ],
					"source" : [ "obj-127", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-165", 0 ],
					"source" : [ "obj-128", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-179", 0 ],
					"source" : [ "obj-129", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-179", 0 ],
					"source" : [ "obj-130", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-179", 0 ],
					"source" : [ "obj-131", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-179", 0 ],
					"source" : [ "obj-132", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-179", 0 ],
					"source" : [ "obj-133", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-181", 0 ],
					"source" : [ "obj-134", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-181", 0 ],
					"source" : [ "obj-135", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-181", 0 ],
					"source" : [ "obj-136", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-181", 0 ],
					"source" : [ "obj-137", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-181", 0 ],
					"source" : [ "obj-138", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-181", 0 ],
					"source" : [ "obj-139", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-181", 0 ],
					"source" : [ "obj-140", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-181", 0 ],
					"source" : [ "obj-141", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-192", 0 ],
					"order" : 1,
					"source" : [ "obj-142", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 0 ],
					"order" : 0,
					"source" : [ "obj-142", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-146", 1 ],
					"source" : [ "obj-143", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-148", 1 ],
					"source" : [ "obj-144", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-150", 1 ],
					"source" : [ "obj-145", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-237", 1 ],
					"source" : [ "obj-146", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-149", 0 ],
					"source" : [ "obj-147", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-238", 1 ],
					"source" : [ "obj-148", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-185", 0 ],
					"source" : [ "obj-149", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-187", 0 ],
					"source" : [ "obj-149", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-188", 0 ],
					"source" : [ "obj-149", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-200", 0 ],
					"source" : [ "obj-149", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-239", 1 ],
					"source" : [ "obj-150", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-156", 0 ],
					"source" : [ "obj-155", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-157", 0 ],
					"source" : [ "obj-156", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-164", 0 ],
					"source" : [ "obj-156", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-173", 0 ],
					"source" : [ "obj-157", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-113", 0 ],
					"source" : [ "obj-158", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-122", 0 ],
					"source" : [ "obj-158", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-123", 0 ],
					"source" : [ "obj-158", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-124", 0 ],
					"source" : [ "obj-158", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-125", 0 ],
					"source" : [ "obj-158", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-126", 0 ],
					"source" : [ "obj-158", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-127", 0 ],
					"source" : [ "obj-158", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-128", 0 ],
					"source" : [ "obj-158", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-160", 0 ],
					"source" : [ "obj-159", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-115", 0 ],
					"source" : [ "obj-160", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-116", 0 ],
					"source" : [ "obj-160", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-117", 0 ],
					"source" : [ "obj-160", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-118", 0 ],
					"source" : [ "obj-160", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"source" : [ "obj-160", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"source" : [ "obj-160", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"source" : [ "obj-160", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"source" : [ "obj-160", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-152", 0 ],
					"source" : [ "obj-161", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-159", 0 ],
					"source" : [ "obj-162", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-161", 0 ],
					"source" : [ "obj-162", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-162", 0 ],
					"source" : [ "obj-163", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-158", 0 ],
					"source" : [ "obj-164", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-111", 0 ],
					"source" : [ "obj-165", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-236", 0 ],
					"source" : [ "obj-166", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-237", 0 ],
					"source" : [ "obj-166", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-238", 0 ],
					"source" : [ "obj-166", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-239", 0 ],
					"source" : [ "obj-166", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-142", 0 ],
					"source" : [ "obj-167", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-169", 0 ],
					"source" : [ "obj-168", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-119", 0 ],
					"source" : [ "obj-169", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-120", 0 ],
					"source" : [ "obj-169", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-121", 0 ],
					"source" : [ "obj-169", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 0 ],
					"source" : [ "obj-169", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-130", 0 ],
					"source" : [ "obj-169", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-131", 0 ],
					"source" : [ "obj-169", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-132", 0 ],
					"source" : [ "obj-169", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-133", 0 ],
					"source" : [ "obj-169", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-153", 0 ],
					"source" : [ "obj-170", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-168", 0 ],
					"source" : [ "obj-171", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-170", 0 ],
					"source" : [ "obj-171", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-171", 0 ],
					"source" : [ "obj-172", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-175", 0 ],
					"source" : [ "obj-174", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-134", 0 ],
					"source" : [ "obj-175", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-135", 0 ],
					"source" : [ "obj-175", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-136", 0 ],
					"source" : [ "obj-175", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-137", 0 ],
					"source" : [ "obj-175", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-138", 0 ],
					"source" : [ "obj-175", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-139", 0 ],
					"source" : [ "obj-175", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-140", 0 ],
					"source" : [ "obj-175", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-141", 0 ],
					"source" : [ "obj-175", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-154", 0 ],
					"source" : [ "obj-176", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-174", 0 ],
					"source" : [ "obj-177", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-176", 0 ],
					"source" : [ "obj-177", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-177", 0 ],
					"source" : [ "obj-178", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-180", 0 ],
					"source" : [ "obj-179", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 1 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-183", 0 ],
					"order" : 1,
					"source" : [ "obj-180", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 0 ],
					"order" : 0,
					"source" : [ "obj-180", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-182", 0 ],
					"source" : [ "obj-181", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-184", 0 ],
					"order" : 0,
					"source" : [ "obj-182", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 0 ],
					"order" : 1,
					"source" : [ "obj-182", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-185", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"source" : [ "obj-187", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"source" : [ "obj-188", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-194", 0 ],
					"source" : [ "obj-189", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 3 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-201", 0 ],
					"order" : 1,
					"source" : [ "obj-190", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"order" : 0,
					"source" : [ "obj-190", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-203", 0 ],
					"order" : 1,
					"source" : [ "obj-191", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"order" : 0,
					"source" : [ "obj-191", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-113", 0 ],
					"order" : 7,
					"source" : [ "obj-193", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-122", 0 ],
					"order" : 6,
					"source" : [ "obj-193", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-123", 0 ],
					"order" : 4,
					"source" : [ "obj-193", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-124", 0 ],
					"order" : 5,
					"source" : [ "obj-193", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-125", 0 ],
					"order" : 0,
					"source" : [ "obj-193", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-126", 0 ],
					"order" : 1,
					"source" : [ "obj-193", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-127", 0 ],
					"order" : 2,
					"source" : [ "obj-193", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-128", 0 ],
					"order" : 3,
					"source" : [ "obj-193", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-193", 0 ],
					"source" : [ "obj-194", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-195", 0 ],
					"source" : [ "obj-194", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-196", 0 ],
					"source" : [ "obj-194", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-197", 0 ],
					"source" : [ "obj-194", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-115", 0 ],
					"order" : 4,
					"source" : [ "obj-195", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-116", 0 ],
					"order" : 5,
					"source" : [ "obj-195", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-117", 0 ],
					"order" : 6,
					"source" : [ "obj-195", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-118", 0 ],
					"order" : 7,
					"source" : [ "obj-195", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"order" : 0,
					"source" : [ "obj-195", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"order" : 1,
					"source" : [ "obj-195", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"order" : 2,
					"source" : [ "obj-195", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"order" : 3,
					"source" : [ "obj-195", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-119", 0 ],
					"order" : 0,
					"source" : [ "obj-196", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-120", 0 ],
					"order" : 1,
					"source" : [ "obj-196", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-121", 0 ],
					"order" : 2,
					"source" : [ "obj-196", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 0 ],
					"order" : 3,
					"source" : [ "obj-196", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-130", 0 ],
					"order" : 4,
					"source" : [ "obj-196", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-131", 0 ],
					"order" : 5,
					"source" : [ "obj-196", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-132", 0 ],
					"order" : 6,
					"source" : [ "obj-196", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-133", 0 ],
					"order" : 7,
					"source" : [ "obj-196", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-134", 0 ],
					"order" : 0,
					"source" : [ "obj-197", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-135", 0 ],
					"order" : 1,
					"source" : [ "obj-197", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-136", 0 ],
					"order" : 2,
					"source" : [ "obj-197", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-137", 0 ],
					"order" : 3,
					"source" : [ "obj-197", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-138", 0 ],
					"order" : 4,
					"source" : [ "obj-197", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-139", 0 ],
					"order" : 5,
					"source" : [ "obj-197", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-140", 0 ],
					"order" : 6,
					"source" : [ "obj-197", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-141", 0 ],
					"order" : 7,
					"source" : [ "obj-197", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-205", 0 ],
					"order" : 0,
					"source" : [ "obj-198", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"order" : 1,
					"source" : [ "obj-198", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-209", 0 ],
					"order" : 0,
					"source" : [ "obj-199", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"order" : 1,
					"source" : [ "obj-199", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-222", 0 ],
					"source" : [ "obj-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-450", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 2 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-200", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-201", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 1 ],
					"source" : [ "obj-202", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-203", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 7 ],
					"source" : [ "obj-204", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"source" : [ "obj-205", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 9 ],
					"source" : [ "obj-208", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"source" : [ "obj-209", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-202", 1 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 1 ],
					"source" : [ "obj-211", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 1 ],
					"source" : [ "obj-212", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-226", 0 ],
					"source" : [ "obj-217", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-217", 1 ],
					"source" : [ "obj-218", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-157", 0 ],
					"order" : 3,
					"source" : [ "obj-219", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-161", 0 ],
					"order" : 2,
					"source" : [ "obj-219", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-170", 0 ],
					"order" : 1,
					"source" : [ "obj-219", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-176", 0 ],
					"order" : 0,
					"source" : [ "obj-219", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-191", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-220", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-221", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-223", 0 ],
					"source" : [ "obj-222", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"source" : [ "obj-224", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-114", 0 ],
					"order" : 3,
					"source" : [ "obj-226", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-146", 0 ],
					"order" : 2,
					"source" : [ "obj-226", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-148", 0 ],
					"order" : 1,
					"source" : [ "obj-226", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-150", 0 ],
					"order" : 0,
					"source" : [ "obj-226", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-220", 0 ],
					"order" : 4,
					"source" : [ "obj-226", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-228", 0 ],
					"order" : 5,
					"source" : [ "obj-226", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"source" : [ "obj-227", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-227", 0 ],
					"source" : [ "obj-228", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-147", 0 ],
					"order" : 2,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-189", 0 ],
					"order" : 0,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"order" : 1,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-219", 0 ],
					"order" : 0,
					"source" : [ "obj-231", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-227", 1 ],
					"order" : 1,
					"source" : [ "obj-231", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-155", 0 ],
					"source" : [ "obj-236", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-163", 0 ],
					"source" : [ "obj-237", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-172", 0 ],
					"source" : [ "obj-238", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-178", 0 ],
					"source" : [ "obj-239", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-211", 1 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"order" : 0,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"order" : 1,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-217", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-218", 0 ],
					"source" : [ "obj-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"order" : 2,
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 10 ],
					"order" : 4,
					"source" : [ "obj-32", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 9 ],
					"order" : 3,
					"source" : [ "obj-32", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 8 ],
					"order" : 3,
					"source" : [ "obj-32", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 7 ],
					"order" : 3,
					"source" : [ "obj-32", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 6 ],
					"order" : 3,
					"source" : [ "obj-32", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 5 ],
					"order" : 3,
					"source" : [ "obj-32", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 4 ],
					"order" : 4,
					"source" : [ "obj-32", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 3 ],
					"order" : 3,
					"source" : [ "obj-32", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 2 ],
					"order" : 4,
					"source" : [ "obj-32", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 1 ],
					"order" : 4,
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"order" : 2,
					"source" : [ "obj-32", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"order" : 2,
					"source" : [ "obj-32", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"order" : 4,
					"source" : [ "obj-32", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-204", 0 ],
					"order" : 4,
					"source" : [ "obj-32", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-208", 0 ],
					"order" : 2,
					"source" : [ "obj-32", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 10 ],
					"order" : 3,
					"source" : [ "obj-32", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 9 ],
					"order" : 2,
					"source" : [ "obj-32", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 8 ],
					"order" : 2,
					"source" : [ "obj-32", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 7 ],
					"order" : 2,
					"source" : [ "obj-32", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 6 ],
					"order" : 2,
					"source" : [ "obj-32", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 5 ],
					"order" : 2,
					"source" : [ "obj-32", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 4 ],
					"order" : 3,
					"source" : [ "obj-32", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 3 ],
					"order" : 2,
					"source" : [ "obj-32", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 2 ],
					"order" : 3,
					"source" : [ "obj-32", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 1 ],
					"order" : 3,
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 10 ],
					"order" : 1,
					"source" : [ "obj-32", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 9 ],
					"order" : 1,
					"source" : [ "obj-32", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 8 ],
					"order" : 1,
					"source" : [ "obj-32", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 7 ],
					"order" : 1,
					"source" : [ "obj-32", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 6 ],
					"order" : 1,
					"source" : [ "obj-32", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 5 ],
					"order" : 1,
					"source" : [ "obj-32", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 4 ],
					"order" : 1,
					"source" : [ "obj-32", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 3 ],
					"order" : 1,
					"source" : [ "obj-32", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 2 ],
					"order" : 1,
					"source" : [ "obj-32", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 1 ],
					"order" : 1,
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 10 ],
					"order" : 0,
					"source" : [ "obj-32", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 9 ],
					"order" : 0,
					"source" : [ "obj-32", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 8 ],
					"order" : 0,
					"source" : [ "obj-32", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 7 ],
					"order" : 0,
					"source" : [ "obj-32", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 6 ],
					"order" : 0,
					"source" : [ "obj-32", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 5 ],
					"order" : 0,
					"source" : [ "obj-32", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 4 ],
					"order" : 0,
					"source" : [ "obj-32", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 3 ],
					"order" : 0,
					"source" : [ "obj-32", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 2 ],
					"order" : 0,
					"source" : [ "obj-32", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 1 ],
					"order" : 0,
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-155", 0 ],
					"order" : 3,
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-163", 0 ],
					"order" : 2,
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-172", 0 ],
					"order" : 1,
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-178", 0 ],
					"order" : 0,
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-210", 1 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-202", 0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-198", 0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-199", 0 ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-211", 0 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-167", 0 ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-167", 0 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-167", 0 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-167", 0 ],
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
					"destination" : [ "obj-64", 1 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-212", 1 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-212", 0 ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-107", 1 ],
					"order" : 0,
					"source" : [ "obj-56", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-108", 1 ],
					"order" : 1,
					"source" : [ "obj-56", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-109", 1 ],
					"order" : 2,
					"source" : [ "obj-56", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-110", 1 ],
					"order" : 3,
					"source" : [ "obj-56", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-166", 0 ],
					"source" : [ "obj-58", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-58", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"order" : 2,
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"source" : [ "obj-58", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"order" : 1,
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"source" : [ "obj-58", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"order" : 0,
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 0 ],
					"source" : [ "obj-58", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-87", 0 ],
					"source" : [ "obj-58", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-58", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"order" : 3,
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 0 ],
					"order" : 3,
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 0 ],
					"order" : 1,
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 0 ],
					"order" : 2,
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 0 ],
					"order" : 0,
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-106", 1 ],
					"source" : [ "obj-62", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 1 ],
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 1 ],
					"source" : [ "obj-62", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 1 ],
					"source" : [ "obj-62", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-105", 1 ],
					"source" : [ "obj-63", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 1 ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-85", 1 ],
					"source" : [ "obj-63", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-98", 1 ],
					"source" : [ "obj-63", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 1 ],
					"source" : [ "obj-64", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 1 ],
					"source" : [ "obj-64", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 1 ],
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-97", 1 ],
					"source" : [ "obj-64", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-103", 1 ],
					"source" : [ "obj-65", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 1 ],
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 1 ],
					"source" : [ "obj-65", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-96", 1 ],
					"source" : [ "obj-65", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"source" : [ "obj-67", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"source" : [ "obj-67", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"source" : [ "obj-67", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"source" : [ "obj-67", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-70", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 0 ],
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"source" : [ "obj-72", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 0 ],
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 1 ],
					"source" : [ "obj-74", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"order" : 3,
					"source" : [ "obj-75", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-103", 0 ],
					"order" : 0,
					"source" : [ "obj-75", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 0 ],
					"order" : 0,
					"source" : [ "obj-75", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-105", 0 ],
					"order" : 0,
					"source" : [ "obj-75", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-106", 0 ],
					"order" : 0,
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 0 ],
					"order" : 3,
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 0 ],
					"order" : 3,
					"source" : [ "obj-75", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"order" : 2,
					"source" : [ "obj-75", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"order" : 3,
					"source" : [ "obj-75", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 0 ],
					"order" : 2,
					"source" : [ "obj-75", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-85", 0 ],
					"order" : 2,
					"source" : [ "obj-75", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"order" : 2,
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-96", 0 ],
					"order" : 1,
					"source" : [ "obj-75", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-97", 0 ],
					"order" : 1,
					"source" : [ "obj-75", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-98", 0 ],
					"order" : 1,
					"source" : [ "obj-75", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 0 ],
					"order" : 1,
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 1 ],
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 1 ],
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-110", 0 ],
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 1 ],
					"source" : [ "obj-79", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 1 ],
					"source" : [ "obj-79", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 1 ],
					"source" : [ "obj-79", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 1 ],
					"source" : [ "obj-79", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-109", 0 ],
					"source" : [ "obj-80", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-80", 1 ],
					"source" : [ "obj-81", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-81", 1 ],
					"source" : [ "obj-82", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-82", 1 ],
					"source" : [ "obj-83", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-81", 0 ],
					"source" : [ "obj-85", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-80", 0 ],
					"source" : [ "obj-86", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"source" : [ "obj-87", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"source" : [ "obj-87", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"source" : [ "obj-87", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"source" : [ "obj-87", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-108", 0 ],
					"source" : [ "obj-89", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-190", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-91", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-92", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-93", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-89", 1 ],
					"source" : [ "obj-94", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 1 ],
					"source" : [ "obj-95", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 1 ],
					"source" : [ "obj-96", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 0 ],
					"source" : [ "obj-97", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 0 ],
					"source" : [ "obj-98", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-89", 0 ],
					"source" : [ "obj-99", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-11" : [ "More", "More", 0 ],
			"obj-112" : [ "Step A", "Step A", 0 ],
			"obj-113" : [ "A1", "A1", 0 ],
			"obj-115" : [ "B4", "B4", 0 ],
			"obj-116" : [ "B3", "B3", 0 ],
			"obj-117" : [ "B2", "B2", 0 ],
			"obj-118" : [ "B1", "B1", 0 ],
			"obj-119" : [ "C8", "C8", 0 ],
			"obj-120" : [ "C7", "C7", 0 ],
			"obj-121" : [ "C6", "C6", 0 ],
			"obj-122" : [ "A2", "A2", 0 ],
			"obj-123" : [ "A4", "A4", 0 ],
			"obj-124" : [ "A3", "A3", 0 ],
			"obj-125" : [ "A8", "A8", 0 ],
			"obj-126" : [ "A7", "A7", 0 ],
			"obj-127" : [ "A6", "A6", 0 ],
			"obj-128" : [ "A5", "A5", 0 ],
			"obj-129" : [ "C5", "C5", 0 ],
			"obj-130" : [ "C4", "C4", 0 ],
			"obj-131" : [ "C3", "C3", 0 ],
			"obj-132" : [ "C2", "C2", 0 ],
			"obj-133" : [ "C1", "C1", 0 ],
			"obj-134" : [ "D8", "D8", 0 ],
			"obj-135" : [ "D7", "D7", 0 ],
			"obj-136" : [ "D6", "D6", 0 ],
			"obj-137" : [ "D5", "D5", 0 ],
			"obj-138" : [ "D4", "D4", 0 ],
			"obj-139" : [ "D3", "D3", 0 ],
			"obj-140" : [ "D2", "D2", 0 ],
			"obj-141" : [ "D1", "D1", 0 ],
			"obj-143" : [ "Step B", "Step B", 0 ],
			"obj-144" : [ "Step C", "Step C", 0 ],
			"obj-145" : [ "Step D", "Step D", 0 ],
			"obj-15" : [ "Attack", "Attack", 0 ],
			"obj-18" : [ "Decay", "Decay", 0 ],
			"obj-19" : [ "Release", "Release", 0 ],
			"obj-20" : [ "Sustain", "Sustain", 0 ],
			"obj-204" : [ "Attack Slope", "A. Slope", 0 ],
			"obj-208" : [ "Release Slope", "R. Slope", 0 ],
			"obj-22" : [ "Parameter B", "Parameter B", 0 ],
			"obj-25" : [ "Range B", "Range B", 0 ],
			"obj-31" : [ "Range C", "Range C", 0 ],
			"obj-36" : [ "Range D", "Range D", 0 ],
			"obj-44" : [ "Parameter C", "Parameter C", 0 ],
			"obj-45" : [ "Parameter D", "Parameter D", 0 ],
			"obj-47" : [ "B8", "B8", 0 ],
			"obj-48" : [ "B7", "B7", 0 ],
			"obj-49" : [ "B6", "B6", 0 ],
			"obj-50" : [ "B5", "B5", 0 ],
			"obj-51" : [ "Range A", "Range A", 0 ],
			"obj-56" : [ "Intensity", "Intensity", 0 ],
			"obj-59" : [ "Bang", "Bang", 0 ],
			"obj-9" : [ "Parameter A", "Parameter A", 0 ],
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "PX._legend.maxpat",
				"bootpath" : "~/Documents/GitHub/px-stream/devices",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "PX._sync.js",
				"bootpath" : "~/Documents/GitHub/px-stream/devices",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
