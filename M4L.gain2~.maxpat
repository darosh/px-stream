{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 54.0, 44.0, 379.0, 319.0 ],
		"bglocked" : 0,
		"defrect" : [ 54.0, 44.0, 379.0, 319.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial Bold",
		"gridonopen" : 0,
		"gridsize" : [ 8.0, 8.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "R",
					"id" : "obj-17",
					"fontname" : "Arial Bold",
					"textcolor" : [ 0.3, 0.34, 0.4, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.3, 0.34, 0.4, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 91.0, 280.0, 19.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "L",
					"id" : "obj-18",
					"fontname" : "Arial Bold",
					"textcolor" : [ 0.3, 0.34, 0.4, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.3, 0.34, 0.4, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 51.0, 280.0, 19.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "R",
					"id" : "obj-15",
					"fontname" : "Arial Bold",
					"textcolor" : [ 0.3, 0.34, 0.4, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.3, 0.34, 0.4, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 91.0, 72.0, 19.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "L",
					"id" : "obj-14",
					"fontname" : "Arial Bold",
					"textcolor" : [ 0.3, 0.34, 0.4, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.3, 0.34, 0.4, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 51.0, 72.0, 19.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "*~",
					"id" : "obj-10",
					"fontname" : "Arial Bold",
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 72.0, 240.0, 32.5, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-12",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"numinlets" : 0,
					"patching_rect" : [ 72.0, 72.0, 18.0, 18.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-13",
					"numoutlets" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 72.0, 280.0, 18.0, 18.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Used in order to avoid audio clicks",
					"id" : "obj-9",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.101961, 0.121569, 0.172549, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 160.0, 216.0, 163.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "< Default ramp time is 50 ms",
					"id" : "obj-8",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.101961, 0.121569, 0.172549, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 192.0, 176.0, 138.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "< If input is a list, first element of the list is gain in dB, second element is ramp time in Max time value format(s). If input is an integer or a decimal value, the last ramp time received is used .",
					"linecount" : 4,
					"id" : "obj-7",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.101961, 0.121569, 0.172549, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 136.0, 72.0, 228.0, 52.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<-------- Convert dB gain to linear amplitude",
					"id" : "obj-6",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.101961, 0.121569, 0.172549, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 152.0, 152.0, 202.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dbtoa",
					"id" : "obj-5",
					"fontname" : "Arial Bold",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 112.0, 152.0, 38.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl slice 1",
					"id" : "obj-4",
					"fontname" : "Arial Bold",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 112.0, 128.0, 74.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl join 50.",
					"id" : "obj-3",
					"fontname" : "Arial Bold",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 112.0, 176.0, 74.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "< Amplify",
					"id" : "obj-1",
					"fontname" : "Arial Bold",
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.101961, 0.121569, 0.172549, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 112.0, 240.0, 55.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "line~",
					"id" : "obj-76",
					"fontname" : "Arial Bold",
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 112.0, 200.0, 34.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"prototypename" : "M4L.patcher-summary",
					"text" : "Scale a stereo signal",
					"id" : "obj-43",
					"fontname" : "Arial Bold Italic",
					"numoutlets" : 0,
					"fontsize" : 11.0,
					"frgb" : [ 0.101961, 0.121569, 0.172549, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 144.0, 14.0, 119.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"prototypename" : "M4L.subpatcher-title",
					"text" : "M4L.Gain2~",
					"id" : "obj-33",
					"fontname" : "Arial Bold Italic",
					"textcolor" : [ 0.3, 0.34, 0.4, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 18.0,
					"frgb" : [ 0.3, 0.34, 0.4, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 32.0, 8.0, 115.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "< Ramp signal generator",
					"id" : "obj-24",
					"fontname" : "Arial Bold",
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.101961, 0.121569, 0.172549, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 152.0, 200.0, 127.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Output signals",
					"id" : "obj-20",
					"fontname" : "Arial Bold",
					"textcolor" : [ 0.3, 0.34, 0.4, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.3, 0.34, 0.4, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 112.0, 280.0, 80.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Gain control in dBs (float, int, list)",
					"id" : "obj-16",
					"fontname" : "Arial Bold",
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.101961, 0.121569, 0.172549, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 112.0, 48.0, 171.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Input signals",
					"id" : "obj-11",
					"fontname" : "Arial Bold",
					"textcolor" : [ 0.3, 0.34, 0.4, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.3, 0.34, 0.4, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 32.0, 48.0, 72.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "*~",
					"id" : "obj-46",
					"fontname" : "Arial Bold",
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 32.0, 240.0, 32.5, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-38",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"numinlets" : 0,
					"patching_rect" : [ 32.0, 72.0, 18.0, 18.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-40",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"numinlets" : 0,
					"patching_rect" : [ 112.0, 72.0, 18.0, 18.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-41",
					"numoutlets" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 32.0, 280.0, 18.0, 18.0 ],
					"comment" : ""
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-76", 0 ],
					"destination" : [ "obj-10", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-76", 0 ],
					"destination" : [ "obj-46", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-3", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-76", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
