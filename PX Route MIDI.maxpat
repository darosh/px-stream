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
					"id" : "obj-9",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 32.0, 168.0, 35.0, 22.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "clear", "clear", "clear" ],
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
						"rect" : [ 0.0, 0.0, 661.5, 475.200000000000045 ],
						"gridsize" : [ 8.0, 8.0 ],
						"gridsnaponopen" : 2,
						"integercoordinates" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"bubble" : 1,
									"bubbleside" : 3,
									"bubbleusescolors" : 1,
									"fontsize" : 11.0,
									"id" : "obj-12",
									"linecount" : 41,
									"maxclass" : "live.comment",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patching_rect" : [ 48.0, 104.0, 326.0, 552.0 ],
									"suppressinlet" : 1,
									"text" : "Together with two [umenu] dropdowns, this abstraction implements a chooser that controls which MIDI or audio is routed to this device or where the device sends it to.\n\nAn input or output of a device, either audio or MIDI, is referred to as a DeviceIO. An audio DeviceIO always refers to a stereo channel pair.\n\nThe third inlet expects two arguments: \n- Argument 1 (symbol): DeviceIO type: which type of input or output we want to control. One of the following types:\n    - audio_inputs: the audio input DeviceIOs of this device\n    - audio_outputs: the audio output DeviceIOs of this device\n    - midi_inputs: the MIDI input DeviceIOs of this device\n    - midi_outputs: the MIDI output DeviceIOs of this device\n- Argument 2 (int): DeviceIO index: which of the available inputs or outputs for the chosen type we want to control.\n\nOne MIDI input DeviceIO and one MIDI output DeviceIO are available to this device if it is an Audio Effect. Instruments support one routable MIDI output DeviceIO. MIDI inputs and outputs of MIDI effects are not routable, they are always fixed to Live.\n\nHow many audio input DeviceIOs are available to this device depends on the number of channels specified in its plugin~ objects. How many audio output DeviceIOs are available to this device depends on the channels specified in its plugout~ objects.\n\nAudio input routed to the first input DeviceIO (that represents the first stereo input) of an audio effect device are mixed with its regular audio input from Live.\n\nNote: after changing midi, plugin~ or plugout~ objects in a device, the available DeviceIOs will update only after a device is saved.\n\nNote 2: the routing settings of a device are automatically saved with the set, there is no need to store them in parameters.",
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubbleside" : 2,
									"bubbleusescolors" : 1,
									"fontsize" : 11.0,
									"id" : "obj-13",
									"linecount" : 3,
									"maxclass" : "live.comment",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patching_rect" : [ 688.0, 104.0, 57.0, 65.0 ],
									"suppressinlet" : 1,
									"text" : "DeviceIO type and index",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubbleside" : 0,
									"bubbleusescolors" : 1,
									"fontsize" : 11.0,
									"id" : "obj-14",
									"linecount" : 3,
									"maxclass" : "live.comment",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patching_rect" : [ 400.0, 648.0, 49.0, 65.0 ],
									"suppressinlet" : 1,
									"text" : "To types menu",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubbleside" : 0,
									"bubbleusescolors" : 1,
									"fontsize" : 11.0,
									"id" : "obj-15",
									"linecount" : 3,
									"maxclass" : "live.comment",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patching_rect" : [ 544.0, 648.0, 56.0, 65.0 ],
									"suppressinlet" : 1,
									"text" : "To channels menu",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"color" : [ 1.0, 0.694117647058824, 0.0, 1.0 ],
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
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
										"rect" : [ 278.0, 195.0, 559.0, 438.0 ],
										"gridsize" : [ 8.0, 8.0 ],
										"gridsnaponopen" : 2,
										"integercoordinates" : 1,
										"boxes" : [ 											{
												"box" : 												{
													"bubble" : 1,
													"bubbleside" : 0,
													"bubbleusescolors" : 1,
													"fontsize" : 11.0,
													"id" : "obj-4",
													"linecount" : 2,
													"maxclass" : "live.comment",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 168.0, 344.0, 66.0, 52.0 ],
													"suppressinlet" : 1,
													"text" : "Bang if not in range",
													"textjustification" : 1
												}

											}
, 											{
												"box" : 												{
													"bubble" : 1,
													"bubbleside" : 0,
													"bubbleusescolors" : 1,
													"fontsize" : 11.0,
													"id" : "obj-3",
													"linecount" : 2,
													"maxclass" : "live.comment",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 56.0, 344.0, 68.0, 52.0 ],
													"suppressinlet" : 1,
													"text" : "Selected DeviceIO id",
													"textjustification" : 1
												}

											}
, 											{
												"box" : 												{
													"bubble" : 1,
													"bubbleside" : 2,
													"bubbleusescolors" : 1,
													"fontsize" : 11.0,
													"id" : "obj-2",
													"linecount" : 2,
													"maxclass" : "live.comment",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 24.0, 24.0, 57.0, 52.0 ],
													"suppressinlet" : 1,
													"text" : "DeviceIO ids",
													"textjustification" : 1
												}

											}
, 											{
												"box" : 												{
													"bubble" : 1,
													"bubbleside" : 2,
													"bubbleusescolors" : 1,
													"fontsize" : 11.0,
													"id" : "obj-10",
													"linecount" : 2,
													"maxclass" : "live.comment",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 184.0, 24.0, 57.0, 52.0 ],
													"suppressinlet" : 1,
													"text" : "DeviceIO index",
													"textjustification" : 1
												}

											}
, 											{
												"box" : 												{
													"bubble" : 1,
													"bubblepoint" : 0.2,
													"bubbleside" : 2,
													"bubbleusescolors" : 1,
													"fontsize" : 11.0,
													"id" : "obj-1",
													"linecount" : 7,
													"maxclass" : "live.comment",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 312.0, 24.0, 192.0, 118.0 ],
													"suppressinlet" : 1,
													"text" : "This outputs the DeviceIO id belonging to the chosen DeviceIO index. \n\nIf the index is larger than the number of available DeviceIOs, we send out a bang from the second outlet.",
													"textjustification" : 0
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-14",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 184.0, 272.0, 34.0, 22.0 ],
													"text" : "sel 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-11",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 184.0, 232.0, 30.0, 22.0 ],
													"text" : "<="
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 184.0, 192.0, 37.0, 22.0 ],
													"text" : "zl len"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-8",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 72.0, 232.0, 35.0, 22.0 ],
													"text" : "id $1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-32",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 40.0, 128.0, 56.0, 22.0 ],
													"text" : "zl.delace"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-84",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 72.0, 192.0, 51.0, 22.0 ],
													"text" : "zl mth 0"
												}

											}
, 											{
												"box" : 												{
													"comment" : "(list of lom ids) id list",
													"id" : "obj-12",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 40.0, 80.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "(int) index",
													"id" : "obj-16",
													"index" : 2,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 192.0, 80.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "(lom id) selected id",
													"id" : "obj-17",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 72.0, 312.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "(bang) index out of range",
													"id" : "obj-18",
													"index" : 2,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 184.0, 312.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-32", 0 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 1 ],
													"order" : 0,
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-84", 1 ],
													"order" : 1,
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-84", 0 ],
													"order" : 1,
													"source" : [ "obj-32", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"order" : 0,
													"source" : [ "obj-32", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 0 ],
													"source" : [ "obj-8", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-84", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"source" : [ "obj-9", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 760.0, 432.0, 101.0, 20.0 ],
									"text" : "p SelectDeviceIO"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 1.0, 0.694117647058824, 0.0, 1.0 ],
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
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
										"rect" : [ 59.0, 119.0, 397.0, 391.0 ],
										"gridsize" : [ 8.0, 8.0 ],
										"gridsnaponopen" : 2,
										"integercoordinates" : 1,
										"boxes" : [ 											{
												"box" : 												{
													"bubble" : 1,
													"bubbleside" : 0,
													"bubbleusescolors" : 1,
													"fontsize" : 11.0,
													"id" : "obj-7",
													"linecount" : 2,
													"maxclass" : "live.comment",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 136.0, 304.0, 52.0, 52.0 ],
													"suppressinlet" : 1,
													"text" : "Bang if not valid",
													"textjustification" : 1
												}

											}
, 											{
												"box" : 												{
													"bubble" : 1,
													"bubbleside" : 0,
													"bubbleusescolors" : 1,
													"fontsize" : 11.0,
													"id" : "obj-8",
													"linecount" : 2,
													"maxclass" : "live.comment",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 72.0, 304.0, 52.0, 52.0 ],
													"suppressinlet" : 1,
													"text" : "A valid LOM id",
													"textjustification" : 1
												}

											}
, 											{
												"box" : 												{
													"bubble" : 1,
													"bubbleside" : 2,
													"bubbleusescolors" : 1,
													"fontsize" : 11.0,
													"id" : "obj-9",
													"maxclass" : "live.comment",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 48.0, 32.0, 52.0, 39.0 ],
													"suppressinlet" : 1,
													"text" : "LOM id",
													"textjustification" : 1
												}

											}
, 											{
												"box" : 												{
													"bubble" : 1,
													"bubbleusescolors" : 1,
													"fontsize" : 11.0,
													"id" : "obj-10",
													"linecount" : 2,
													"maxclass" : "live.comment",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 128.0, 120.0, 204.0, 37.0 ],
													"suppressinlet" : 1,
													"text" : "Also works for lists of LOM ids. A list that starts with id 0 will not pass.",
													"textjustification" : 0
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-14",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 56.0, 200.0, 22.0, 22.0 ],
													"text" : "t b"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-11",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 80.0, 200.0, 65.0, 22.0 ],
													"text" : "prepend id"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-12",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 56.0, 128.0, 49.0, 22.0 ],
													"text" : "route id"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-16",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 56.0, 168.0, 46.0, 22.0 ],
													"text" : "route 0"
												}

											}
, 											{
												"box" : 												{
													"comment" : "(lom id) any lom id",
													"id" : "obj-22",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 56.0, 80.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "(lom id) valid lom id",
													"id" : "obj-24",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 80.0, 272.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "(bang) no valid object",
													"id" : "obj-25",
													"index" : 2,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 152.0, 272.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"source" : [ "obj-16", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"source" : [ "obj-22", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 760.0, 504.0, 110.0, 20.0 ],
									"text" : "p RouteValidLomId"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubbleside" : 3,
									"bubbleusescolors" : 1,
									"fontsize" : 11.0,
									"id" : "obj-17",
									"linecount" : 3,
									"maxclass" : "live.comment",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patching_rect" : [ 480.0, 296.0, 212.0, 50.0 ],
									"suppressinlet" : 1,
									"text" : "This observer notifies us if the device is moved or (un)grouped, after which the DeviceIOs can have different ids.",
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"color" : [ 1.0, 0.694117647058824, 0.0, 1.0 ],
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
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
										"rect" : [ 208.0, 219.0, 858.0, 516.0 ],
										"gridsize" : [ 8.0, 8.0 ],
										"gridsnaponopen" : 2,
										"integercoordinates" : 1,
										"boxes" : [ 											{
												"box" : 												{
													"bubble" : 1,
													"bubbleside" : 0,
													"bubbleusescolors" : 1,
													"fontsize" : 11.0,
													"id" : "obj-14",
													"linecount" : 3,
													"maxclass" : "live.comment",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 16.0, 448.0, 54.0, 65.0 ],
													"suppressinlet" : 1,
													"text" : "Bang when changed",
													"textjustification" : 1
												}

											}
, 											{
												"box" : 												{
													"bubble" : 1,
													"bubbleside" : 2,
													"bubbleusescolors" : 1,
													"fontsize" : 11.0,
													"id" : "obj-13",
													"linecount" : 2,
													"maxclass" : "live.comment",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 16.0, 16.0, 65.0, 52.0 ],
													"suppressinlet" : 1,
													"text" : "DeviceIO to observe",
													"textjustification" : 1
												}

											}
, 											{
												"box" : 												{
													"bubble" : 1,
													"bubbleside" : 2,
													"bubbleusescolors" : 1,
													"fontsize" : 11.0,
													"id" : "obj-12",
													"linecount" : 2,
													"maxclass" : "live.comment",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 184.0, 16.0, 61.0, 52.0 ],
													"suppressinlet" : 1,
													"text" : "Stop observing",
													"textjustification" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-3",
													"linecount" : 9,
													"maxclass" : "live.comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 144.0, 336.0, 359.0, 127.0 ],
													"text" : "Note the difference between:\n \nA) this device's input or output DeviceIO objects, as determined by input or output objects in the device patch: notein/midiin or noteout/midiout for MIDI, plugin~ or plugout~ for audio.\n\nB) the available_routing_channels of the available_routing_types: the source or target channels available in Live that can be connected to this device's input or output DeviceIO objects.",
													"textjustification" : 0
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-11",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 64.0, 296.0, 22.0, 22.0 ],
													"text" : "t b"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-10",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 200.0, 112.0, 53.0, 22.0 ],
													"text" : "property"
												}

											}
, 											{
												"box" : 												{
													"comment" : "(bang) stop observing",
													"id" : "obj-9",
													"index" : 2,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 200.0, 64.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-5",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 272.0, 224.0, 182.0, 22.0 ],
													"text" : "property available_routing_types"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 272.0, 184.0, 77.0, 22.0 ],
													"text" : "t b l"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 272.0, 264.0, 77.0, 22.0 ],
													"saved_object_attributes" : 													{
														"_persistence" : 0
													}
,
													"text" : "live.observer"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-4",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 64.0, 224.0, 201.0, 22.0 ],
													"text" : "property available_routing_channels"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 64.0, 184.0, 77.0, 22.0 ],
													"text" : "t b l"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-2",
													"linecount" : 18,
													"maxclass" : "live.comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 472.0, 16.0, 356.0, 248.0 ],
													"text" : "These observers fire when new routing types or channels become available. \n\nThey also fire when a device's location is changed. However, in that case the DeviceIO observer can also output new ids.\n\nWe don't know in which order the observers in this subpatch will output relative to the DeviceIO observer. So if we would use the output of these observers directly to repopulate the menus, we could get error messages because we need the DeviceIO ids to be updated first. \n\nTo circumvent that, we always bang the DeviceIO observer when the available routing types or channels change, and make sure that is the only way the menu dropdowns are updated.\n\nTo prevent a feedback loop, we block the output of these observers when they receive an updated device id.",
													"textjustification" : 0
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-16",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 32.0, 336.0, 50.0, 22.0 ],
													"text" : "gate"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-17",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "int" ],
													"patching_rect" : [ 32.0, 112.0, 81.0, 22.0 ],
													"text" : "t 1 l 0"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 32.0, 376.0, 54.0, 22.0 ],
													"text" : "deferlow"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-52",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 64.0, 264.0, 77.0, 22.0 ],
													"saved_object_attributes" : 													{
														"_persistence" : 0
													}
,
													"text" : "live.observer"
												}

											}
, 											{
												"box" : 												{
													"comment" : "(lom id) deviceIO to observe for routing changes",
													"id" : "obj-21",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 32.0, 64.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "(bang) available routing types or channels changed",
													"id" : "obj-22",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 32.0, 416.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 1 ],
													"source" : [ "obj-1", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"order" : 1,
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"order" : 0,
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 1 ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"order" : 1,
													"source" : [ "obj-17", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"midpoints" : [ 103.5, 158.0, 41.5, 158.0 ],
													"source" : [ "obj-17", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"source" : [ "obj-17", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"order" : 0,
													"source" : [ "obj-17", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 0 ],
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 1 ],
													"source" : [ "obj-6", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 0 ],
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"source" : [ "obj-8", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"source" : [ "obj-9", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 760.0, 560.0, 153.0, 20.0 ],
									"text" : "p ObserveRoutingChanges"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 704.0, 344.0, 54.0, 20.0 ],
									"text" : "deferlow"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "int", "int" ],
									"patching_rect" : [ 792.0, 312.0, 83.0, 22.0 ],
									"text" : "live.thisdevice"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "clear" ],
									"patching_rect" : [ 704.0, 560.0, 41.0, 20.0 ],
									"text" : "t clear"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 704.0, 384.0, 74.0, 20.0 ],
									"text" : "sel <empty>"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 704.0, 216.0, 156.0, 20.0 ],
									"text" : "unpack s 0"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 1.0, 0.694117647058824, 0.0, 1.0 ],
									"id" : "obj-71",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "clear" ],
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
										"rect" : [ 114.0, 63.0, 819.0, 792.0 ],
										"gridsize" : [ 8.0, 8.0 ],
										"gridsnaponopen" : 2,
										"integercoordinates" : 1,
										"boxes" : [ 											{
												"box" : 												{
													"bubble" : 1,
													"bubbleside" : 0,
													"bubbleusescolors" : 1,
													"fontsize" : 11.0,
													"id" : "obj-15",
													"linecount" : 3,
													"maxclass" : "live.comment",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 672.0, 688.0, 56.0, 65.0 ],
													"suppressinlet" : 1,
													"text" : "To channels menu",
													"textjustification" : 1
												}

											}
, 											{
												"box" : 												{
													"bubble" : 1,
													"bubbleside" : 2,
													"bubbleusescolors" : 1,
													"fontsize" : 11.0,
													"id" : "obj-14",
													"linecount" : 2,
													"maxclass" : "live.comment",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 32.0, 16.0, 56.0, 52.0 ],
													"suppressinlet" : 1,
													"text" : "Channel index",
													"textjustification" : 1
												}

											}
, 											{
												"box" : 												{
													"bubble" : 1,
													"bubbleside" : 2,
													"bubbleusescolors" : 1,
													"fontsize" : 11.0,
													"id" : "obj-13",
													"linecount" : 2,
													"maxclass" : "live.comment",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 288.0, 16.0, 56.0, 52.0 ],
													"suppressinlet" : 1,
													"text" : "Channel id",
													"textjustification" : 1
												}

											}
, 											{
												"box" : 												{
													"bubble" : 1,
													"bubbleside" : 3,
													"bubbleusescolors" : 1,
													"fontsize" : 11.0,
													"id" : "obj-9",
													"linecount" : 3,
													"maxclass" : "live.comment",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 120.0, 168.0, 166.0, 50.0 ],
													"suppressinlet" : 1,
													"text" : "Refresh the chosen routing from Live in case our input needed to be re-interpreted.",
													"textjustification" : 0
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 296.0, 152.0, 62.0, 22.0 ],
													"text" : "t b l"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 544.0, 272.0, 185.0, 22.0 ],
													"text" : "route available_routing_channels"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-3",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 544.0, 192.0, 174.0, 22.0 ],
													"text" : "get available_routing_channels"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 544.0, 152.0, 62.0, 22.0 ],
													"text" : "t b l"
												}

											}
, 											{
												"box" : 												{
													"color" : [ 1.0, 0.694117647058824, 0.0, 1.0 ],
													"id" : "obj-12",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 9,
															"minor" : 0,
															"revision" : 8,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"classnamespace" : "box",
														"rect" : [ 712.0, 238.0, 405.0, 555.0 ],
														"gridsize" : [ 8.0, 8.0 ],
														"gridsnaponopen" : 2,
														"integercoordinates" : 1,
														"boxes" : [ 															{
																"box" : 																{
																	"bubble" : 1,
																	"bubbleside" : 2,
																	"bubbleusescolors" : 1,
																	"fontsize" : 11.0,
																	"id" : "obj-13",
																	"linecount" : 2,
																	"maxclass" : "live.comment",
																	"numinlets" : 0,
																	"numoutlets" : 0,
																	"patching_rect" : [ 24.0, 8.0, 78.0, 52.0 ],
																	"suppressinlet" : 1,
																	"text" : "Routing channels dict",
																	"textjustification" : 1
																}

															}
, 															{
																"box" : 																{
																	"bubble" : 1,
																	"bubbleside" : 0,
																	"bubbleusescolors" : 1,
																	"fontsize" : 11.0,
																	"id" : "obj-4",
																	"linecount" : 3,
																	"maxclass" : "live.comment",
																	"numinlets" : 0,
																	"numoutlets" : 0,
																	"patching_rect" : [ 264.0, 432.0, 53.0, 65.0 ],
																	"suppressinlet" : 1,
																	"text" : "Routing channel names",
																	"textjustification" : 1
																}

															}
, 															{
																"box" : 																{
																	"bubble" : 1,
																	"bubbleside" : 0,
																	"bubbleusescolors" : 1,
																	"fontsize" : 11.0,
																	"id" : "obj-2",
																	"linecount" : 3,
																	"maxclass" : "live.comment",
																	"numinlets" : 0,
																	"numoutlets" : 0,
																	"patching_rect" : [ 32.0, 432.0, 66.0, 65.0 ],
																	"suppressinlet" : 1,
																	"text" : "Routing channel identifiers",
																	"textjustification" : 1
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-3",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 272.0, 360.0, 51.0, 22.0 ],
																	"text" : "zl group"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-1",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 48.0, 368.0, 51.0, 22.0 ],
																	"text" : "zl group"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-12",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "" ],
																	"patching_rect" : [ 48.0, 112.0, 58.0, 22.0 ],
																	"text" : "t b l"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 12.0,
																	"id" : "obj-15",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 88.0, 184.0, 116.0, 22.0 ],
																	"text" : "routepass dictionary"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 12.0,
																	"id" : "obj-47",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 3,
																	"outlettype" : [ "", "", "" ],
																	"patching_rect" : [ 88.0, 296.0, 202.0, 22.0 ],
																	"saved_object_attributes" : 																	{
																		"legacy" : 1
																	}
,
																	"text" : "dict.unpack identifier: display_name:"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 12.0,
																	"id" : "obj-48",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 184.0, 224.0, 25.0, 22.0 ],
																	"text" : "iter"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 12.0,
																	"id" : "obj-49",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 88.0, 144.0, 221.0, 22.0 ],
																	"saved_object_attributes" : 																	{
																		"legacy" : 1
																	}
,
																	"text" : "dict.unpack available_routing_channels:"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "(dict) available routing channels",
																	"id" : "obj-7",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 48.0, 64.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "(list, ints) channel identifiers",
																	"id" : "obj-9",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 48.0, 400.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "(list, symbols) channel names",
																	"id" : "obj-10",
																	"index" : 2,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 272.0, 400.0, 30.0, 30.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-9", 0 ],
																	"source" : [ "obj-1", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-1", 0 ],
																	"order" : 1,
																	"source" : [ "obj-12", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-3", 0 ],
																	"midpoints" : [ 57.5, 349.0, 281.5, 349.0 ],
																	"order" : 0,
																	"source" : [ "obj-12", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-49", 0 ],
																	"source" : [ "obj-12", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-47", 0 ],
																	"source" : [ "obj-15", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-48", 0 ],
																	"source" : [ "obj-15", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-10", 0 ],
																	"source" : [ "obj-3", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-1", 0 ],
																	"source" : [ "obj-47", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-3", 0 ],
																	"source" : [ "obj-47", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-47", 0 ],
																	"source" : [ "obj-48", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-15", 0 ],
																	"source" : [ "obj-49", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-12", 0 ],
																	"source" : [ "obj-7", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 544.0, 344.0, 158.0, 22.0 ],
													"text" : "p GetChannelIdsAndNames"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "clear" ],
													"patching_rect" : [ 680.0, 456.0, 47.0, 22.0 ],
													"text" : "t l clear"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-5",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 680.0, 496.0, 25.0, 22.0 ],
													"text" : "iter"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 680.0, 536.0, 96.0, 22.0 ],
													"text" : "prepend append"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-65",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 296.0, 536.0, 30.0, 22.0 ],
													"text" : "- 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-38",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "int" ],
													"patching_rect" : [ 296.0, 384.0, 53.0, 22.0 ],
													"text" : "t b i"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-39",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 296.0, 456.0, 38.0, 22.0 ],
													"text" : "zl reg"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-44",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 296.0, 496.0, 53.0, 22.0 ],
													"text" : "zl sub"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-31",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "int" ],
													"patching_rect" : [ 56.0, 384.0, 53.0, 22.0 ],
													"text" : "t b i"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-27",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 56.0, 456.0, 38.0, 22.0 ],
													"text" : "zl reg"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-21",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 56.0, 496.0, 53.0, 22.0 ],
													"text" : "zl mth"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-36",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 296.0, 312.0, 161.0, 22.0 ],
													"saved_object_attributes" : 													{
														"legacy" : 1
													}
,
													"text" : "dict.unpack routing_channel:"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-30",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "int" ],
													"patching_rect" : [ 48.0, 112.0, 30.0, 22.0 ],
													"text" : "t b i"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-23",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 296.0, 272.0, 125.0, 22.0 ],
													"text" : "route routing_channel"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-22",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 296.0, 344.0, 121.0, 22.0 ],
													"saved_object_attributes" : 													{
														"legacy" : 1
													}
,
													"text" : "dict.unpack identifier:"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-11",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 296.0, 192.0, 114.0, 22.0 ],
													"text" : "get routing_channel"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 296.0, 232.0, 62.0, 22.0 ],
													"saved_object_attributes" : 													{
														"_persistence" : 0
													}
,
													"text" : "live.object"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-73",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "dictionary" ],
													"patching_rect" : [ 56.0, 536.0, 122.0, 22.0 ],
													"text" : "dict.pack identifier: -1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-42",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 296.0, 112.0, 263.0, 22.0 ],
													"text" : "t l l"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-28",
													"linecount" : 3,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 296.0, 576.0, 81.0, 49.0 ],
													"text" : "set $1, clearchecks, checkitem $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-29",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 56.0, 576.0, 161.0, 22.0 ],
													"text" : "prepend set routing_channel"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-33",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 56.0, 616.0, 62.0, 22.0 ],
													"saved_object_attributes" : 													{
														"_persistence" : 0
													}
,
													"text" : "live.object"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-52",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 544.0, 232.0, 62.0, 22.0 ],
													"saved_object_attributes" : 													{
														"_persistence" : 0
													}
,
													"text" : "live.object"
												}

											}
, 											{
												"box" : 												{
													"comment" : "(int) channel index",
													"id" : "obj-66",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 48.0, 64.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "(lom id) deviceIO id",
													"id" : "obj-67",
													"index" : 2,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 296.0, 64.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "to channels umenu",
													"id" : "obj-68",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 680.0, 656.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 1 ],
													"source" : [ "obj-1", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-27", 1 ],
													"midpoints" : [ 553.5, 443.0, 84.5, 443.0 ],
													"order" : 1,
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 1 ],
													"midpoints" : [ 553.5, 443.5, 324.5, 443.5 ],
													"order" : 0,
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-12", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 1 ],
													"source" : [ "obj-2", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-73", 0 ],
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-38", 0 ],
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-36", 0 ],
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"source" : [ "obj-27", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-68", 0 ],
													"source" : [ "obj-28", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-33", 0 ],
													"source" : [ "obj-29", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"source" : [ "obj-30", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-31", 0 ],
													"source" : [ "obj-30", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 1 ],
													"source" : [ "obj-31", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-27", 0 ],
													"source" : [ "obj-31", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 0 ],
													"source" : [ "obj-36", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 0 ],
													"source" : [ "obj-38", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-44", 1 ],
													"source" : [ "obj-38", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-44", 0 ],
													"source" : [ "obj-39", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-68", 0 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"order" : 0,
													"source" : [ "obj-42", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-42", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-33", 1 ],
													"order" : 1,
													"source" : [ "obj-42", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-65", 0 ],
													"source" : [ "obj-44", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-68", 0 ],
													"source" : [ "obj-6", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 0 ],
													"source" : [ "obj-65", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"source" : [ "obj-66", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-42", 0 ],
													"source" : [ "obj-67", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 0 ],
													"source" : [ "obj-73", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"source" : [ "obj-8", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 560.0, 560.0, 111.0, 20.0 ],
									"text" : "p RoutingChannels"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 1.0, 0.694117647058824, 0.0, 1.0 ],
									"id" : "obj-69",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "clear" ],
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
										"rect" : [ 58.0, 88.0, 782.0, 767.0 ],
										"gridsize" : [ 8.0, 8.0 ],
										"gridsnaponopen" : 2,
										"integercoordinates" : 1,
										"boxes" : [ 											{
												"box" : 												{
													"bubble" : 1,
													"bubbleside" : 0,
													"bubbleusescolors" : 1,
													"fontsize" : 11.0,
													"id" : "obj-15",
													"linecount" : 3,
													"maxclass" : "live.comment",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 648.0, 688.0, 47.0, 65.0 ],
													"suppressinlet" : 1,
													"text" : "To types menu",
													"textjustification" : 1
												}

											}
, 											{
												"box" : 												{
													"bubble" : 1,
													"bubbleside" : 2,
													"bubbleusescolors" : 1,
													"fontsize" : 11.0,
													"id" : "obj-14",
													"linecount" : 2,
													"maxclass" : "live.comment",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 40.0, 24.0, 56.0, 52.0 ],
													"suppressinlet" : 1,
													"text" : "Type index",
													"textjustification" : 1
												}

											}
, 											{
												"box" : 												{
													"bubble" : 1,
													"bubbleside" : 2,
													"bubbleusescolors" : 1,
													"fontsize" : 11.0,
													"id" : "obj-13",
													"linecount" : 2,
													"maxclass" : "live.comment",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 304.0, 24.0, 56.0, 52.0 ],
													"suppressinlet" : 1,
													"text" : "Channel id",
													"textjustification" : 1
												}

											}
, 											{
												"box" : 												{
													"bubble" : 1,
													"bubbleside" : 3,
													"bubbleusescolors" : 1,
													"fontsize" : 11.0,
													"id" : "obj-10",
													"linecount" : 3,
													"maxclass" : "live.comment",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patching_rect" : [ 128.0, 176.0, 169.0, 50.0 ],
													"suppressinlet" : 1,
													"text" : "Refresh the chosen routing from Live in case our input needed to be re-interpreted.",
													"textjustification" : 0
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 312.0, 160.0, 62.0, 22.0 ],
													"text" : "t b l"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 536.0, 280.0, 165.0, 22.0 ],
													"text" : "route available_routing_types"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-3",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 536.0, 200.0, 155.0, 22.0 ],
													"text" : "get available_routing_types"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 536.0, 160.0, 62.0, 22.0 ],
													"text" : "t b l"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 536.0, 240.0, 62.0, 22.0 ],
													"saved_object_attributes" : 													{
														"_persistence" : 0
													}
,
													"text" : "live.object"
												}

											}
, 											{
												"box" : 												{
													"color" : [ 1.0, 0.694117647058824, 0.0, 1.0 ],
													"id" : "obj-12",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 9,
															"minor" : 0,
															"revision" : 8,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"classnamespace" : "box",
														"rect" : [ 218.0, 237.0, 423.0, 544.0 ],
														"gridsize" : [ 8.0, 8.0 ],
														"gridsnaponopen" : 2,
														"integercoordinates" : 1,
														"boxes" : [ 															{
																"box" : 																{
																	"bubble" : 1,
																	"bubbleside" : 0,
																	"bubbleusescolors" : 1,
																	"fontsize" : 11.0,
																	"id" : "obj-4",
																	"linecount" : 3,
																	"maxclass" : "live.comment",
																	"numinlets" : 0,
																	"numoutlets" : 0,
																	"patching_rect" : [ 264.0, 432.0, 50.0, 65.0 ],
																	"suppressinlet" : 1,
																	"text" : "Routing type names",
																	"textjustification" : 1
																}

															}
, 															{
																"box" : 																{
																	"bubble" : 1,
																	"bubbleside" : 0,
																	"bubbleusescolors" : 1,
																	"fontsize" : 11.0,
																	"id" : "obj-2",
																	"linecount" : 3,
																	"maxclass" : "live.comment",
																	"numinlets" : 0,
																	"numoutlets" : 0,
																	"patching_rect" : [ 32.0, 432.0, 61.0, 65.0 ],
																	"suppressinlet" : 1,
																	"text" : "Routing type identifiers",
																	"textjustification" : 1
																}

															}
, 															{
																"box" : 																{
																	"bubble" : 1,
																	"bubbleside" : 2,
																	"bubbleusescolors" : 1,
																	"fontsize" : 11.0,
																	"id" : "obj-13",
																	"linecount" : 2,
																	"maxclass" : "live.comment",
																	"numinlets" : 0,
																	"numoutlets" : 0,
																	"patching_rect" : [ 32.0, 8.0, 61.0, 52.0 ],
																	"suppressinlet" : 1,
																	"text" : "Routing types dict",
																	"textjustification" : 1
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-3",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 272.0, 360.0, 51.0, 22.0 ],
																	"text" : "zl group"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-1",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 48.0, 368.0, 51.0, 22.0 ],
																	"text" : "zl group"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-12",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "" ],
																	"patching_rect" : [ 48.0, 112.0, 58.0, 22.0 ],
																	"text" : "t b l"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 12.0,
																	"id" : "obj-15",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 88.0, 184.0, 116.0, 22.0 ],
																	"text" : "routepass dictionary"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 12.0,
																	"id" : "obj-47",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 3,
																	"outlettype" : [ "", "", "" ],
																	"patching_rect" : [ 88.0, 296.0, 202.0, 22.0 ],
																	"saved_object_attributes" : 																	{
																		"legacy" : 1
																	}
,
																	"text" : "dict.unpack identifier: display_name:"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 12.0,
																	"id" : "obj-48",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 184.0, 224.0, 25.0, 22.0 ],
																	"text" : "iter"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 12.0,
																	"id" : "obj-49",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 88.0, 152.0, 202.0, 22.0 ],
																	"saved_object_attributes" : 																	{
																		"legacy" : 1
																	}
,
																	"text" : "dict.unpack available_routing_types:"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "(dict) available routing types",
																	"id" : "obj-7",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 48.0, 64.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "(list, ints) type identifiers",
																	"id" : "obj-9",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 48.0, 400.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "(list, symbols) type names",
																	"id" : "obj-10",
																	"index" : 2,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 272.0, 400.0, 30.0, 30.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-9", 0 ],
																	"source" : [ "obj-1", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-1", 0 ],
																	"order" : 1,
																	"source" : [ "obj-12", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-3", 0 ],
																	"midpoints" : [ 57.5, 351.0, 281.5, 351.0 ],
																	"order" : 0,
																	"source" : [ "obj-12", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-49", 0 ],
																	"source" : [ "obj-12", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-47", 0 ],
																	"source" : [ "obj-15", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-48", 0 ],
																	"source" : [ "obj-15", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-10", 0 ],
																	"source" : [ "obj-3", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-1", 0 ],
																	"source" : [ "obj-47", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-3", 0 ],
																	"source" : [ "obj-47", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-47", 0 ],
																	"source" : [ "obj-48", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-15", 0 ],
																	"source" : [ "obj-49", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-12", 0 ],
																	"source" : [ "obj-7", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 536.0, 360.0, 139.0, 22.0 ],
													"text" : "p GetTypeIdsAndNames"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "clear" ],
													"patching_rect" : [ 656.0, 464.0, 47.0, 22.0 ],
													"text" : "t l clear"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-5",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 656.0, 504.0, 25.0, 22.0 ],
													"text" : "iter"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 656.0, 544.0, 96.0, 22.0 ],
													"text" : "prepend append"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-65",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 312.0, 544.0, 30.0, 22.0 ],
													"text" : "- 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-38",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "int" ],
													"patching_rect" : [ 312.0, 392.0, 53.0, 22.0 ],
													"text" : "t b i"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-39",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 312.0, 464.0, 38.0, 22.0 ],
													"text" : "zl reg"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-44",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 312.0, 504.0, 53.0, 22.0 ],
													"text" : "zl sub"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-31",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "int" ],
													"patching_rect" : [ 56.0, 392.0, 53.0, 22.0 ],
													"text" : "t b i"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-27",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 56.0, 464.0, 38.0, 22.0 ],
													"text" : "zl reg"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-21",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 56.0, 504.0, 53.0, 22.0 ],
													"text" : "zl mth"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-36",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 312.0, 320.0, 142.0, 22.0 ],
													"saved_object_attributes" : 													{
														"legacy" : 1
													}
,
													"text" : "dict.unpack routing_type:"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-30",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "int" ],
													"patching_rect" : [ 48.0, 120.0, 30.0, 22.0 ],
													"text" : "t b i"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-23",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 312.0, 280.0, 105.0, 22.0 ],
													"text" : "route routing_type"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-22",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 312.0, 360.0, 121.0, 22.0 ],
													"saved_object_attributes" : 													{
														"legacy" : 1
													}
,
													"text" : "dict.unpack identifier:"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-11",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 312.0, 200.0, 95.0, 22.0 ],
													"text" : "get routing_type"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 312.0, 240.0, 62.0, 22.0 ],
													"saved_object_attributes" : 													{
														"_persistence" : 0
													}
,
													"text" : "live.object"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-73",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "dictionary" ],
													"patching_rect" : [ 56.0, 544.0, 122.0, 22.0 ],
													"text" : "dict.pack identifier: -1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-42",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 312.0, 120.0, 242.0, 22.0 ],
													"text" : "t l l"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-28",
													"linecount" : 3,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 312.0, 584.0, 81.0, 49.0 ],
													"text" : "set $1, clearchecks, checkitem $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-29",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 56.0, 584.0, 141.0, 22.0 ],
													"text" : "prepend set routing_type"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-33",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 56.0, 624.0, 62.0, 22.0 ],
													"saved_object_attributes" : 													{
														"_persistence" : 0
													}
,
													"text" : "live.object"
												}

											}
, 											{
												"box" : 												{
													"comment" : "(int) routing type index",
													"id" : "obj-66",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 48.0, 72.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "(lom id) deviceIO id",
													"id" : "obj-67",
													"index" : 2,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 312.0, 72.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "to types umenu",
													"id" : "obj-68",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 656.0, 648.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 1 ],
													"source" : [ "obj-1", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-27", 1 ],
													"midpoints" : [ 545.5, 452.0, 84.5, 452.0 ],
													"order" : 1,
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 1 ],
													"midpoints" : [ 545.5, 452.5, 340.5, 452.5 ],
													"order" : 0,
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-12", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-73", 0 ],
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-38", 0 ],
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-36", 0 ],
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"source" : [ "obj-27", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-68", 0 ],
													"source" : [ "obj-28", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-33", 0 ],
													"source" : [ "obj-29", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"source" : [ "obj-30", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-31", 0 ],
													"source" : [ "obj-30", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 1 ],
													"source" : [ "obj-31", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-27", 0 ],
													"source" : [ "obj-31", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 0 ],
													"source" : [ "obj-36", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 0 ],
													"source" : [ "obj-38", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-44", 1 ],
													"source" : [ "obj-38", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-44", 0 ],
													"source" : [ "obj-39", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-68", 0 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"order" : 0,
													"source" : [ "obj-42", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-33", 1 ],
													"order" : 1,
													"source" : [ "obj-42", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"source" : [ "obj-42", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-65", 0 ],
													"source" : [ "obj-44", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-68", 0 ],
													"source" : [ "obj-6", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 0 ],
													"source" : [ "obj-65", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"source" : [ "obj-66", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-42", 0 ],
													"source" : [ "obj-67", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 0 ],
													"source" : [ "obj-73", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"source" : [ "obj-8", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"source" : [ "obj-9", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 1 ],
													"source" : [ "obj-9", 1 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 408.0, 560.0, 92.0, 20.0 ],
									"text" : "p RoutingTypes"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 704.0, 256.0, 100.0, 20.0 ],
									"text" : "prepend property"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-90",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 704.0, 304.0, 77.0, 22.0 ],
									"saved_object_attributes" : 									{
										"_persistence" : 1
									}
,
									"text" : "live.observer"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 792.0, 344.0, 117.0, 22.0 ],
									"text" : "live.path this_device"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-27",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 408.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-29",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 560.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-30",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 704.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-31",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 408.0, 768.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-32",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 560.0, 768.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-33",
									"index" : 3,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 704.0, 768.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 1 ],
									"source" : [ "obj-16", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"order" : 0,
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-69", 1 ],
									"order" : 2,
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-71", 1 ],
									"order" : 1,
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"midpoints" : [ 851.5, 477.0, 713.5, 477.0 ],
									"order" : 1,
									"source" : [ "obj-20", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 1 ],
									"order" : 0,
									"source" : [ "obj-20", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-22", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-90", 0 ],
									"midpoints" : [ 769.5, 596.5, 928.125, 596.5, 928.125, 287.0, 713.5, 287.0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 1 ],
									"source" : [ "obj-24", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-90", 1 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-69", 0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-71", 0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-90", 0 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-69", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-71", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-90", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 144.0, 160.0, 88.0, 22.0 ],
					"text" : "p routing"
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
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 320.0, 112.0, 32.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "midi" ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-307",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "chain.maxpat",
					"numinlets" : 3,
					"numoutlets" : 4,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 256.0, 160.0, 240.0, 32.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 392.0, 64.0, 40.0, 22.0 ],
					"text" : "midiin"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.972549019607843, 0.462745098039216, 0.501960784313725, 1.0 ],
					"annotation" : "",
					"appearance" : 1,
					"automation" : "off",
					"automationon" : "on",
					"id" : "obj-2",
					"maxclass" : "live.text",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 320.0, 64.0, 50.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 4.0, 40.0, 76.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"activebgoncolor" : 						{
							"expression" : "themecolor.live_display_handle_two"
						}
,
						"valueof" : 						{
							"parameter_enum" : [ "off", "on" ],
							"parameter_initial" : [ 1 ],
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
					"text" : "Send MIDI",
					"texton" : "Send MIDI",
					"varname" : "Thru"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.279471418544607, 0.279471350143365, 0.279471368104493, 1.0 ],
					"blinkcolor" : [ 0.972549019607843, 0.462745098039216, 0.501960784313725, 1.0 ],
					"id" : "obj-6",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.279471418544607, 0.279471350143365, 0.279471368104493, 1.0 ],
					"parameter_enable" : 0,
					"patching_rect" : [ 416.0, 112.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 64.0, 104.0, 104.0 ],
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
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 8.0, 64.0, 62.0, 22.0 ],
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
					"patching_rect" : [ 8.0, 112.0, 62.0, 22.0 ],
					"text" : "plugout~"
				}

			}
, 			{
				"box" : 				{
					"allowdrag" : 0,
					"annotation" : "",
					"bgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgfillcolor_color1" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgfillcolor_color2" : [ 0.218158140677074, 0.218158080844553, 0.218158096479747, 1.0 ],
					"bgfillcolor_proportion" : 0.39,
					"bgfillcolor_type" : "color",
					"color" : [ 0.269595890603871, 0.408853959740371, 0.595943257030903, 1.0 ],
					"elementcolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
					"fontname" : "Ableton Sans Medium",
					"fontsize" : 9.5,
					"hint" : "",
					"id" : "obj-3",
					"items" : "<empty>",
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 96.0, 112.0, 96.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 4.0, 15.0, 96.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.live_selection"
						}
,
						"elementcolor" : 						{
							"expression" : "themecolor.live_control_fg_off_zombie"
						}
,
						"textcolor" : 						{
							"expression" : "themecolor.live_control_fg"
						}

					}
,
					"textcolor" : [ 0.85, 0.85, 0.85, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"allowdrag" : 0,
					"annotation" : "",
					"bgcolor" : [ 0.086274509803922, 0.086274509803922, 0.086274509803922, 0.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 0.086274509803922, 0.086274509803922, 0.086274509803922, 0.0 ],
					"bgfillcolor_color1" : [ 0.086274509803922, 0.086274509803922, 0.086274509803922, 0.0 ],
					"bgfillcolor_color2" : [ 0.218158140677074, 0.218158080844553, 0.218158096479747, 1.0 ],
					"bgfillcolor_proportion" : 0.39,
					"bgfillcolor_type" : "color",
					"color" : [ 0.269595890603871, 0.408853959740371, 0.595943257030903, 1.0 ],
					"elementcolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
					"fontname" : "Ableton Sans Medium",
					"fontsize" : 9.5,
					"hint" : "",
					"id" : "obj-4",
					"items" : "<empty>",
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 96.0, 96.0, 96.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 4.0, 1.0, 96.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"color" : 						{
							"expression" : "themecolor.live_selection"
						}
,
						"elementcolor" : 						{
							"expression" : "themecolor.live_control_fg_off_zombie"
						}
,
						"textcolor" : 						{
							"expression" : "themecolor.live_control_fg"
						}

					}
,
					"textcolor" : [ 0.85, 0.85, 0.85, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 0.0,
					"annotation" : "",
					"bgcolor" : [ 0.235, 0.235, 0.235, 1.0 ],
					"border" : 1,
					"bordercolor" : [ 0.09782765023003, 0.097827613875914, 0.09782762332443, 1.0 ],
					"hint" : "",
					"id" : "obj-28",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 96.0, 112.0, 96.0, 16.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 4.0, 18.0, 96.0, 13.0 ],
					"proportion" : 0.39,
					"rounded" : 0,
					"saved_attribute_attributes" : 					{
						"bgfillcolor" : 						{
							"expression" : "themecolor.live_control_text_bg"
						}
,
						"bordercolor" : 						{
							"expression" : "themecolor.live_contrast_frame"
						}

					}

				}

			}
, 			{
				"box" : 				{
					"angle" : 0.0,
					"annotation" : "",
					"bgcolor" : [ 0.235, 0.235, 0.235, 1.0 ],
					"border" : 1,
					"bordercolor" : [ 0.09782765023003, 0.097827613875914, 0.09782762332443, 1.0 ],
					"hint" : "",
					"id" : "obj-113",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 96.0, 96.0, 96.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 4.0, 4.0, 96.0, 13.0 ],
					"proportion" : 0.39,
					"rounded" : 0,
					"saved_attribute_attributes" : 					{
						"bgfillcolor" : 						{
							"expression" : "themecolor.live_control_text_bg"
						}
,
						"bordercolor" : 						{
							"expression" : "themecolor.live_contrast_frame"
						}

					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 216.0, 112.0, 79.0, 22.0 ],
					"text" : "midi_inputs 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "int", "int" ],
					"patching_rect" : [ 216.0, 64.0, 83.0, 22.0 ],
					"text" : "live.thisdevice"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-307", 2 ],
					"order" : 1,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"order" : 0,
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
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 1 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"order" : 0,
					"source" : [ "obj-34", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-34", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"order" : 1,
					"source" : [ "obj-34", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 1 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 2 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-307", 1 ],
					"order" : 1,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"order" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"order" : 0,
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"order" : 1,
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-2" : [ "Thru", "Thru", 0 ],
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
				"name" : "chain.js",
				"bootpath" : "~/Documents/GitHub/px-stream",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "chain.maxpat",
				"bootpath" : "~/Documents/GitHub/px-stream",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
