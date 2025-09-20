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
		"rect" : [ 133.0, 71.0, 567.0, 508.0 ],
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
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 888.0, 184.0, 54.0, 22.0 ],
					"text" : "deferlow"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 824.0, 184.0, 54.0, 22.0 ],
					"text" : "deferlow"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 760.0, 184.0, 54.0, 22.0 ],
					"text" : "deferlow"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 936.0, 272.0, 32.0, 22.0 ],
					"text" : "print"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 888.0, 216.0, 22.0, 22.0 ],
					"text" : "t 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 888.0, 152.0, 50.0, 22.0 ],
					"text" : "select 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 840.0, 56.0, 35.0, 22.0 ],
					"text" : "set 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 840.0, 16.0, 50.0, 22.0 ],
					"text" : "select 1"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.594473705410263, 0.720560630419913, 0.928309050695498, 1.0 ],
					"annotation_name" : "Show hue",
					"fontsize" : 7.0,
					"id" : "obj-21",
					"maxclass" : "live.text",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 840.0, 96.0, 44.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 96.0, 105.0, 32.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"activebgoncolor" : 						{
							"expression" : "themecolor.live_value_arc"
						}
,
						"valueof" : 						{
							"parameter_annotation_name" : "Show hue",
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Show hue",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "Show hue",
							"parameter_type" : 2
						}

					}
,
					"text" : "Hue",
					"texton" : "Hue",
					"varname" : "live.text[2]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 432.0, 256.0, 248.0, 35.0 ],
					"text" : "expr 0 + ($i1 == 1) * 0 + ($i1 == 2) * -200 + ($i1 == 3) * -400 + ($i1 == 0) * -600"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 432.0, 304.0, 64.0, 22.0 ],
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
					"patching_rect" : [ 432.0, 344.0, 163.0, 22.0 ],
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
					"patching_rect" : [ 432.0, 384.0, 67.0, 22.0 ],
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
					"patching_rect" : [ 824.0, 216.0, 22.0, 22.0 ],
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
					"patching_rect" : [ 760.0, 216.0, 22.0, 22.0 ],
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
					"patching_rect" : [ 824.0, 152.0, 50.0, 22.0 ],
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
					"patching_rect" : [ 760.0, 152.0, 50.0, 22.0 ],
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
					"patching_rect" : [ 696.0, 216.0, 22.0, 22.0 ],
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
					"patching_rect" : [ 696.0, 152.0, 50.0, 22.0 ],
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
						"rect" : [ 33.0, 82.0, 567.0, 498.0 ],
						"openinpresentation" : 1,
						"gridonopen" : 2,
						"gridsize" : [ 8.0, 8.0 ],
						"gridsnaponopen" : 2,
						"objectsnaponopen" : 0,
						"integercoordinates" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-94",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 336.0, 248.0, 30.0, 22.0 ],
									"text" : "0 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-60",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 184.0, 248.0, 30.0, 22.0 ],
									"text" : "0 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-59",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 200.0, 456.0, 30.0, 22.0 ],
									"text" : "0 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-58",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 360.0, 448.0, 30.0, 22.0 ],
									"text" : "0 0"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.262745098039216, 0.262745098039216, 0.262745098039216, 0.0 ],
									"activebgoncolor" : [ 0.901960784313726, 0.650980392156863, 0.050980392156863, 0.0 ],
									"activetextcolor" : [ 0.850980392156863, 0.850980392156863, 0.850980392156863, 0.0 ],
									"activetextoncolor" : [ 0.07843137254902, 0.07843137254902, 0.07843137254902, 0.0 ],
									"annotation_name" : "Reset shadow",
									"bgcolor" : [ 0.262745098039216, 0.262745098039216, 0.262745098039216, 0.0 ],
									"bgoncolor" : [ 0.576470588235294, 0.576470588235294, 0.576470588235294, 0.0 ],
									"bordercolor" : [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 0.0 ],
									"focusbordercolor" : [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
									"id" : "obj-56",
									"maxclass" : "live.text",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 360.0, 416.0, 44.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 0.0, 82.0, 60.0, 18.0 ],
									"saved_attribute_attributes" : 									{
										"activebgcolor" : 										{
											"expression" : ""
										}
,
										"activebgoncolor" : 										{
											"expression" : ""
										}
,
										"activetextcolor" : 										{
											"expression" : ""
										}
,
										"activetextoncolor" : 										{
											"expression" : ""
										}
,
										"bgcolor" : 										{
											"expression" : ""
										}
,
										"bgoncolor" : 										{
											"expression" : ""
										}
,
										"bordercolor" : 										{
											"expression" : ""
										}
,
										"focusbordercolor" : 										{
											"expression" : ""
										}
,
										"textcolor" : 										{
											"expression" : ""
										}
,
										"textoffcolor" : 										{
											"expression" : ""
										}
,
										"valueof" : 										{
											"parameter_annotation_name" : "Reset shadow",
											"parameter_enum" : [ "val1", "val2" ],
											"parameter_invisible" : 2,
											"parameter_longname" : "Reset shadow",
											"parameter_mmax" : 1,
											"parameter_modmode" : 0,
											"parameter_shortname" : "Reset shadow",
											"parameter_type" : 2
										}

									}
,
									"text" : "",
									"textcolor" : [ 0.219607843137255, 0.219607843137255, 0.219607843137255, 0.0 ],
									"textoffcolor" : [ 0.576470588235294, 0.576470588235294, 0.576470588235294, 0.0 ],
									"varname" : "live.text[3]"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.262745098039216, 0.262745098039216, 0.262745098039216, 0.0 ],
									"activebgoncolor" : [ 0.901960784313726, 0.650980392156863, 0.050980392156863, 0.0 ],
									"activetextcolor" : [ 0.850980392156863, 0.850980392156863, 0.850980392156863, 0.0 ],
									"activetextoncolor" : [ 0.07843137254902, 0.07843137254902, 0.07843137254902, 0.0 ],
									"annotation_name" : "Reset light",
									"bgcolor" : [ 0.262745098039216, 0.262745098039216, 0.262745098039216, 0.0 ],
									"bgoncolor" : [ 0.576470588235294, 0.576470588235294, 0.576470588235294, 0.0 ],
									"bordercolor" : [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 0.0 ],
									"focusbordercolor" : [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
									"id" : "obj-52",
									"maxclass" : "live.text",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 200.0, 416.0, 44.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 92.0, 0.0, 60.0, 18.0 ],
									"saved_attribute_attributes" : 									{
										"activebgcolor" : 										{
											"expression" : ""
										}
,
										"activebgoncolor" : 										{
											"expression" : ""
										}
,
										"activetextcolor" : 										{
											"expression" : ""
										}
,
										"activetextoncolor" : 										{
											"expression" : ""
										}
,
										"bgcolor" : 										{
											"expression" : ""
										}
,
										"bgoncolor" : 										{
											"expression" : ""
										}
,
										"bordercolor" : 										{
											"expression" : ""
										}
,
										"focusbordercolor" : 										{
											"expression" : ""
										}
,
										"textcolor" : 										{
											"expression" : ""
										}
,
										"textoffcolor" : 										{
											"expression" : ""
										}
,
										"valueof" : 										{
											"parameter_annotation_name" : "Reset light",
											"parameter_enum" : [ "val1", "val2" ],
											"parameter_invisible" : 2,
											"parameter_longname" : "Reset light",
											"parameter_mmax" : 1,
											"parameter_modmode" : 0,
											"parameter_shortname" : "Reset light",
											"parameter_type" : 2
										}

									}
,
									"text" : "",
									"textcolor" : [ 0.219607843137255, 0.219607843137255, 0.219607843137255, 0.0 ],
									"textoffcolor" : [ 0.576470588235294, 0.576470588235294, 0.576470588235294, 0.0 ],
									"varname" : "live.text[2]"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.262745098039216, 0.262745098039216, 0.262745098039216, 0.0 ],
									"activebgoncolor" : [ 0.901960784313726, 0.650980392156863, 0.050980392156863, 0.0 ],
									"activetextcolor" : [ 0.850980392156863, 0.850980392156863, 0.850980392156863, 0.0 ],
									"activetextoncolor" : [ 0.07843137254902, 0.07843137254902, 0.07843137254902, 0.0 ],
									"annotation_name" : "Reset global",
									"bgcolor" : [ 0.262745098039216, 0.262745098039216, 0.262745098039216, 0.0 ],
									"bgoncolor" : [ 0.576470588235294, 0.576470588235294, 0.576470588235294, 0.0 ],
									"bordercolor" : [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 0.0 ],
									"focusbordercolor" : [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
									"id" : "obj-51",
									"maxclass" : "live.text",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 336.0, 216.0, 44.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 92.0, 82.0, 60.0, 18.0 ],
									"saved_attribute_attributes" : 									{
										"activebgcolor" : 										{
											"expression" : ""
										}
,
										"activebgoncolor" : 										{
											"expression" : ""
										}
,
										"activetextcolor" : 										{
											"expression" : ""
										}
,
										"activetextoncolor" : 										{
											"expression" : ""
										}
,
										"bgcolor" : 										{
											"expression" : ""
										}
,
										"bgoncolor" : 										{
											"expression" : ""
										}
,
										"bordercolor" : 										{
											"expression" : ""
										}
,
										"focusbordercolor" : 										{
											"expression" : ""
										}
,
										"textcolor" : 										{
											"expression" : ""
										}
,
										"textoffcolor" : 										{
											"expression" : ""
										}
,
										"valueof" : 										{
											"parameter_annotation_name" : "Reset global",
											"parameter_enum" : [ "val1", "val2" ],
											"parameter_invisible" : 2,
											"parameter_longname" : "Reset global",
											"parameter_mmax" : 1,
											"parameter_modmode" : 0,
											"parameter_shortname" : "Reset global",
											"parameter_type" : 2
										}

									}
,
									"text" : "",
									"textcolor" : [ 0.219607843137255, 0.219607843137255, 0.219607843137255, 0.0 ],
									"textoffcolor" : [ 0.576470588235294, 0.576470588235294, 0.576470588235294, 0.0 ],
									"varname" : "live.text[1]"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.262745098039216, 0.262745098039216, 0.262745098039216, 0.0 ],
									"activebgoncolor" : [ 0.901960784313726, 0.650980392156863, 0.050980392156863, 0.0 ],
									"activetextcolor" : [ 0.850980392156863, 0.850980392156863, 0.850980392156863, 0.0 ],
									"activetextoncolor" : [ 0.07843137254902, 0.07843137254902, 0.07843137254902, 0.0 ],
									"annotation_name" : "Reset dark",
									"bgcolor" : [ 0.262745098039216, 0.262745098039216, 0.262745098039216, 0.0 ],
									"bgoncolor" : [ 0.576470588235294, 0.576470588235294, 0.576470588235294, 0.0 ],
									"bordercolor" : [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 0.0 ],
									"focusbordercolor" : [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
									"id" : "obj-7",
									"maxclass" : "live.text",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 184.0, 224.0, 44.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 0.0, 0.0, 60.0, 18.0 ],
									"saved_attribute_attributes" : 									{
										"activebgcolor" : 										{
											"expression" : ""
										}
,
										"activebgoncolor" : 										{
											"expression" : ""
										}
,
										"activetextcolor" : 										{
											"expression" : ""
										}
,
										"activetextoncolor" : 										{
											"expression" : ""
										}
,
										"bgcolor" : 										{
											"expression" : ""
										}
,
										"bgoncolor" : 										{
											"expression" : ""
										}
,
										"bordercolor" : 										{
											"expression" : ""
										}
,
										"focusbordercolor" : 										{
											"expression" : ""
										}
,
										"textcolor" : 										{
											"expression" : ""
										}
,
										"textoffcolor" : 										{
											"expression" : ""
										}
,
										"valueof" : 										{
											"parameter_annotation_name" : "Reset dark",
											"parameter_enum" : [ "val1", "val2" ],
											"parameter_invisible" : 2,
											"parameter_longname" : "Reset dark",
											"parameter_mmax" : 1,
											"parameter_modmode" : 0,
											"parameter_shortname" : "Reset dark",
											"parameter_type" : 2
										}

									}
,
									"text" : "",
									"textcolor" : [ 0.219607843137255, 0.219607843137255, 0.219607843137255, 0.0 ],
									"textoffcolor" : [ 0.576470588235294, 0.576470588235294, 0.576470588235294, 0.0 ],
									"varname" : "live.text"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-125",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1240.0, 1696.0, 151.0, 22.0 ],
									"text" : "prepend yellow_lum_offset"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-126",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1240.0, 1648.0, 141.0, 22.0 ],
									"text" : "prepend yellow_sat_mult"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-127",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1240.0, 1600.0, 145.0, 22.0 ],
									"text" : "prepend yellow_hue_shift"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-122",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1056.0, 1696.0, 164.0, 22.0 ],
									"text" : "prepend magenta_lum_offset"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-123",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1056.0, 1648.0, 155.0, 22.0 ],
									"text" : "prepend magenta_sat_mult"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-124",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1056.0, 1600.0, 158.0, 22.0 ],
									"text" : "prepend magenta_hue_shift"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-119",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 872.0, 1696.0, 143.0, 22.0 ],
									"text" : "prepend cyan_lum_offset"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-120",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 872.0, 1648.0, 133.0, 22.0 ],
									"text" : "prepend cyan_sat_mult"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-121",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 872.0, 1600.0, 137.0, 22.0 ],
									"text" : "prepend cyan_hue_shift"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-116",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 688.0, 1696.0, 140.0, 22.0 ],
									"text" : "prepend blue_lum_offset"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-117",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 688.0, 1648.0, 131.0, 22.0 ],
									"text" : "prepend blue_sat_mult"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-118",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 688.0, 1600.0, 134.0, 22.0 ],
									"text" : "prepend blue_hue_shift"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-113",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 464.0, 1696.0, 148.0, 22.0 ],
									"text" : "prepend green_lum_offset"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-114",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 464.0, 1648.0, 139.0, 22.0 ],
									"text" : "prepend green_sat_mult"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-115",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 464.0, 1600.0, 142.0, 22.0 ],
									"text" : "prepend green_hue_shift"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-110",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 288.0, 1696.0, 138.0, 22.0 ],
									"text" : "prepend redl_lum_offset"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-111",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 288.0, 1648.0, 125.0, 22.0 ],
									"text" : "prepend red_sat_mult"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-112",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 288.0, 1600.0, 129.0, 22.0 ],
									"text" : "prepend red_hue_shift"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-109",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 104.0, 1696.0, 150.0, 22.0 ],
									"text" : "prepend global_lum_offset"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-108",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 104.0, 1648.0, 140.0, 22.0 ],
									"text" : "prepend global_sat_mult"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-107",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 104.0, 1600.0, 143.0, 22.0 ],
									"text" : "prepend global_hue_shift"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-106",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 688.0, 1832.0, 42.0, 22.0 ],
									"text" : "s ---lift"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-101",
									"maxclass" : "live.comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 120.0, 1304.0, 150.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 0.0, 400.0, 48.0, 18.0 ],
									"text" : "Global",
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"annotation_name" : "Global Lum",
									"id" : "obj-102",
									"maxclass" : "live.slider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 160.0, 1448.0, 39.0, 95.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 24.0, 463.0, 18.0, 104.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_annotation_name" : "Global Lum",
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "Global Lum",
											"parameter_mmax" : 0.5,
											"parameter_mmin" : -0.5,
											"parameter_modmode" : 3,
											"parameter_shortname" : "Global Lum",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"showname" : 0,
									"varname" : "live.slider[31]"
								}

							}
, 							{
								"box" : 								{
									"annotation_name" : "Global Sat",
									"id" : "obj-103",
									"maxclass" : "live.slider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 104.0, 1448.0, 39.0, 95.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 0.0, 463.0, 18.0, 104.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_annotation_name" : "Global Sat",
											"parameter_initial" : [ 1 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "Global Sat",
											"parameter_mmax" : 3.0,
											"parameter_modmode" : 3,
											"parameter_shortname" : "Global Sat",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"showname" : 0,
									"varname" : "live.slider[32]"
								}

							}
, 							{
								"box" : 								{
									"annotation_name" : "Global Hue",
									"id" : "obj-104",
									"maxclass" : "live.slider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"orientation" : 1,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 112.0, 1392.0, 50.0, 31.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 0.0, 424.0, 50.0, 31.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_annotation_name" : "Global Hue",
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "Global Hue",
											"parameter_mmax" : 0.5,
											"parameter_mmin" : -0.5,
											"parameter_modmode" : 3,
											"parameter_shortname" : "Global Hue",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"showname" : 0,
									"varname" : "live.slider[33]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-105",
									"ignoreclick" : 1,
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "jit_matrix" ],
									"patching_rect" : [ 120.0, 1328.0, 100.0, 50.0 ],
									"pic" : "PX._color_line.svg",
									"presentation" : 1,
									"presentation_rect" : [ 6.0, 421.0, 38.0, 10.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-100",
									"ignoreclick" : 1,
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "jit_matrix" ],
									"patching_rect" : [ 1264.0, 1336.0, 100.0, 50.0 ],
									"pic" : "PX._color_line.svg",
									"presentation" : 1,
									"presentation_rect" : [ 294.0, 421.0, 38.0, 10.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-99",
									"ignoreclick" : 1,
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "jit_matrix" ],
									"patching_rect" : [ 1080.0, 1328.0, 100.0, 50.0 ],
									"pic" : "PX._color_line.svg",
									"presentation" : 1,
									"presentation_rect" : [ 246.0, 421.0, 38.0, 10.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-98",
									"ignoreclick" : 1,
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "jit_matrix" ],
									"patching_rect" : [ 896.0, 1328.0, 100.0, 50.0 ],
									"pic" : "PX._color_line.svg",
									"presentation" : 1,
									"presentation_rect" : [ 198.0, 421.0, 38.0, 10.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-97",
									"ignoreclick" : 1,
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "jit_matrix" ],
									"patching_rect" : [ 736.0, 1328.0, 100.0, 50.0 ],
									"pic" : "PX._color_line.svg",
									"presentation" : 1,
									"presentation_rect" : [ 150.0, 421.0, 38.0, 10.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-81",
									"maxclass" : "live.comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1272.0, 1304.0, 150.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 288.0, 400.0, 48.0, 18.0 ],
									"text" : "Yellow",
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-93",
									"ignoreclick" : 1,
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "jit_matrix" ],
									"patching_rect" : [ 504.0, 1328.0, 100.0, 50.0 ],
									"pic" : "PX._color_line.svg",
									"presentation" : 1,
									"presentation_rect" : [ 102.0, 421.0, 38.0, 10.0 ]
								}

							}
, 							{
								"box" : 								{
									"annotation_name" : "Y Lum",
									"id" : "obj-82",
									"maxclass" : "live.slider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1312.0, 1432.0, 39.0, 95.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 312.0, 463.0, 18.0, 104.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_annotation_name" : "Y Lum",
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "Y Lum",
											"parameter_mmax" : 0.5,
											"parameter_mmin" : -0.5,
											"parameter_modmode" : 3,
											"parameter_shortname" : "Y Lum",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"showname" : 0,
									"varname" : "live.slider[28]"
								}

							}
, 							{
								"box" : 								{
									"annotation_name" : "Y Sat",
									"id" : "obj-83",
									"maxclass" : "live.slider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1256.0, 1440.0, 39.0, 95.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 288.0, 463.0, 18.0, 104.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_annotation_name" : "Y Sat",
											"parameter_initial" : [ 1 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "Y Sat",
											"parameter_mmax" : 3.0,
											"parameter_modmode" : 3,
											"parameter_shortname" : "Y Sat",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"showname" : 0,
									"varname" : "live.slider[29]"
								}

							}
, 							{
								"box" : 								{
									"annotation_name" : "Y Hue",
									"id" : "obj-91",
									"maxclass" : "live.slider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"orientation" : 1,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1272.0, 1384.0, 50.0, 31.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 288.0, 424.0, 50.0, 31.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_annotation_name" : "Y Hue",
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "Y Hue",
											"parameter_mmax" : 0.5,
											"parameter_mmin" : -0.5,
											"parameter_modmode" : 3,
											"parameter_shortname" : "Y Hue",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"showname" : 0,
									"varname" : "live.slider[30]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-77",
									"maxclass" : "live.comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1080.0, 1296.0, 150.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 240.0, 400.0, 48.0, 18.0 ],
									"text" : "Magenta",
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"annotation_name" : "M Lum",
									"id" : "obj-78",
									"maxclass" : "live.slider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1120.0, 1440.0, 39.0, 95.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 264.0, 463.0, 18.0, 104.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_annotation_name" : "M Lum",
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "M Lum",
											"parameter_mmax" : 0.5,
											"parameter_mmin" : -0.5,
											"parameter_modmode" : 3,
											"parameter_shortname" : "M Lum",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"showname" : 0,
									"varname" : "live.slider[25]"
								}

							}
, 							{
								"box" : 								{
									"annotation_name" : "M Sat",
									"id" : "obj-79",
									"maxclass" : "live.slider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1064.0, 1440.0, 39.0, 95.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 240.0, 463.0, 18.0, 104.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_annotation_name" : "M Sat",
											"parameter_initial" : [ 1 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "M Sat",
											"parameter_mmax" : 3.0,
											"parameter_modmode" : 3,
											"parameter_shortname" : "M Sat",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"showname" : 0,
									"varname" : "live.slider[26]"
								}

							}
, 							{
								"box" : 								{
									"annotation_name" : "M Hue",
									"id" : "obj-80",
									"maxclass" : "live.slider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"orientation" : 1,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1080.0, 1384.0, 50.0, 31.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 240.0, 424.0, 50.0, 31.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_annotation_name" : "M Hue",
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "M Hue",
											"parameter_mmax" : 0.5,
											"parameter_mmin" : -0.5,
											"parameter_modmode" : 3,
											"parameter_shortname" : "M Hue",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"showname" : 0,
									"varname" : "live.slider[27]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-69",
									"maxclass" : "live.comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 904.0, 1296.0, 150.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 192.0, 400.0, 48.0, 18.0 ],
									"text" : "Cyan",
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"annotation_name" : "C Lum",
									"id" : "obj-72",
									"maxclass" : "live.slider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 928.0, 1440.0, 39.0, 95.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 216.0, 463.0, 18.0, 104.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_annotation_name" : "C Lum",
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "C Lum",
											"parameter_mmax" : 0.5,
											"parameter_mmin" : -0.5,
											"parameter_modmode" : 3,
											"parameter_shortname" : "C Lum",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"showname" : 0,
									"varname" : "live.slider[22]"
								}

							}
, 							{
								"box" : 								{
									"annotation_name" : "C Sat",
									"id" : "obj-75",
									"maxclass" : "live.slider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 872.0, 1440.0, 39.0, 95.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 192.0, 463.0, 18.0, 104.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_annotation_name" : "C Sat",
											"parameter_initial" : [ 1 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "C Sat",
											"parameter_mmax" : 3.0,
											"parameter_modmode" : 3,
											"parameter_shortname" : "C Sat",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"showname" : 0,
									"varname" : "live.slider[23]"
								}

							}
, 							{
								"box" : 								{
									"annotation_name" : "C Hue",
									"id" : "obj-76",
									"maxclass" : "live.slider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"orientation" : 1,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 896.0, 1384.0, 50.0, 31.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 192.0, 424.0, 50.0, 31.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_annotation_name" : "C Hue",
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "C Hue",
											"parameter_mmax" : 0.5,
											"parameter_mmin" : -0.5,
											"parameter_modmode" : 3,
											"parameter_shortname" : "C Hue",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"showname" : 0,
									"varname" : "live.slider[24]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-65",
									"maxclass" : "live.comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 736.0, 1288.0, 150.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 144.0, 400.0, 48.0, 18.0 ],
									"text" : "Blue",
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"annotation_name" : "B Lum",
									"id" : "obj-66",
									"maxclass" : "live.slider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 776.0, 1440.0, 39.0, 95.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 168.0, 463.0, 18.0, 104.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_annotation_name" : "B Lum",
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "B Lum",
											"parameter_mmax" : 0.5,
											"parameter_mmin" : -0.5,
											"parameter_modmode" : 3,
											"parameter_shortname" : "B Lum",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"showname" : 0,
									"varname" : "live.slider[19]"
								}

							}
, 							{
								"box" : 								{
									"annotation_name" : "B Sat",
									"id" : "obj-67",
									"maxclass" : "live.slider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 720.0, 1440.0, 39.0, 95.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 144.0, 463.0, 18.0, 104.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_annotation_name" : "B Sat",
											"parameter_initial" : [ 1 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "B Sat",
											"parameter_mmax" : 3.0,
											"parameter_modmode" : 3,
											"parameter_shortname" : "B Sat",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"showname" : 0,
									"varname" : "live.slider[20]"
								}

							}
, 							{
								"box" : 								{
									"annotation_name" : "B Hue",
									"id" : "obj-68",
									"maxclass" : "live.slider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"orientation" : 1,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 736.0, 1392.0, 50.0, 31.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 144.0, 424.0, 50.0, 31.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_annotation_name" : "B Hue",
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "B Hue",
											"parameter_mmax" : 0.5,
											"parameter_mmin" : -0.5,
											"parameter_modmode" : 3,
											"parameter_shortname" : "B Hue",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"showname" : 0,
									"varname" : "live.slider[21]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-61",
									"maxclass" : "live.comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 504.0, 1304.0, 150.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 96.0, 400.0, 48.0, 18.0 ],
									"text" : "Green",
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"annotation_name" : "G Lum",
									"id" : "obj-62",
									"maxclass" : "live.slider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 536.0, 1440.0, 39.0, 95.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 120.0, 463.0, 18.0, 104.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_annotation_name" : "G Lum",
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "G Lum",
											"parameter_mmax" : 0.5,
											"parameter_mmin" : -0.5,
											"parameter_modmode" : 3,
											"parameter_shortname" : "G Lum",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"showname" : 0,
									"varname" : "live.slider[16]"
								}

							}
, 							{
								"box" : 								{
									"annotation_name" : "G Sat",
									"id" : "obj-63",
									"maxclass" : "live.slider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 480.0, 1440.0, 39.0, 95.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 96.0, 463.0, 18.0, 104.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_annotation_name" : "G Sat",
											"parameter_initial" : [ 1 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "G Sat",
											"parameter_mmax" : 3.0,
											"parameter_modmode" : 3,
											"parameter_shortname" : "G Sat",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"showname" : 0,
									"varname" : "live.slider[17]"
								}

							}
, 							{
								"box" : 								{
									"annotation_name" : "G Hue",
									"id" : "obj-64",
									"maxclass" : "live.slider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"orientation" : 1,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 504.0, 1392.0, 50.0, 31.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 96.0, 424.0, 50.0, 31.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_annotation_name" : "G Hue",
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "G Hue",
											"parameter_mmax" : 0.5,
											"parameter_mmin" : -0.5,
											"parameter_modmode" : 3,
											"parameter_shortname" : "G Hue",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"showname" : 0,
									"varname" : "live.slider[18]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-54",
									"maxclass" : "live.comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 296.0, 1312.0, 150.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 48.0, 400.0, 48.0, 18.0 ],
									"text" : "Red",
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"annotation_name" : "R Lum",
									"id" : "obj-50",
									"maxclass" : "live.slider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 344.0, 1432.0, 39.0, 95.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 72.0, 463.0, 18.0, 104.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_annotation_name" : "R Lum",
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "R Lum",
											"parameter_mmax" : 0.5,
											"parameter_mmin" : -0.5,
											"parameter_modmode" : 3,
											"parameter_shortname" : "R Lum",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"showname" : 0,
									"varname" : "live.slider[15]"
								}

							}
, 							{
								"box" : 								{
									"annotation_name" : "R Sat",
									"id" : "obj-46",
									"maxclass" : "live.slider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 288.0, 1432.0, 39.0, 95.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 48.0, 463.0, 18.0, 104.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_annotation_name" : "R Sat",
											"parameter_initial" : [ 1 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "R Sat",
											"parameter_mmax" : 3.0,
											"parameter_modmode" : 3,
											"parameter_shortname" : "R Sat",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"showname" : 0,
									"varname" : "live.slider[14]"
								}

							}
, 							{
								"box" : 								{
									"annotation_name" : "R Hue",
									"id" : "obj-26",
									"maxclass" : "live.slider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"orientation" : 1,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 296.0, 1376.0, 50.0, 31.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 48.0, 424.0, 50.0, 31.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_annotation_name" : "R Hue",
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "R Hue",
											"parameter_mmax" : 0.5,
											"parameter_mmin" : -0.5,
											"parameter_modmode" : 3,
											"parameter_shortname" : "R Hue",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"showname" : 0,
									"varname" : "live.slider[13]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 280.0, 912.0, 90.0, 22.0 ],
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
									"patching_rect" : [ 808.0, 576.0, 105.0, 22.0 ],
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
									"patching_rect" : [ 808.0, 616.0, 97.0, 22.0 ],
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
									"patching_rect" : [ 808.0, 536.0, 92.0, 22.0 ],
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
									"patching_rect" : [ 680.0, 576.0, 133.0, 22.0 ],
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
									"patching_rect" : [ 680.0, 616.0, 125.0, 22.0 ],
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
									"patching_rect" : [ 680.0, 536.0, 120.0, 22.0 ],
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
									"annotation_name" : "B Lift",
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
											"parameter_annotation_name" : "B Lift",
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "B Lift",
											"parameter_mmax" : 1.0,
											"parameter_mmin" : -1.0,
											"parameter_modmode" : 3,
											"parameter_shortname" : "B Lift",
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
									"annotation_name" : "G Lift",
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
											"parameter_annotation_name" : "G Lift",
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "G Lift",
											"parameter_mmax" : 1.0,
											"parameter_mmin" : -1.0,
											"parameter_modmode" : 3,
											"parameter_shortname" : "G Lift",
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
									"annotation_name" : "R Lift",
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
											"parameter_annotation_name" : "R Lift",
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "R Lift",
											"parameter_mmax" : 1.0,
											"parameter_mmin" : -1.0,
											"parameter_modmode" : 3,
											"parameter_shortname" : "R Lift",
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
									"annotation_name" : "B Gain",
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
											"parameter_annotation_name" : "B Gain",
											"parameter_initial" : [ 1 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "B Gain",
											"parameter_mmax" : 2.0,
											"parameter_modmode" : 3,
											"parameter_shortname" : "B Gain",
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
									"annotation_name" : "G Gamma",
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
											"parameter_annotation_name" : "G Gamma",
											"parameter_initial" : [ 1 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "G Gamma",
											"parameter_mmax" : 2.0,
											"parameter_modmode" : 3,
											"parameter_shortname" : "G Gamma",
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
									"annotation_name" : "R Gamma",
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
											"parameter_annotation_name" : "R Gamma",
											"parameter_initial" : [ 1 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "R Gamma",
											"parameter_mmax" : 2.0,
											"parameter_modmode" : 3,
											"parameter_shortname" : "R Gamma",
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
									"annotation_name" : "B Gamma",
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
											"parameter_annotation_name" : "B Gamma",
											"parameter_initial" : [ 1 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "B Gamma",
											"parameter_mmax" : 2.0,
											"parameter_modmode" : 3,
											"parameter_shortname" : "B Gamma",
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
									"annotation_name" : "G Gain",
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
											"parameter_annotation_name" : "G Gain",
											"parameter_initial" : [ 1 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "G Gain",
											"parameter_mmax" : 2.0,
											"parameter_modmode" : 3,
											"parameter_shortname" : "G Gain",
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
									"annotation_name" : "R Gain",
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
											"parameter_annotation_name" : "R Gain",
											"parameter_initial" : [ 1 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "R Gain",
											"parameter_mmax" : 2.0,
											"parameter_modmode" : 3,
											"parameter_shortname" : "R Gain",
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
									"patching_rect" : [ 552.0, 816.0, 161.0, 22.0 ],
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
									"patching_rect" : [ 384.0, 816.0, 143.0, 22.0 ],
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
									"patching_rect" : [ 216.0, 816.0, 141.0, 22.0 ],
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
										"gridsize" : [ 8.0, 8.0 ],
										"gridsnaponopen" : 2,
										"integercoordinates" : 1,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-52",
													"maxclass" : "newobj",
													"numinlets" : 6,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 168.0, 104.0, 125.0, 22.0 ],
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
													"patching_rect" : [ 48.0, 136.0, 125.0, 22.0 ],
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
													"patching_rect" : [ 280.0, 184.0, 153.0, 22.0 ],
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
													"patching_rect" : [ 88.0, 184.0, 167.0, 22.0 ],
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
													"patching_rect" : [ 48.0, 40.0, 30.0, 30.0 ]
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
													"patching_rect" : [ 168.0, 40.0, 30.0, 30.0 ]
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
													"patching_rect" : [ 88.0, 264.0, 30.0, 30.0 ]
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
													"patching_rect" : [ 280.0, 264.0, 30.0, 30.0 ]
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
									"patching_rect" : [ 128.0, 536.0, 152.0, 22.0 ],
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
										"gridsize" : [ 8.0, 8.0 ],
										"gridsnaponopen" : 2,
										"integercoordinates" : 1,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-52",
													"maxclass" : "newobj",
													"numinlets" : 6,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 168.0, 104.0, 125.0, 22.0 ],
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
													"patching_rect" : [ 48.0, 136.0, 125.0, 22.0 ],
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
													"patching_rect" : [ 280.0, 184.0, 153.0, 22.0 ],
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
													"patching_rect" : [ 88.0, 184.0, 167.0, 22.0 ],
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
													"patching_rect" : [ 48.0, 40.0, 30.0, 30.0 ]
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
													"patching_rect" : [ 168.0, 40.0, 30.0, 30.0 ]
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
													"patching_rect" : [ 88.0, 264.0, 30.0, 30.0 ]
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
													"patching_rect" : [ 280.0, 264.0, 30.0, 30.0 ]
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
									"patching_rect" : [ 272.0, 512.0, 152.0, 22.0 ],
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
										"gridsize" : [ 8.0, 8.0 ],
										"gridsnaponopen" : 2,
										"integercoordinates" : 1,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-52",
													"maxclass" : "newobj",
													"numinlets" : 6,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 168.0, 104.0, 125.0, 22.0 ],
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
													"patching_rect" : [ 48.0, 136.0, 125.0, 22.0 ],
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
													"patching_rect" : [ 280.0, 184.0, 153.0, 22.0 ],
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
													"patching_rect" : [ 88.0, 184.0, 167.0, 22.0 ],
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
													"patching_rect" : [ 48.0, 40.0, 30.0, 30.0 ]
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
													"patching_rect" : [ 168.0, 40.0, 30.0, 30.0 ]
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
													"patching_rect" : [ 88.0, 264.0, 30.0, 30.0 ]
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
													"patching_rect" : [ 280.0, 264.0, 30.0, 30.0 ]
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
									"patching_rect" : [ 120.0, 312.0, 152.0, 22.0 ],
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
										"gridsize" : [ 8.0, 8.0 ],
										"gridsnaponopen" : 2,
										"integercoordinates" : 1,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-52",
													"maxclass" : "newobj",
													"numinlets" : 6,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 168.0, 104.0, 125.0, 22.0 ],
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
													"patching_rect" : [ 48.0, 136.0, 125.0, 22.0 ],
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
													"patching_rect" : [ 280.0, 184.0, 153.0, 22.0 ],
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
													"patching_rect" : [ 88.0, 184.0, 167.0, 22.0 ],
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
													"patching_rect" : [ 48.0, 40.0, 30.0, 30.0 ]
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
													"patching_rect" : [ 168.0, 40.0, 30.0, 30.0 ]
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
													"patching_rect" : [ 88.0, 264.0, 30.0, 30.0 ]
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
													"patching_rect" : [ 280.0, 264.0, 30.0, 30.0 ]
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
									"patching_rect" : [ 280.0, 304.0, 152.0, 22.0 ],
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
									"patching_rect" : [ 280.0, 592.0, 157.0, 22.0 ],
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
									"patching_rect" : [ 280.0, 552.0, 161.0, 22.0 ],
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
									"patching_rect" : [ 120.0, 608.0, 138.0, 22.0 ],
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
									"patching_rect" : [ 120.0, 568.0, 142.0, 22.0 ],
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
									"patching_rect" : [ 48.0, 816.0, 151.0, 22.0 ],
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
									"patching_rect" : [ 264.0, 376.0, 148.0, 22.0 ],
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
									"patching_rect" : [ 280.0, 352.0, 152.0, 22.0 ],
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
									"patching_rect" : [ 120.0, 392.0, 139.0, 22.0 ],
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
									"patching_rect" : [ 120.0, 352.0, 143.0, 22.0 ],
									"text" : "prepend param dark_hue"
								}

							}
, 							{
								"box" : 								{
									"annotation_name" : "Shadow luminance",
									"id" : "obj-43",
									"maxclass" : "live.slider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 528.0, 680.0, 39.0, 95.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 64.0, 96.0, 18.0, 68.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_annotation_name" : "Shadow luminance",
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "Shadow luminance",
											"parameter_mmax" : 1.0,
											"parameter_mmin" : -1.0,
											"parameter_modmode" : 3,
											"parameter_shortname" : "Shadow luminance",
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
									"annotation_name" : "Dark luminance",
									"id" : "obj-44",
									"maxclass" : "live.slider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 368.0, 688.0, 39.0, 95.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 64.0, 15.0, 18.0, 68.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_annotation_name" : "Dark luminance",
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "Dark luminance",
											"parameter_mmax" : 1.0,
											"parameter_mmin" : -1.0,
											"parameter_modmode" : 3,
											"parameter_shortname" : "Dark luminance",
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
									"annotation_name" : "Global luminance",
									"id" : "obj-41",
									"maxclass" : "live.slider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 48.0, 696.0, 39.0, 95.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 156.0, 97.0, 18.0, 68.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_annotation_name" : "Global luminance",
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "Global luminance",
											"parameter_mmax" : 1.0,
											"parameter_mmin" : -1.0,
											"parameter_modmode" : 3,
											"parameter_shortname" : "Global luminance",
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
									"patching_rect" : [ 280.0, 216.0, 56.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 92.0, 82.0, 60.0, 18.0 ],
									"text" : "Global",
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"annotation" : "Click the label for reset to default value.",
									"annotation_name" : "Global",
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
									"patching_rect" : [ 280.0, 248.0, 48.0, 32.0 ],
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
											"parameter_annotation_name" : "Global",
											"parameter_info" : "Click the label for reset to default value.",
											"parameter_initial" : [ -1, -1 ],
											"parameter_initial_enable" : 1,
											"parameter_invisible" : 1,
											"parameter_longname" : "Global",
											"parameter_modmode" : 0,
											"parameter_shortname" : "Global",
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
									"patching_rect" : [ 504.0, 168.0, 100.0, 50.0 ],
									"pic" : "Macintosh HD:/Users/jan/Documents/GitHub/px-stream/devices/PX._color_wheel_cut.svg",
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
									"patching_rect" : [ 128.0, 416.0, 72.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 92.0, 0.0, 60.0, 18.0 ],
									"text" : "Light",
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"annotation" : "Click the label for reset to default value.",
									"annotation_name" : "Light",
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
									"patching_rect" : [ 128.0, 456.0, 56.0, 48.0 ],
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
											"parameter_annotation_name" : "Light",
											"parameter_info" : "Click the label for reset to default value.",
											"parameter_initial" : [ -1, -1 ],
											"parameter_initial_enable" : 1,
											"parameter_invisible" : 1,
											"parameter_longname" : "Light",
											"parameter_modmode" : 0,
											"parameter_shortname" : "Light",
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
									"patching_rect" : [ 392.0, 168.0, 100.0, 50.0 ],
									"pic" : "Macintosh HD:/Users/jan/Documents/GitHub/px-stream/devices/PX._color_wheel_cut.svg",
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
									"patching_rect" : [ 288.0, 416.0, 64.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 0.0, 82.0, 60.0, 18.0 ],
									"text" : "Shadow",
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"annotation" : "Click the label for reset to default value.",
									"annotation_name" : "Shadow",
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
									"patching_rect" : [ 288.0, 448.0, 48.0, 48.0 ],
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
											"parameter_annotation_name" : "Shadow",
											"parameter_info" : "Click the label for reset to default value.",
											"parameter_initial" : [ -1, -1 ],
											"parameter_initial_enable" : 1,
											"parameter_invisible" : 1,
											"parameter_longname" : "Shadow",
											"parameter_modmode" : 0,
											"parameter_shortname" : "Shadow",
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
									"patching_rect" : [ 504.0, 104.0, 100.0, 50.0 ],
									"pic" : "Macintosh HD:/Users/jan/Documents/GitHub/px-stream/devices/PX._color_wheel_cut.svg",
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
									"patching_rect" : [ 120.0, 224.0, 56.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 0.0, 0.0, 60.0, 18.0 ],
									"text" : "Dark",
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"annotation" : "Click the label for reset to default value.",
									"annotation_name" : "Dark",
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
									"patching_rect" : [ 120.0, 248.0, 56.0, 40.0 ],
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
											"parameter_annotation_name" : "Dark",
											"parameter_info" : "Click the label for reset to default value.",
											"parameter_initial" : [ -1, -1 ],
											"parameter_initial_enable" : 1,
											"parameter_invisible" : 1,
											"parameter_longname" : "Dark",
											"parameter_modmode" : 0,
											"parameter_shortname" : "Dark",
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
									"patching_rect" : [ 392.0, 104.0, 100.0, 50.0 ],
									"pic" : "Macintosh HD:/Users/jan/Documents/GitHub/px-stream/devices/PX._color_wheel_cut.svg",
									"presentation" : 1,
									"presentation_rect" : [ 0.0, 18.0, 60.0, 60.0 ]
								}

							}
, 							{
								"box" : 								{
									"annotation_name" : "Light luminance",
									"id" : "obj-38",
									"maxclass" : "live.slider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 184.0, 688.0, 39.0, 95.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 156.0, 15.0, 18.0, 68.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_annotation_name" : "Light luminance",
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_longname" : "Light luminance",
											"parameter_mmax" : 1.0,
											"parameter_mmin" : -1.0,
											"parameter_modmode" : 3,
											"parameter_shortname" : "Light luminance",
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
									"patching_rect" : [ 224.0, 896.0, 30.0, 30.0 ]
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
									"patching_rect" : [ 512.0, 408.0, 34.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 0.0, 224.0, 16.0, 17.0 ],
									"text" : "R",
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-92",
									"ignoreclick" : 1,
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "jit_matrix" ],
									"patching_rect" : [ 304.0, 1328.0, 100.0, 50.0 ],
									"pic" : "PX._color_line.svg",
									"presentation" : 1,
									"presentation_rect" : [ 54.0, 421.0, 38.0, 10.0 ]
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
									"destination" : [ "obj-109", 0 ],
									"source" : [ "obj-102", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-108", 0 ],
									"source" : [ "obj-103", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-107", 0 ],
									"source" : [ "obj-104", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-106", 0 ],
									"source" : [ "obj-107", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-106", 0 ],
									"source" : [ "obj-108", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-106", 0 ],
									"source" : [ "obj-109", 0 ]
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
									"destination" : [ "obj-106", 0 ],
									"source" : [ "obj-110", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-106", 0 ],
									"source" : [ "obj-111", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-106", 0 ],
									"source" : [ "obj-112", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-106", 0 ],
									"source" : [ "obj-113", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-106", 0 ],
									"source" : [ "obj-114", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-106", 0 ],
									"source" : [ "obj-115", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-106", 0 ],
									"source" : [ "obj-116", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-106", 0 ],
									"source" : [ "obj-117", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-106", 0 ],
									"source" : [ "obj-118", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-106", 0 ],
									"source" : [ "obj-119", 0 ]
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
									"destination" : [ "obj-106", 0 ],
									"source" : [ "obj-120", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-106", 0 ],
									"source" : [ "obj-121", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-106", 0 ],
									"source" : [ "obj-122", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-106", 0 ],
									"source" : [ "obj-123", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-106", 0 ],
									"source" : [ "obj-124", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-106", 0 ],
									"source" : [ "obj-125", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-106", 0 ],
									"source" : [ "obj-126", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-106", 0 ],
									"source" : [ "obj-127", 0 ]
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
									"destination" : [ "obj-112", 0 ],
									"source" : [ "obj-26", 0 ]
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
									"destination" : [ "obj-111", 0 ],
									"source" : [ "obj-46", 0 ]
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
									"destination" : [ "obj-110", 0 ],
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-94", 0 ],
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 0 ],
									"source" : [ "obj-52", 0 ]
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
									"destination" : [ "obj-58", 0 ],
									"source" : [ "obj-56", 0 ]
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
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-59", 0 ]
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
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-113", 0 ],
									"source" : [ "obj-62", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-114", 0 ],
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-115", 0 ],
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-116", 0 ],
									"source" : [ "obj-66", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-117", 0 ],
									"source" : [ "obj-67", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-118", 0 ],
									"source" : [ "obj-68", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-60", 0 ],
									"source" : [ "obj-7", 0 ]
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
									"destination" : [ "obj-119", 0 ],
									"source" : [ "obj-72", 0 ]
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
									"destination" : [ "obj-120", 0 ],
									"source" : [ "obj-75", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-121", 0 ],
									"source" : [ "obj-76", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-122", 0 ],
									"source" : [ "obj-78", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-123", 0 ],
									"source" : [ "obj-79", 0 ]
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
									"destination" : [ "obj-124", 0 ],
									"source" : [ "obj-80", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-125", 0 ],
									"source" : [ "obj-82", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-126", 0 ],
									"source" : [ "obj-83", 0 ]
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
, 							{
								"patchline" : 								{
									"destination" : [ "obj-127", 0 ],
									"source" : [ "obj-91", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-94", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 648.0, 432.0, 272.0, 616.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 140.0, 0.0, 340.0, 168.0 ],
					"varname" : "colorTab",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.594473705410263, 0.720560630419913, 0.928309050695498, 1.0 ],
					"annotation_name" : "Show gamma",
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
							"parameter_annotation_name" : "Show gamma",
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Show gamma",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "Show gamma",
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
					"patching_rect" : [ 184.0, 400.0, 136.0, 22.0 ],
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
					"patching_rect" : [ 160.0, 320.0, 149.0, 22.0 ],
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
					"patching_rect" : [ 8.0, 512.0, 146.0, 22.0 ],
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
					"patching_rect" : [ 696.0, 304.0, 344.0, 22.0 ],
					"text" : "expr 130 + ($i1 == 1) * 186 + ($i1 == 2) * 172 + ($i1 == 3) * 348"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.594473705410263, 0.720560630419913, 0.928309050695498, 1.0 ],
					"annotation_name" : "Show color",
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
							"parameter_annotation_name" : "Show color",
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_initial" : [ 1 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Show color",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "Show color",
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
					"annotation_name" : "Tint",
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
							"parameter_annotation_name" : "Tint",
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Tint",
							"parameter_mmax" : 100.0,
							"parameter_mmin" : -100.0,
							"parameter_modmode" : 3,
							"parameter_shortname" : "Tint",
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
					"annotation_name" : "Exposure",
					"appearance" : 1,
					"id" : "obj-30",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 216.0, 208.0, 25.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 3.0, 116.0, 25.0, 23.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_annotation_name" : "Exposure",
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Exposure",
							"parameter_mmax" : 3.0,
							"parameter_mmin" : -3.0,
							"parameter_modmode" : 3,
							"parameter_shortname" : "Exposure",
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
					"annotation_name" : "Temperature",
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
							"parameter_annotation_name" : "Temperature",
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Temperature",
							"parameter_mmax" : 100.0,
							"parameter_mmin" : -100.0,
							"parameter_modmode" : 3,
							"parameter_shortname" : "Temperature",
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
					"annotation_name" : "Contrast",
					"appearance" : 1,
					"id" : "obj-28",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 232.0, 368.0, 25.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 3.0, 68.0, 25.0, 23.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_annotation_name" : "Contrast",
							"parameter_initial" : [ 1 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Contrast",
							"parameter_mmax" : 3.0,
							"parameter_modmode" : 3,
							"parameter_shortname" : "Contrast",
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
					"annotation_name" : "Saturation",
					"appearance" : 1,
					"id" : "obj-26",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 56.0, 480.0, 25.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 67.0, 20.0, 25.0, 23.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_annotation_name" : "Saturation",
							"parameter_initial" : [ 1 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Saturation",
							"parameter_mmax" : 2.0,
							"parameter_modmode" : 3,
							"parameter_shortname" : "Saturation",
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
					"annotation_name" : "Brightness",
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
							"parameter_annotation_name" : "Brightness",
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Brightness",
							"parameter_mmax" : 1.0,
							"parameter_mmin" : -1.0,
							"parameter_modmode" : 3,
							"parameter_shortname" : "Brightness",
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
					"presentation_rect" : [ 64.0, 96.0, 32.0, 18.0 ],
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
					"patching_rect" : [ 696.0, 344.0, 69.0, 22.0 ],
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
					"patching_rect" : [ 696.0, 384.0, 83.0, 22.0 ],
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
					"patching_rect" : [ 184.0, 1144.0, 60.0, 22.0 ],
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
					"patching_rect" : [ 184.0, 1120.0, 46.0, 22.0 ],
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
					"patching_rect" : [ 280.0, 584.0, 251.0, 22.0 ],
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
					"patching_rect" : [ 16.0, 1216.0, 239.0, 32.0 ],
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
					"patching_rect" : [ 288.0, 1168.0, 80.0, 22.0 ],
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
					"patching_rect" : [ 264.0, 1216.0, 240.0, 32.0 ],
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
					"patching_rect" : [ 16.0, 1072.0, 54.0, 22.0 ],
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
					"destination" : [ "obj-20", 0 ],
					"order" : 1,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"order" : 3,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"order" : 2,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"order" : 0,
					"source" : [ "obj-21", 0 ]
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
					"destination" : [ "obj-53", 0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"order" : 1,
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"order" : 3,
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"order" : 2,
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"order" : 0,
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
					"order" : 3,
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"order" : 2,
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"order" : 1,
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
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
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-44", 0 ]
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
					"destination" : [ "obj-44", 0 ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"order" : 0,
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"order" : 1,
					"source" : [ "obj-49", 0 ]
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
					"destination" : [ "obj-35", 0 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"source" : [ "obj-55", 0 ]
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
			"obj-19" : [ "Brightness", "Brightness", 0 ],
			"obj-21" : [ "Show hue", "Show hue", 0 ],
			"obj-26" : [ "Saturation", "Saturation", 0 ],
			"obj-28" : [ "Contrast", "Contrast", 0 ],
			"obj-29" : [ "Temperature", "Temperature", 0 ],
			"obj-30" : [ "Exposure", "Exposure", 0 ],
			"obj-31" : [ "Tint", "Tint", 0 ],
			"obj-34" : [ "Show color", "Show color", 0 ],
			"obj-366" : [ "Channel", "Channel", 0 ],
			"obj-40" : [ "Show gamma", "Show gamma", 0 ],
			"obj-51::obj-102" : [ "Global Lum", "Global Lum", 0 ],
			"obj-51::obj-103" : [ "Global Sat", "Global Sat", 0 ],
			"obj-51::obj-104" : [ "Global Hue", "Global Hue", 0 ],
			"obj-51::obj-21" : [ "Dark", "Dark", 0 ],
			"obj-51::obj-24" : [ "Shadow", "Shadow", 0 ],
			"obj-51::obj-26" : [ "R Hue", "R Hue", 0 ],
			"obj-51::obj-28" : [ "R Gain", "R Gain", 0 ],
			"obj-51::obj-29" : [ "G Gain", "G Gain", 0 ],
			"obj-51::obj-30" : [ "B Gamma", "B Gamma", 0 ],
			"obj-51::obj-31" : [ "B Gain", "B Gain", 0 ],
			"obj-51::obj-32" : [ "Light", "Light", 0 ],
			"obj-51::obj-34" : [ "G Gamma", "G Gamma", 0 ],
			"obj-51::obj-36" : [ "Global", "Global", 0 ],
			"obj-51::obj-38" : [ "Light luminance", "Light luminance", 0 ],
			"obj-51::obj-39" : [ "R Gamma", "R Gamma", 0 ],
			"obj-51::obj-40" : [ "B Lift", "B Lift", 0 ],
			"obj-51::obj-41" : [ "Global luminance", "Global luminance", 0 ],
			"obj-51::obj-42" : [ "G Lift", "G Lift", 0 ],
			"obj-51::obj-43" : [ "Shadow luminance", "Shadow luminance", 0 ],
			"obj-51::obj-44" : [ "Dark luminance", "Dark luminance", 0 ],
			"obj-51::obj-45" : [ "R Lift", "R Lift", 0 ],
			"obj-51::obj-46" : [ "R Sat", "R Sat", 0 ],
			"obj-51::obj-50" : [ "R Lum", "R Lum", 0 ],
			"obj-51::obj-51" : [ "Reset global", "Reset global", 0 ],
			"obj-51::obj-52" : [ "Reset light", "Reset light", 0 ],
			"obj-51::obj-56" : [ "Reset shadow", "Reset shadow", 0 ],
			"obj-51::obj-62" : [ "G Lum", "G Lum", 0 ],
			"obj-51::obj-63" : [ "G Sat", "G Sat", 0 ],
			"obj-51::obj-64" : [ "G Hue", "G Hue", 0 ],
			"obj-51::obj-66" : [ "B Lum", "B Lum", 0 ],
			"obj-51::obj-67" : [ "B Sat", "B Sat", 0 ],
			"obj-51::obj-68" : [ "B Hue", "B Hue", 0 ],
			"obj-51::obj-7" : [ "Reset dark", "Reset dark", 0 ],
			"obj-51::obj-72" : [ "C Lum", "C Lum", 0 ],
			"obj-51::obj-75" : [ "C Sat", "C Sat", 0 ],
			"obj-51::obj-76" : [ "C Hue", "C Hue", 0 ],
			"obj-51::obj-78" : [ "M Lum", "M Lum", 0 ],
			"obj-51::obj-79" : [ "M Sat", "M Sat", 0 ],
			"obj-51::obj-80" : [ "M Hue", "M Hue", 0 ],
			"obj-51::obj-82" : [ "Y Lum", "Y Lum", 0 ],
			"obj-51::obj-83" : [ "Y Sat", "Y Sat", 0 ],
			"obj-51::obj-91" : [ "Y Hue", "Y Hue", 0 ],
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
				"name" : "PX._color_line.svg",
				"bootpath" : "~/Documents/GitHub/px-stream/devices",
				"patcherrelativepath" : ".",
				"type" : "svg",
				"implicit" : 1
			}
, 			{
				"name" : "PX._color_wheel_cut.svg",
				"bootpath" : "~/Documents/GitHub/px-stream/devices",
				"patcherrelativepath" : ".",
				"type" : "svg",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
