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
		"rect" : [ 130.0, 71.0, 243.0, 508.0 ],
		"openinpresentation" : 1,
		"gridonopen" : 2,
		"gridsize" : [ 4.0, 4.0 ],
		"gridsnaponopen" : 2,
		"objectsnaponopen" : 0,
		"style" : "Max For Live",
		"subpatcher_template" : "Max For Live",
		"integercoordinates" : 1,
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 390.0, 260.0, 56.0, 22.0 ],
					"text" : "deferlow"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-43",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 200.0, 26.0, 282.0, 20.0 ],
					"prototypename" : "M4L.patcher-summary",
					"text" : "Route signal to/from a multichannel M4L device"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 18.0,
					"id" : "obj-33",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 50.0, 20.0, 143.0, 27.0 ],
					"prototypename" : "M4L.subpatcher-title",
					"text" : "BrowseRouting"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 50.0, 90.0, 540.0, 33.0 ],
					"text" : "Arguments: type - audio_inputs or audio_outputs - stereo input or output index (1 for in/outputs 1-2, 2 for in/outputs 3-4, etc), available according to plugin~ or plugout~ arguments in the parent device"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 50.0, 50.0, 570.0, 33.0 ],
					"text" : "A utility that lists available tracks in the current Live set to send audio to or receive audio from, depending on the chosen type (inpiuts or outputs) - to be used inside a multichannel Max For Live device."
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.941176, 0.690196, 0.196078, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "int", "int" ],
					"patching_rect" : [ 530.0, 150.0, 85.0, 22.0 ],
					"text" : "live.thisdevice"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 120.0, 410.0, 329.0, 22.0 ],
					"text" : "RoutingObjects available_routing_channels routing_channel"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 120.0, 370.0, 291.0, 22.0 ],
					"text" : "RoutingObjects available_routing_types routing_type"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-8",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 430.0, 370.0, 37.0, 22.0 ],
					"text" : "id $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 430.0, 320.0, 56.0, 22.0 ],
					"text" : "zl nth #2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 390.0, 290.0, 59.0, 22.0 ],
					"text" : "zl delace"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.941176, 0.690196, 0.196078, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 390.0, 230.0, 159.0, 22.0 ],
					"saved_object_attributes" : 					{
						"_persistence" : 1
					}
,
					"text" : "live.observer #1"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.941176, 0.690196, 0.196078, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-3",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 530.0, 180.0, 101.0, 35.0 ],
					"text" : "live.path live_set this_device"
				}

			}
, 			{
				"box" : 				{
					"allowdrag" : 0,
					"annotation" : "Selects a target track or hardware I/O.",
					"bgcolor" : [ 0.074509803921569, 0.074509803921569, 0.074509803921569, 0.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 0.074509803921569, 0.074509803921569, 0.074509803921569, 0.0 ],
					"bgfillcolor_color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
					"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"bgfillcolor_proportion" : 0.39,
					"bgfillcolor_type" : "color",
					"color" : [ 0.690196078431373, 0.866666666666667, 0.92156862745098, 1.0 ],
					"elementcolor" : [ 0.56078431372549, 0.56078431372549, 0.56078431372549, 1.0 ],
					"fontname" : "Ableton Sans Medium Regular",
					"fontsize" : 9.5,
					"hint" : "",
					"id" : "obj-115",
					"items" : [ "Ext. In", ",", "1-Audio", ",", "2-Audio", ",", "3-64 Pads Dub Techno Kit", ",", "A-Reverb", ",", "B-Delay", ",", "Main", ",", "No Input" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.0, 370.0, 80.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, -2.0, 96.0, 20.0 ],
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
					"textcolor" : [ 0.882352941176471, 0.882352941176471, 0.882352941176471, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"allowdrag" : 0,
					"annotation" : "Selects an insertion point in the selected track or hardware I/O.",
					"bgcolor" : [ 0.074509803921569, 0.074509803921569, 0.074509803921569, 0.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 0.074509803921569, 0.074509803921569, 0.074509803921569, 0.0 ],
					"bgfillcolor_color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
					"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"bgfillcolor_proportion" : 0.39,
					"bgfillcolor_type" : "color",
					"color" : [ 0.690196078431373, 0.866666666666667, 0.92156862745098, 1.0 ],
					"elementcolor" : [ 0.56078431372549, 0.56078431372549, 0.56078431372549, 1.0 ],
					"fontname" : "Ableton Sans Medium Regular",
					"fontsize" : 9.5,
					"hint" : "",
					"id" : "obj-27",
					"items" : [ "Pre FX", ",", "Post FX", ",", "Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Kick Dub | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Kick Dub | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Kick Dub | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Snare 606 Dub | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Snare 606 Dub | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Snare 606 Dub | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Clap Dub Short | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Clap Dub Short | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Clap Dub Short | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Stick Unv Dub | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Stick Unv Dub | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Stick Unv Dub | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Perc Metal Tap Dub | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Perc Metal Tap Dub | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Perc Metal Tap Dub | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Stick Dub Noise | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Stick Dub Noise | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Stick Dub Noise | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Hihat Closed 808 Dub 1 | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Hihat Closed 808 Dub 1 | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Hihat Closed 808 Dub 1 | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Snap Impulse Dub | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Snap Impulse Dub | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Snap Impulse Dub | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Hihat Closed 808 Dub 2 | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Hihat Closed 808 Dub 2 | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Hihat Closed 808 Dub 2 | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Tom Unvx Dub | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Tom Unvx Dub | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Tom Unvx Dub | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Snap SP | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Snap SP | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Snap SP | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | FX Noise Hit Dub | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | FX Noise Hit Dub | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | FX Noise Hit Dub | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Stick Dub | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Stick Dub | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Stick Dub | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | E-Perc BittyBot | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | E-Perc BittyBot | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | E-Perc BittyBot | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Perc Dub Impulse | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Perc Dub Impulse | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Perc Dub Impulse | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | FX Laser Dub | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | FX Laser Dub | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | FX Laser Dub | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Kick Noise Dub 1 | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Kick Noise Dub 1 | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Kick Noise Dub 1 | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Kick Noise Dub 2 | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Kick Noise Dub 2 | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Kick Noise Dub 2 | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Tom Lo Dub | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Tom Lo Dub | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Tom Lo Dub | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Wood Dub | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Wood Dub | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Wood Dub | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Tom 808 Mid Dub | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Tom 808 Mid Dub | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Tom 808 Mid Dub | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Tom 808 Lo Hiss | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Tom 808 Lo Hiss | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Tom 808 Lo Hiss | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Clap Dub Long | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Clap Dub Long | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Clap Dub Long | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Dirty Click Dub | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Dirty Click Dub | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Dirty Click Dub | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | E-Perc MoonGolfRingShift 1 | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | E-Perc MoonGolfRingShift 1 | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | E-Perc MoonGolfRingShift 1 | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | E-Perc MoonGolfRingShift 2 | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | E-Perc MoonGolfRingShift 2 | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | E-Perc MoonGolfRingShift 2 | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | E-Perc MoonGolfRingShift 3 | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | E-Perc MoonGolfRingShift 3 | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | E-Perc MoonGolfRingShift 3 | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | E-Perc MoonGolfRingShift 4 | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | E-Perc MoonGolfRingShift 4 | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | E-Perc MoonGolfRingShift 4 | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Perc Buttoned | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Perc Buttoned | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Perc Buttoned | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | A-Shaker 1 | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | A-Shaker 1 | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | A-Shaker 1 | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Cabassa SP | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Cabassa SP | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Cabassa SP | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Shake-Cabasa Short | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Shake-Cabasa Short | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Shake-Cabasa Short | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 1 | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 1 | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 1 | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 12 | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 12 | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 12 | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 7 | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 7 | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 7 | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 8 | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 8 | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 8 | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 9 | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 9 | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 9 | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 10 | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 10 | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 10 | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 11 | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 11 | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 11 | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 13 | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 13 | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 13 | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 25 | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 25 | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 25 | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 28 | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 28 | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 28 | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 29 | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 29 | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 29 | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 24 | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 24 | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 24 | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 30 | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 30 | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 30 | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 27 | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 27 | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 27 | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 25 | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 25 | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 25 | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 18 | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 18 | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 18 | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 2 | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 2 | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 2 | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 14 | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 14 | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 14 | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 26 | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 26 | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 26 | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 15 | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 15 | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 15 | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 3 | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 3 | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 3 | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 16 | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 16 | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 16 | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 17 | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 17 | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 17 | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 18 | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 18 | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 18 | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 4 | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 4 | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 4 | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 19 | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 19 | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 19 | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 20 | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 20 | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 20 | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 21 | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 21 | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 21 | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 5 | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 5 | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 5 | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 6 | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 6 | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 6 | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 22 | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 22 | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 22 | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 23 | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 23 | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Chord Dub Chop 23 | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | A Palte Verb | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | A Palte Verb | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | A Palte Verb | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | A Palte Verb | Palte Verb | Filter Delay | Medium Hall | Compressor | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | A Palte Verb | Palte Verb | Filter Delay | Medium Hall | Compressor | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | A Palte Verb | Palte Verb | Filter Delay | Medium Hall | Compressor | Post Mixer", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Drum Effects | EQ Eight | Compressor | Auto Filter Legacy | Frequency Shifter | Saturator | Push Pack Compressor | EQ Eight | Delay | Glue Compressor | Limiter | Pre FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Drum Effects | EQ Eight | Compressor | Auto Filter Legacy | Frequency Shifter | Saturator | Push Pack Compressor | EQ Eight | Delay | Glue Compressor | Limiter | Post FX", ",", "64 Pads Dub Techno Kit | 64 Pads Dub Techno Kit | Drum Effects | EQ Eight | Compressor | Auto Filter Legacy | Frequency Shifter | Saturator | Push Pack Compressor | EQ Eight | Delay | Glue Compressor | Limiter | Post Mixer" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.0, 410.0, 80.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 13.0, 96.0, 20.0 ],
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
					"textcolor" : [ 0.882352941176471, 0.882352941176471, 0.882352941176471, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 0.0,
					"annotation" : "Select an item.",
					"bgcolor" : [ 0.188235294117647, 0.188235294117647, 0.188235294117647, 1.0 ],
					"border" : 1,
					"bordercolor" : [ 0.090196078431373, 0.090196078431373, 0.090196078431373, 1.0 ],
					"id" : "obj-28",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 560.0, 410.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 16.0, 96.0, 14.0 ],
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
					"annotation" : "Select an item.",
					"bgcolor" : [ 0.188235294117647, 0.188235294117647, 0.188235294117647, 1.0 ],
					"border" : 1,
					"bordercolor" : [ 0.090196078431373, 0.090196078431373, 0.090196078431373, 1.0 ],
					"id" : "obj-113",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 530.0, 410.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 1.0, 96.0, 14.0 ],
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
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-115", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-115", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-18", 0 ]
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
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 1 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 1 ],
					"order" : 1,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 1 ],
					"order" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
		"styles" : [ 			{
				"name" : "AudioStatus_Menu",
				"default" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.294118, 0.313726, 0.337255, 1 ],
						"color1" : [ 0.454902, 0.462745, 0.482353, 0.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "color"
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Audiomix",
				"default" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Default M4L",
				"default" : 				{
					"fontname" : [ "Arial Bold" ],
					"fontsize" : [ 11.0 ],
					"patchlinecolor" : [ 0.290196, 0.309804, 0.301961, 0.85 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Default M4L Poletti",
				"default" : 				{
					"fontname" : [ "Arial Bold" ],
					"fontsize" : [ 10.0 ],
					"patchlinecolor" : [ 0.290196, 0.309804, 0.301961, 0.85 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Default M4L-1",
				"default" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"fontface" : [ 1 ],
					"fontname" : [ "Arial" ],
					"fontsize" : [ 11.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Default Max7 Poletti",
				"default" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "M4L 10 Bold",
				"default" : 				{
					"fontface" : [ 1 ],
					"fontsize" : [ 10.0 ],
					"patchlinecolor" : [ 0.0, 0.0, 0.0, 0.25 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Max 12 Regular",
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Max 12 Regular-1",
				"default" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Max 12 Regular-1-1",
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Max 12 Regular-1-1-1",
				"default" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Max 12 Regular-1-1-1-1",
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Max 12 Regular-1-1-1-1-1",
				"default" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Max 12 Regular-1-1-1-2",
				"default" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Max 12 Regular-1-1-2",
				"default" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Max 12 Regular-1-1-3",
				"default" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Max 12 Regular-1-1-4",
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Max 12 Regular-1-2",
				"default" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Max 12 Regular-1-2-1",
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Max 12 Regular-1-2-2",
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Max 12 Regular-1-3",
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Max 12 Regular-1-4",
				"default" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Max 12 Regular-2",
				"default" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Max 12 Regular-3",
				"default" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Max 12 Regular-4",
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Max 12 Regular-4-1",
				"default" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Max 12 Regular-4-2",
				"default" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Max 12 Regular-5",
				"default" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Max 12 Regular-6",
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Max For Live",
				"default" : 				{
					"patchlinecolor" : [ 0.239216, 0.254902, 0.278431, 0.631373 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "stb001",
				"default" : 				{
					"fontface" : [ 1 ],
					"fontname" : [ "Arial Bold" ],
					"fontsize" : [ 10.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "tap",
				"default" : 				{
					"fontname" : [ "Lato Light" ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ],
		"patchlinecolor" : [ 0.239216, 0.254902, 0.278431, 0.631373 ],
		"saved_attribute_attributes" : 		{
			"default_plcolor" : 			{
				"expression" : ""
			}
,
			"patchlinecolor" : 			{
				"expression" : ""
			}

		}

	}

}
