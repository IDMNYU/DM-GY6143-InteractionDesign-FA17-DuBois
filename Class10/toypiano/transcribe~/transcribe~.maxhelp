{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 1,
			"revision" : 9,
			"architecture" : "x86"
		}
,
		"rect" : [ 8.0, 44.0, 655.0, 495.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-6",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4.5, 461.0, 410.5, 20.0 ],
					"text" : "by Arnaud Dessein & Arshia Cont, IRCAM, Paris, 2014."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-69",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 200.0, 8.0, 72.0, 20.0 ],
					"text" : "loadmess 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-68",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 13.0, 149.0, 32.5, 20.0 ],
					"text" : "+ 1"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"frgb" : 0.0,
					"id" : "obj-67",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 35.0, 105.0, 130.0, 25.0 ],
					"text" : "1 - Live Input"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"frgb" : 0.0,
					"id" : "obj-9",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 35.0, 76.0, 114.0, 25.0 ],
					"text" : "0 - Audio File"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
					"disabled" : [ 0, 0 ],
					"flagmode" : 1,
					"id" : "obj-5",
					"itemtype" : 0,
					"maxclass" : "radiogroup",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : 29,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 10.0, 78.0, 19.0, 60.0 ],
					"size" : 2,
					"value" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-66",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 290.5, 83.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-64",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 290.5, 103.0, 50.0, 18.0 ],
					"text" : "loop $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-62",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 174.5, 101.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-60",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 12.5, 181.0, 376.5, 20.0 ],
					"text" : "selector~ 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-59",
					"maxclass" : "ezadc~",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 370.0, 78.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-57",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 32.5, 265.0, 91.0, 20.0 ],
					"text" : "r toTranscribe~"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-56",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 9,
							"architecture" : "x86"
						}
,
						"rect" : [ 28.0, 356.0, 397.0, 284.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"statusbarvisible" : 0,
						"toolbarvisible" : 0,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 0,
						"enablevscroll" : 0,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-8",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 27.0, 134.0, 357.0, 47.0 ],
									"text" : "Loading templates is now available as an option. We will release code for learning pitch templates from instrument databases in the future."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-7",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 27.0, 87.0, 353.0, 47.0 ],
									"text" : "This version of Transcribe~ uses templates pre-learned on Piano. Using other instruments ideally requires updating the template."
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.74902, 0.74902, 0.74902, 0.0 ],
									"bgoncolor" : [ 0.54902, 0.54902, 0.54902, 0.0 ],
									"bgovercolor" : [ 0.698039, 0.698039, 0.698039, 0.0 ],
									"border" : 0,
									"bordercolor" : [ 0.6, 0.6, 0.6, 0.0 ],
									"borderoncolor" : [ 0.4, 0.4, 0.4, 0.0 ],
									"fontface" : 2,
									"fontname" : "Arial",
									"fontsize" : 14.0,
									"id" : "obj-6",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 7.0, 240.0, 217.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 253.0, 309.0, 204.0, 16.0 ],
									"prototypename" : "URL",
									"rounded" : 0.0,
									"text" : "https://hal.inria.fr/hal-00708682",
									"textcolor" : [ 0.004252, 0.0, 1.0, 1.0 ],
									"textoncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"textovercolor" : [ 0.0, 0.0, 1.0, 1.0 ],
									"underline" : 1
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.74902, 0.74902, 0.74902, 0.0 ],
									"bgoncolor" : [ 0.54902, 0.54902, 0.54902, 0.0 ],
									"bgovercolor" : [ 0.698039, 0.698039, 0.698039, 0.0 ],
									"border" : 0,
									"bordercolor" : [ 0.6, 0.6, 0.6, 0.0 ],
									"borderoncolor" : [ 0.4, 0.4, 0.4, 0.0 ],
									"fontface" : 2,
									"fontname" : "Arial",
									"fontsize" : 14.0,
									"id" : "obj-108",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 7.0, 265.0, 217.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 602.0, 72.0, 204.0, 16.0 ],
									"prototypename" : "URL",
									"rounded" : 0.0,
									"text" : "https://hal.inria.fr/hal-00723223",
									"textcolor" : [ 0.004252, 0.0, 1.0, 1.0 ],
									"textoncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"textovercolor" : [ 0.0, 0.0, 1.0, 1.0 ],
									"underline" : 1
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidden" : 1,
									"id" : "obj-123",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 7.0, 288.0, 131.0, 31.0 ],
									"text" : ";\rmax launchbrowser $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-5",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 27.0, 184.0, 353.0, 47.0 ],
									"text" : "It is based on R&D work in IRCAM's MuTant team by Arshia Cont and Arnaud Dessein that can be found in the following URLs:"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-4",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 27.0, 40.0, 353.0, 47.0 ],
									"text" : "Transcribe~ uses pre-loaded Pitch Templates (learned offline) to detect the presence of multiple pitches using those templates in real-time."
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"fontname" : "Arial",
									"fontsize" : 16.0,
									"frgb" : 0.0,
									"id" : "obj-2",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 7.0, 5.0, 368.0, 24.0 ],
									"text" : "Transcribe~ :  Principles"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-123", 0 ],
									"disabled" : 0,
									"hidden" : 1,
									"source" : [ "obj-108", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-123", 0 ],
									"disabled" : 0,
									"hidden" : 1,
									"source" : [ "obj-6", 1 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 506.0, 78.0, 145.0, 20.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Arial",
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p Principles"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 9,
							"architecture" : "x86"
						}
,
						"rect" : [ 949.0, 483.0, 394.0, 220.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-5",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 33.0, 49.0, 337.0, 33.0 ],
									"text" : "Transcribe~ arrives with pre-learned templates for Piano. In future releases of the object, we will include more templates."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 9.0, 195.0, 93.0, 20.0 ],
									"text" : "s toTranscribe~"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "txt",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 33.0, 134.0, 139.0, 18.0 ],
									"text" : "read PianoTemplates.txt"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-12",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 33.0, 108.0, 35.0, 18.0 ],
									"text" : "read"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 2,
									"fontname" : "Arial",
									"fontsize" : 16.0,
									"frgb" : 0.0,
									"id" : "obj-1",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 2.0, 25.0, 339.0, 24.0 ],
									"text" : "Controls"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"fontname" : "Arial",
									"fontsize" : 16.0,
									"frgb" : 0.0,
									"id" : "obj-2",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 2.0, 1.0, 368.0, 24.0 ],
									"text" : "Transcribe~ :  Pitch Templates"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "txt", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 506.0, 104.0, 145.0, 20.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Arial",
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p \"Pitch Templates\""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-54",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 9,
							"architecture" : "x86"
						}
,
						"rect" : [ 664.0, 467.0, 418.0, 299.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"visible" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-11",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 51.5, 92.0, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-10",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 51.5, 45.0, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 0.0, 248.0, 93.0, 20.0 ],
									"text" : "s toTranscribe~"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-6",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 153.0, 207.0, 215.0, 20.0 ],
									"text" : "Offset duration in samples (def: 2048)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-5",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 153.0, 160.0, 215.0, 20.0 ],
									"text" : "Onset duration in samples (def: 2048)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-4",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 153.0, 114.0, 215.0, 20.0 ],
									"text" : "Offset threshold (def: 0.1)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-3",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 153.0, 70.0, 215.0, 20.0 ],
									"text" : "Onset threshold (def: 0.3)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-34",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 33.0, 114.0, 87.0, 18.0 ],
									"text" : "threshold2 0.1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-35",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 33.0, 70.0, 87.0, 18.0 ],
									"text" : "threshold1 0.2"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-39",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 33.0, 207.0, 91.0, 18.0 ],
									"text" : "duration2 4096"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-42",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 33.0, 160.0, 91.0, 18.0 ],
									"text" : "duration1 4096"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-8",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 33.0, 25.0, 240.0, 20.0 ],
									"text" : "See Object Inspecter!"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"fontname" : "Arial",
									"fontsize" : 16.0,
									"frgb" : 0.0,
									"id" : "obj-2",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 0.0, 1.0, 368.0, 24.0 ],
									"text" : "Transcribe~ :  Detection Parameters"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"disabled" : 0,
									"hidden" : 1,
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"disabled" : 0,
									"hidden" : 1,
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"disabled" : 0,
									"hidden" : 1,
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"disabled" : 0,
									"hidden" : 1,
									"source" : [ "obj-42", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 506.0, 156.0, 145.0, 20.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Arial",
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p \"Detection Parameters\""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-51",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 9,
							"architecture" : "x86"
						}
,
						"rect" : [ 665.0, 44.0, 420.0, 354.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"visible" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-17",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 60.0, 252.0, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Arial",
									"fontsize" : 14.0,
									"frgb" : 0.0,
									"id" : "obj-15",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 35.0, 184.0, 186.0, 22.0 ],
									"text" : "Advanced:"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 2,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-13",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 155.0, 240.0, 190.0, 20.0 ],
									"text" : "Affects CPU"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-12",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 142.0, 277.0, 256.0, 20.0 ],
									"text" : "Emphasis of partials (def: 2.0)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-11",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 35.0, 278.0, 51.0, 18.0 ],
									"text" : "beta $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-10",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 142.0, 220.0, 256.0, 20.0 ],
									"text" : "# of iterations per analysis frame (def: 10)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 10.5, 315.0, 93.0, 20.0 ],
									"text" : "s toTranscribe~"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-8",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 35.0, 64.0, 240.0, 20.0 ],
									"text" : "See Object Inspecter!"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-7",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 142.0, 112.0, 256.0, 20.0 ],
									"text" : "FFT Analysis Window Type (def: hamming)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-6",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 35.0, 113.0, 104.0, 18.0 ],
									"text" : "wintype hamming"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-5",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 35.0, 220.0, 44.0, 18.0 ],
									"text" : "niter 5"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-3",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 35.0, 31.0, 334.0, 33.0 ],
									"text" : "Parameters for real-time analysis determining quality, time-sensitivity and CPU usage."
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"fontname" : "Arial",
									"fontsize" : 16.0,
									"frgb" : 0.0,
									"id" : "obj-2",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1.0, 2.0, 368.0, 24.0 ],
									"text" : "Transcribe~ :  Analysis Parameters"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-6", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 506.0, 130.0, 145.0, 20.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Arial",
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p \"Analysis Parameters\""
				}

			}
, 			{
				"box" : 				{
					"autofit" : 1,
					"data" : [ 44836, "", "IBkSG0fBZn....PCIgDQRA..AnF...P0HX....feyn68....DLmPIQEBHf.B7g.YHB..f.PRDEDU3wI6clGmcTUl2+64Ta2a2Ic5rPVfDBDH.ABHKATQXl2Azfy.nuJpHfBSBv3fuBxnnN3K5HtL331KLiy33HfKnBHxn3BqADEAjLPXMgfgPPfruu02ascNu+QcOUeppucmFRGniT+974lz2aU0oN0op524476777bDZsVSEpvqwPq0HDhB+VXXHu427alG8Qez9r+Bg.yitl+t6t6lksrkQ2c2caKuJTgcWg705JPEpPEpPEFXTQTWgJTgJLLGUD0UnBUnBCyQEQcEpPEpvvbTQTWgJTgJLLGUD0UnBUnBCyQEQcEpPEpvvbTQTWgWyQ6744xt2uTJa61am+TW9uqPE1cGUD0U30bLXBLECYtiiSARaCYrTJy+6zzzp.doB+YEbestBTgJzePHDHDBjRIJkBHiD1FlsY1tTJwww4U85ZEpvtRTYQcEFVAa4JDBA8zSOsk3sLAt4XSRRJ7aUnB+4.DU45iJ7ZMrkov9uSSSYQKZQroMsoBj0l8QoT4xfnTJpUqFG5gdnDDD7p+EQEpvtPTQTWgWyQ+QT2NB49aeAHJJBee+BxfTgJ7mCnhntBuliAh7sLJSBaHwKebUSlXE9yITYxQEF1g1Y6fMAsskxkIiKOYiUnB+4.pHpqvq4vlr03oG1Pq08QFijjj78Wq04j68meTaHvsmnQSYLPvtrs+Myw2tItrbmEkOO1kW+U1ubqK.8otLTNX4xk0.MgslsYNF6uW92Fpfc40ekcRRRedNob8ZG8a821Fniq7w2e6q8yMkeFpR5iJraCzZctTGCjl11j01HMMEGGGzZMooo359xy6TsKWid31ksoSFy4s+1m1o2dYc3MaynQuc4Vtynxcj0eW+uRfoMqcka45e4NbKi9KvjFJQylMoVsZEpSBgnv0g8e2eWWluW9dlY61s4828.6qsxS7s88y33X7775y0h8wTQTWgg8n+Hzr0mVoT333z1sadYSq04D0uRIHLujYSzW9E8xjBl5fY+skwoLAsc4TFFqrr6npb6T6F8wPAZWcafNeks9rLw3Pc8rL4qoc07+III333T39f4diMA8.UuhhhvyyqvyhPw4Kw9610i9a6IIIEpOZstsFPTQTWgcKP4WDghuDTd+r8Xj9SNkAKYc6N2P1KYk0L2tbseIzTesqKkIJr2OCZ2DkV97T1R0A6DyNXvN5bWtd2edmytJq9ihhv00sP6T6FAR41Jy4dflDZy8cy8oA5XJOBs1Yvf892t1CiwF1m675ZEQcEFNCa4LLOba+Rt8KA8GgpoLrIF6u8scv1xc65v.QDX+8jjj7g1lllhRovyyq.wRYqNKW2M0C68qbmR102104zNKZ24u+FohMImY+2U41jsiftcsa.8aarMIY6JaS4zecbZP4qw9StmxysfcaT6ddthntBCqgsUoCFqEMuTZqWrYXukegq+zFrb40t8cGo4ogP2b71V9YW1P6eoFxztz1h81c8Z29zNK7GJP6t9rqKub5zCZ+HgdkBy7.zeiNYfFQfQJIaM3se1YfzYt+v.0Y0.87a+IumAUD0UXXILuzr5UuZ17l2bNIoRov00k3337GrMZ.qTJNnC5fZa4YdYQoTDGGyK9hu3fttDDDvTlxTJ38BkewKJJhEu3Eyi+3ONKaYKiW3EdAV+5WOyXFyfO2m6yUXREMn7Kj1Ddwwwr4MuYVvBV.Oyy7LrjkrD13F2Hae6amnnHF8nGM64dtmLiYLCl4LmISe5Smt5pq1pS9NKZG4io9+BuvKvhVzhXIKYI7rO6yxJW4JysPLHHfIO4Iyzm9z4vNrCiC7.OP5pqtFRpSFjjjvy+7OedmhFKqcbbx8JGSh7JIIgQLhQvdsW6UdGulqssssswhVzhX9ye9rvEtPV+5WOIII366yAevGLGywbLLqYMKFyXFSdYYqsrcah8DXtjkrDdjG4QXQKZQrhUrB17l2Looozc2cyzl1z3nNpihYMqYwDm3Da6wWYQcEFVCShV5s9Veq7TO0SAPNAsmmWtUxlGr0ZMidzil+ve3OvXFyXxsN0dXkFx+Eu3Eyrm8rILLbGJOPbbLG4Qdjb629simmWABeoTxS+zOM27Mey7y9Y+LV7hWLMa1rfaWc3G9gy7m+7yIErGltMorqqKBgfsrksv7l273Ftgafe+u+2ypV0p5itpFRIyuGDDvTm5T4TO0SkOvG3CvgcXG1PlEqsyhzMrgMvu5W8q3FtgafG8QeTV0pVUdcyzIVY4FDBA669tubJmxovoe5mNG8QezCI0wEtvExwe7GOdddE53KIIgfffBt4VO8zCu2266kq4Ztl7eKJJhu2266w+4+4+IOwS7Dsc9ALsC6+9u+bFmwYvG9C+gYhSbh86H0Z1rI+hewufuy246vC9fOHMZzHe6P1ywIII4sWSdxSl2w63cvG5C8g3vNrCq8s65JTggAPoT842Z1ro9HNhiPCzmOBgnO+1nF0nzaZSapskk84XAKXA5Z0p01xs7GGGG8ge3GtNLLTmllpUJkVoT5+ze5OouvK7B0c0UWZOOu1VuDBg9XNliQ2rYy9TGJWGihhz+jexOQOqYMKsPHzNNNCp5W45puuudtyct5m64dt7xNLLL+uiiiaaaSTTT9emllVnNljjje+369c+t5oO8o2u2CFnORoTCn877zm4Ydl5G6wdr9bNM+c+cOrLdrG6wFvyooN555pAzm5odp4G6i+3Ot93O9iOeal1bywXeOvT2AzGvAb.5a61ts9b+LNNV+nO5ipeaus21K61D.8XFyXz+y+y+y40OS6dbbrthntBCKvvUhZ.8QdjGYAxtu829aq268du6yKysin9M8ldS4uvYHiRRRxI70Zs9EewWTeFmwYLfuDOPjy.5fff7iQHD5wO9wq+Q+neTdcNNNNudLXIAs22+3e7OpO4S9jyutFL0sxsIk6.Zjibj5u5W8qletRSSyairItGHLXHpM0Ueee86487dzggg5eyu42n2y8bOyIoMsa1j5kue566m+cOOO8UcUWU98SsVq+Q+nejdDiXD4myASaT4NEjRo9bO2yM+4MS6PEQcEFVfWMHpM3kqE0yZVyRqTJ8F1vFzu+2+6usDzl5T450rl0rzMZzH+Zz1JUkRoexm7I0G9ge3EHlKaY2f8k81U2+7e9OeAqkMvXYsgjIIIo.4n8w7a+s+V8jm7jKP7ztq018wl.z7w00MmLTHD54Lm4z153foCkcDQc41ny5rNK8i+3OtdzidzEpi12OM6q450l31tsUJk5u025ao0Zs9JthqneGY0foMp7457O+yWq0UD0UXXFFtRTCneKuk2h9AevGTOqYMqBjLs6Esxersn195Rq05m9oe5bKyKac0fkHzPNXuu10OoTp+xe4ubAR3xsO1aKNNtv1evG7A060dsW8gjZvRF0eVSat9DBQtTHl5goSjAiU0CFhZy8FoTpO1i8XyelxzNaeuq+rl1lH092G4HGo9BtfKH+4I6NlFLxWYpCsq99c9Nem71iJh5JLr.CWIpEBgdbiab5INwIV3b533LfuHZ12xZTaHe15V2p9M9FeiEH8d4p4a6doucjnttt5a5ltobK5saehhh5CAoAKdwKVuW60dUfH6kijG6nqqxj3ewu3W7kkrLZ8fin1lLdGcOqr0z8G4c4+Gxje5U58P6QXXpmSZRSRuxUtRsRozUIkoJTgA.Zsl0st0k6YC.4dXP+ko9JGPCFufv3quZslK8RuTl+7mOooo4gkr4XLy1+fMfUJG.Jl5siiStapcwW7EyJVwJJDHLl.uw3oDttt4dqw11113i8w9Xr7ku71d9Fr0McKuWvbNJGx1ttt4Q12W7K9E4AdfGH26HFpRbSlqKiabZfPHx81F65qYaFTNBSsOdS6L.ggg4WuC11HoTRPPPtOvaGXTqe8qmq8Zu1r1uWYW5UnB6diAKQiMAigXINNNOfVrIUsCTh1UNlWnWvBV.Wy0bMn0Z788INNtPvuXN9Aq6qYGhylxw3GtFhoUrhUvm8y9YAnfaBZ1dXXX94THDbi23Mxsdq2Z99a7CbSGNZsdGFrPl5gwUKMe2FF2TSHDDGGykdoW5PdDLZxdgkKOcqnFsbmp1D51t6mwEKMGqgj1ru1c.Y9rifRoHLLLuyjnnn7N1hhh3m7S9IzSO8TQTWgJLPv15Ni0oPQqOg1+xY4HJz7B8W+q+0oYyl.Y9wqYeLjZlWTGL4V6xDesyJTSv4bS2zMwS8TOUgL8moyCyxWlIPa9hewuXd8Pq0DEEke8X6+26HXagp4ZxzImc8W2JLtuu6693W8q9UEN1cFX2wmwp01sO1YUQ65rwRbSGI1sYPwNFsutru1FHXJOyyUl5gobehm3I3odpmphntB69CaqZMVJ1tWx2Yew29EuxuDZOz3xgDtANNNrhUrBti63N5St3nL4UYKPMjCsypPS.vXu+1jMFKt25V2JW8Ue08Iq+YfIXdt4a9l44e9mu.gg89aaAe45T+QDV9bYGnR1iFAfq9pu59TFuRw.E121R.Y2onwRYSctbGxkkOocmu1YQc6HtKWdk6b1wwg4Mu4UQTWgJLPvVdixCS2nuosEQkilszzzBRab228cyF1vFx2tMJu3FXets2lsUc1CG2lbwtyBiF4.b629syJW4JAJ1gf8w+8+9eefhc9TlT0tNZ96fff7P72FFxq1kaSLkkcmBye9ymkrjkLjjToJedsaysaqxCUaq16AS9J2T1FogJ2tWNC48x8ZJIIg68duWd4k4zqPEdcFLDilv90VRhjjDpUqFG+we7bLGywvgcXGFSdxSFgPvRW5R4du26kst0slmLlRSS4tu66FnHIc4IRrcjIm1ocZbxm7IyAdfGHggg7HOxivMdi2HO7C+v4Gm8jUZawpc48LOyyvBW3BYRSZRErh2Pl9rO6yx7m+7yu9rGRu45trz.FYfN0S8T4c9Nemre629wV1xV3we7Gma4VtkBSPX4q8xWydddr10tVdjG4QX+2+8emlr1b71D1lNjdqu02Juq206JOrse5m9o45u9qO+dzfYE.x00kzzTBCCyK2t6tal6bmKG+we7LgILA1vF1.2y8bObMWy0vF23FyuNGLRG455lkBEFjdASEpvtTry3ddl+t6t6VuwMtw9s7riLw50qOnbaJa2zx3yxNNNZWWW8G4i7QzKbgKrOQSmseSusssMsRozMa1TGGGWHjkamqtU1suBBBz+ve3Orv0f45nYyl5K4RtjBGioL6O2Hy3W0lxpb3Z+s+1e6BGy.UNly0AcPGj99u+6us9pcO8zi9e3e3enOtFWYeQu747hu3KdHMfWJ6a5+K+K+K4AYicaPTTj9JthqPKkx1FnK6nOG1gcX5ktzkV34.y8rEu3Eqm4LmYd6vKqxeG1RTgJ7p.FtRTa+Rt46yXFyPee2280u0+x9irg.acqacE7K4x9Xb67A2K6xtLsRo52HHLLLT+VdKukAj7qbmNu2266sO0QS8+7O+yeG1IhcmV68du25Eu3EmSF0tfmIIIQ+W9W9WVfrtc9gr8eeBmvIrCdhICubC3E.8ocZmV+lyULWGm0YcVurd9.xBw763Nti7nN09duo83ge3GVOhQLhW1c.ToQcEpv..ijB5VCM+HNhifa+1ucNti63.JN7XiKtYFNrAlgb2nQCV0pVUtbA5RxeTdX9icriky4bNmBZRaz8T2RdCeeeN+y+7QHD8wqFJW9l5wRW5RKn+p1xiUdlm4Y5SJbsc4Kaye+49beNl9zmdd82jBPMsCFukwTGSSSIHHH2UGsKe61fUtxUl6YL6Lnrei655xblyb5yhirQFBy9+28282Mnb+PaIgNli4XX1yd149PsoMzzV433vQcTGEmzIcRurb8PoTVMYhUnBCDLuj666ydrG6AW+0e8r268dm+hsgvUHD4Sll1JHHLDRJkhku7kWXxpreIVq6qWBL8oOc1+8e+ySSl1cJX6taG6wdrCnWn.E8G70st0QylMKrHKHkR13F2Hqd0qNu9zeP2x+i268du4889deEHqrmDtlMal2NbTG0QQmc1IPVGZ99949vr4bYzUGfsu8syl1zl525vKGX7lEGGG5t6t4vNrCqOocVCoroCvYMqYwzl1z1gks8DUdBmvIj2lZG7Qkm2Ay98xYEFpZxDqPEF.XdQLNNluvW3KvAdfGH.Ex+w1VO0eVzJkRV6ZWaeHnMaylzzr88Ye1GRRRnd85EhhO6ymiiCiXDifwO9wmW9FuPwTtFKYM0osrksvZVyZXu268tOjjG9ge3L1wNV5niNHJJpfmjXpaIIIjjjve8e8eMc1Ym4QtmcGTJkhZ0pkWOG8nGMSZRShkrjk.zq+iapil.Gw72wwwscwV3kKLsalIFchSbh4SjpsqLpK4djczQGL0oNUdlm4YFzmq8a+1u7Q6XmyxMmCyeeHGxg.zWWwqcvbuthntBUXPfYNyYxYe1mMPwUKlxAtgMJ+a8zSOs0R0xdDg89XrN015rxkcsZ03DNgSfW5kdo7NPr83Cax+jjDF23FG0pUqP4HkR5t6t45u9qOudX1to7rkPvtSI65n43raWRSSoiN5fQNxQluM65noM0.SX0OXHxFLvdTKc0UW8oyU6qM610AaGEl1nILgITnLFHeMubm06n5dEQcEpv..iERm1ocZ4QumwpwAie1tqFJkhQO5Qy0ccWG.Ert0VazxctLX5Xw7akGhd4Eh0xVba1FzKAkRonmd5osG2tRTtiFCQsYa6tfW6eRqBUXXLLujeRmzIAPtUXkWFldsBlIuyPNaRvSkgQBCCIqYQgs+PYBW6ey1hQaq1KWuLGuocpd854VR1e49icEvt9YzIe2MTQTWgJrCvnG8nYe1m8ovvWGNPRafIQQYGgcFMus0.1TeCCCym3ycj2GztsW1BZasdKawtsFsljYkQVigpri2fAk6PocctLbFUd8QEpvN.SbhSjQMpQk+cauS30ZXH7777JDJ6PuclT185LK5qClqg1EQg1SpnIy3YGZ61kqoCCee+7sYBo9Wsrl1tylWM6bXnDUVTWgJrCP850ycmLS98nrmB7ZErSylPemDOScrLo3f08vrk2n70pqqadt5d0qd0rsssMBCCy8VjZ0pwXFyXn6t6lnnnBoGVimc7pAYcYq9M++vkNaGLnhntBUX.fMor8uMbAFBW6IuKNNN2BaCrq+lbq7fQ5ixRYr5UuZdnG5g31tsai4O+4ypV0pXqacq4dzR4Iwz3ix0qWmMsoMUH.Sd0pcrb9h1fcmHqqHpqPE1Av3VaF+B1fgCujWNasATH3MJ6evP+mxTaGLGye7O9G4Ztlqga3FtAdgW3ExKmxqpL1v12saznQtkskSwo6JQ4fJxNve1cBUD0UnBC.JKcvNCwhs+LOTi1IiQ+4ev820fsFzPuVS+s9VeKt7K+xyiZQnXnS2eWSFYSrCxGa+rdnxOoGHTNr22cU5icu5VoBUnBCovNxKK6GzZslK5htH9ve3OLqe8qu.oucdm1Nw5aO4kkS391VwNXy2yUHCUD0UnBuNFFxWibIMZzHmT8RtjKg+s+s+M.xyKG1d0Q6xWyFWzyd+jRYgnQzPPOXx2yUHCUD0UnBUHGlfR4Ftgafq5ptpBRp366WPtB6fqw1Gtgdsl1X8s8jcZm45pvfCUD0UnBuNFkk5.f0u90ym4y7Yx0W1HYgYEx1XYr8JTR6V2As0t13i0l8obZdsBCLpHpqPEdcNrmvzjjDtga3F3Ye1mMWuYidz15Oaerle2jJQMvdRXsmHOCYeEF7nhntBU304vl3ToT78+9ee788KjSNLZTa6oG1t6mwhZa20ydAWv321lE9fAiObWgdQ0ztVgJ75bXrnVq0rzktTV3BWXtLGsys5rCYbnW+kdhSbhbhm3IxIbBm.GzAcPL9wOdbbbnmd5gG6wdLtzK8R4EewWL+7NbJT7GtiJh5JTgWkfsNv1qJ1CUvjJSKGnK1VuZHUsWP.LPHDbO2y8TXIvprjE1v93m6bmKW1kcYru669l+a1oWzoMsowW8q9UY4Ke4Uxd7J.UD0UnB6Bg8jpYmmPFpHqrKG6LmWYshs+aSd.orlyZslG4QdjBq3JkuVJSZGDDvm3S7I3y+4+746iY614bZirHUjzuxPkHQUnBuJ.i0z1VgNTnQqwGkMkkYImBJRrZzK1VWY6vO2relkdpxgJe4HazbLGywbLb4W9kW35zTOL6q80+PQDd95QTQTWgJ7p.rcqsgRTdorxP.aHrsIlKGnJkmXvst0sxF23F6Scs+RJURojOwm3SjuOFoWrCpE6iohb9UNpHpqPEdU.1ICHa2damE1jekkYw.y4wNq1Y9ea4M1vF1.qcsqsfk1sKGgXJm8XO1CN5i9nyIgskdo7JLtccz9+qvfCUD0UnB6BQYqRscYsgRXawb6HHM+toNYHus0xNMMkMu4MWXYxp+JGGGGlxTlBSXBSnPVxyr5mazi2fJIO14P0jIVgJrKFFhy50qm+akWEt2YPRRB+leyugvvvb8pCCCKrhjW1x6S5jNoBocTSdrtbBVZfpekW0ar0JucddRY4SprpdviJh5JTgWEfTJYzidzE75hgBn0Z1zl1Dm0YcVrgMrg1l5QKKyxdrG6AKXAKfIO4ImSlpTJV6ZWa9waeLkWQarCWb67fcYM3sIoMd8QE47qLTI8QEpvtXXrZs6t6NWWXiqqUNY9ai0rl0.zWu2nbYurksrBjzl7nQ6Rn+FYILq.4FR3xKWWkOdaRWS4rrksLhhhx+8x4saax8MtwMxJVwJx2VkDHu7PEQcEpvtXXHq5pqtnVsZ4RRX1lsE114Kim3IdBV5RWZAIJLAphwyMRRR3Vtkao.Ic6Ren1tIW2c2MicrisfKykllRiFM5yZBo80.TzJ4MrgMvhW7hKrciN71Rtn0Zdtm64XKaYK40+pPH+kGpZopPE1ECCI4drG6ASZRSpPVmCJ5O01AEx5V253K7E9B.Y4IZa2ty00kzzTV1xVF+6+6+6.8RR2NqisIc268duy6Lv1h9wN1w11i2F1VWu4MuYt0a8VyOdS4YbQPyhYqPH3pu5q9URSWEZgJh5JTgWEfVqoiN5foMsoATjbtbz9Ymf9+A+fe.m24cdrxUtxBGWbbL28ce271e6uc15V2ZdluyX4cPPPa88YgPvrl0rJTVFqwG23FWaiHQ68s7xY0UdkWIKZQKhjjj9jlSM4q565ttK90+5ecdmKl5QUTJN3Q0jIVgJrKF1Cy+HNhif4Mu4UHx8rkAwPTZBwagPv0bMWC27MeybHGxgvzl1zHNNlm9oeZd7G+wA5MucXSFamuNL9ssY4u5DOwSLO3TrO9ff.lvDl.qXEqnOd9gsOZaetVyZVCm9oe5bcW20wa3M7F5i06+5e8uly8bOW1111F.C4Sl5qWPEQcEpvtXXaA5rm8r4JthqnOaq+7xBy12zl1DOzC8P7.OvCzGscs8.Cn3pCdYMvmxTlBGwQbD4jz1Dvc2c2L9wOdV0pVUeHpK6lels655xS8TOEG2wcbb5m9oya9M+lYLiYL7RuzKwcdm2I20ccW8wSRLj08m06UnunhntBUXWLr0u8nO5ilYNyYxBW3BA5KQssz.1+Nz9P+tcd2Q4HQzlT88+9e+zc2cmW2rcotff.NnC5f3wdrGKe6kmPwx9+roN0rYS9deuuGW60dssk.1Na8YNm14kjJLvnRi5JTgcgnLIamc1ImwYbF8QBg9iXy1xXf1NQe1kU6ReolsMpQMJlyblSgiwzIhQZji63Nt7iytyhxcFXm48LGqRo5y5pnsWhX6Ze1SJYE1wnpkpBC6Q4zzY67pAnXz9UlXw15MahOyv46uOFOsnc4nhAyjgU1s1zZMenOzGhYLiYj+caxU6kDKy2skDwNB+J6ez.s0hby9dIWxkv9se6Wgqay9XHNm8rmMc1YmEZiJS7Wln0VVDieUa6Nf1o6T61sxQun8w8xYxFsuVretvNr5K24lo7KeNr+s9yeus+M609wcjLNsKhO2QO+k+b3NtYnBU30NTdxoLuHYaclAFq4JmiILq4ePQ2eyNI6OPeBBBJHeQXXXeN28Gbbb5SmDc0UWbEWwUjuNCZ5XoLQb4HJzPpYS.A8tLWYagrMQoPH33NtiiO5G8iVntYJ63337y+zm9z4s+1e6E77D61A6x11essIcsIxsIbssd2tsy3e3k6bvyyaG19ZNW1Gms6KZ2It8nTrqqFXBDIS6tcGz1ncR+X7+c6sYe9smq.yD4ZW22QepHpqvvZT1hnxVeYHhjRIQQQ4ufZHGJSba+BksmUzeezZMQQQ4SnFjoka6rFq+P4DTjmmGuy246jO8m9SWnbKeMZrF0lX1nisMQSbbb99XrpytiroMsow0bMWC999EtlLmGOOuBY6tO5G8iVfnSHD366m2AkcGKlN.M2CLsKtttE5zYFyXFL9wO9bxoxcHYKeigf1b9FHX68LkI+Lvts2t8rrrTkmf0Z0p0Gq06uQcU10DMkWYKxs6HydjHUVTWgcqQYuenrEl1dk.z6KhFRnxDXZcVT8Y+R4.8AHmLx9ExxVi0evPBTtLSRR3xu7KmK5htn7xyX0m80nMwrgLxF1cHYSLX5PZBSXB7i+w+X1u8a+vwwgnnnbsjsa2r6L43O9imK3BtfBsyQQQErV2bsXZKMkkc6pYe2y8bO4+5+5+h8bO2yB22rutskHINNFoTRsZ01gsuFRc6NdMsGk0rub9FwbtM2esqy.zSO8zGq0GnmSrOV6xy99TY44prntB+YAJqGc+82Plkt8zSO4e2VKT6U.k1kWM5OXdYxNDuskLXGAaR.6WbMD8eiuw2fO2m6y0GcNssVyVucaRNaBcSTIZag2AevGLyadyii7HOxbBKee+71By9ZW1Fhrq3JtB9K9K9K.5kLzTmLRDX9My0S4NDEBA0qWmq8ZuVl0rlEMa1DkRQsZ0JbOwb7ExH0kE...H.jDQAQkuuLXrn1bOncKCYk6.2zYj8b.XP6joniN5XGd9su1Ke+wTV10Oa41d47bXEQcEF1B6gm1tI0w9ECgPPO8zSgWtrS7QBgf33X777HHHfvvvA0KJRojlMaRPPPAqoA5ypXR+A6T.pMwVylMQHD7O8O8OwMcS2DGwQbD8g3zHQP4zEZ45fIzuUJEdddbAWvEv8e+2OyXFynOWml1By4wVBHCYVPP.+2+2+2L6YO6780HOR4NOZmebqTJF+3GO2zMcSL6YO6B0YSv3TdtFLZk644QXXXtl3CDL6iwxXaxYScxV6e6Io0TmJqMs43aznwN77aN91QRaZqsqK13kSjYVQTWgg0nYylEd.u+lbG6ghaOLS6WFLuzXhRtASvVXdI1LbbChhhZamGsqtUVhDC4VsZ0xk13c+te2bO2y8v23a7MXlybl46a+sf0Zf8HD777387ddOb228cy27a9MYjibj8QiUCQksUxFh0xRgL5QOZt0a8V4K8k9RLlwLl1RlYH1MCo23C0us21ai63NtC9a9a9aHMMkd5oGZznQgjNkAFOqwTehiiIMMcPYQcO8zSd3xaakr80c4N4L5ya2Yi8nTL0u1kbqJCyyi1cjaKgh8yilyQTTT97bLXQU.u7m6PCzG9jczCHxriy.w.TT6hw4dtmKKYIKIWS07pjnXT2433fuueAOEv9ETnWqOmvDl.WzEcQEdIp+PZZZd94vlPxTeFLj0lxw1COLji1SDZ2c2MWzEcQL24NW9M+leC2wcbGrfEr.V5RWJqe8quP4Yzge7ie77FdCuAN9i+34c9NembvG7AWPuWCYg8ZYX4nLzLRixcBZ1mK8RuTN6y9r45ttqi63NtCdxm7IYiabi4Drl10IMoIwwbLGCm4Ydl7NdGui7Ijz00kQLhQvbm6bYYKaY355hmmWtEztttDFFRsZ0HLLDgPv3F23Xjibj6v10INwIxbm6byutrCbHy0j87BbTG0QkmhWsaKMa2HgjqqKm1ocZr+6+9WPhnxsOl13FMZj+bhsGlXK8k422m8Ye3C9A+fTud8AuKHpamIJUX2FztadB6MzhcUmymnPfp2saQB26WaQTaXlEfFIJn0+ZSXWMnrcknQiFrsssMV6ZWKqbkqjMrgMfTJYBSXBL9wOdl3DmH0qWuvjp0NKEekhxSvVbbLaXCafku7ky5V25nmd5gt6talzjlDie7imt5pq938DUXmGUD06licHQcqen2A4qPB8RVmSTKKc7xBGuFic3li2fJh5WsgMAncxUp711USTVlDuc0gJLzfJh5c6gYnS8kvTasGkUxPBHzTvTZsn+EEwV1ibh9947VggNXqabYB4x5e2eDm6rme6xqbT6UVFkJrqAUD061CUqOkILkEHmUE1hkU2kXvMRjzNBaYu6VejNoBu5gxqNJsKJMes.siJoh.enAUD06NCMftEkpzVdBH21Ksr8yBnskzzF4Rn2suCQ06h6xvNJuSzeXWo7C1dYiseA+JodVgAGpHp2cFFl4VS3WZNoqJinVCnZYkUq8ovwRFOtwdbgt31xQ6duyl7u58xWUP+EAbsa+FpHKMtmX+Ud824pcRyTgW4nhnd2YXKcgkE0EIcUVdtgsE2xBEiYhBAJNYgEj3v5ktWK7UuWGhczh.qcnHavtJKZKmeNJGLGUVUuqCUD06tCq6dF8k6qWezJePT5mcnWt1TTEH5y2VNgrr01akChohm9US7JYhBGJVouGnN.1UL4kUn8nhn9OyPeliOMf4VrTjSVmhFGD3RlURoBAInvEIfFWzfRCBmb26yPTWfHuBUnB6xQk.R+YDzs4uUZEHEfTPhJEzJD.tHPqUn0BDBGDHaQA25+Sz8NQjsA86jOVgJTggbTYQ8t0Pk++8pybFYqc1TPogXZE5xzxiPLNWsDRhSww2gDMHDsxq.19mWAMtsB3Esrxr5JTgWEPEQ8t0v3C05VjnYgxR1jI1JOWnUnPiPlM8ghjDHVkInsV.BYKtcYuQBiUnimi7uW1CqqFTVEpvtZTkTl1MG8pIsnnuS2BRoLK+bnigDUlXywovV5A5oIroMCiaO.WWnlOzY.34.tf1d0TI+jkQnmzJnzqzptBUXWOpHp2MFESTRxdIRsQRJjDCgwvKtR9S+9GjEce2OqYoOOM27lQpAbbYjiYLr+GwQvzeiyhQcrGMLwwgPDB0pSZqRUHH2k.kBIpcXV3qBUnBCEnR5iciQA+ltTLhmB3n.BSfUsNdgevOke20c8jrp0xn8b.gFeeIBol3dhHvMfsGqYCpT1q23QwQ7Ad2LgS6c.0jj3Y7yiV8r2lTfZEpPE10gJh5cyQtaNaROdlY5SCDECKbI7q+b+Kr748.b.0GAcFmBIMvoCe5IrGBb8PEmPf1kTgCg99rhzXV6nB3n+fmFy5S9O.c3Ad9Yj+lSpMDV4ZDSZU0rI6Jp0Ozub88SXruiRsHE2dey8ICX8QCjp.UKogrqDBUl98NdXOCs8d3kRNUkBMeZUeD4GmrMWGVkQgLZH8Ye62y6fAUcvtaKDZsVaRb3.ER53udA1Q2k8RMT4kInxsQ1sU1KqOlrblcxh293fdSB86TAjfFxeIW0JVvMhYEEBKYobKW3mhddjExd50AcjjfHNAgLkDY1p7gHQRRTLttRTHHQKIxQRSeGddcSNzy98wa5e5xf50yzsVCJRwQ5XYFeeIpK2uQ9O3TLBIy2GcIhNCLgGeqivo09kGbOs1+jVSzoaq5SuDhY+u0ouXDcJZsw0uYV1seWzYbJ0EBRRhP5IAGEaw2ioL6+FXLiL+5KRXBLnDqb3sr2P5WZ787r7+sr0Al1GuxIaBgyKCkLO4XklWTpr1GK+Y2g3VGiSwTRqc6FsIOtTHGiWwWu6BbuvK7B4kdoWpvJMf8RyyqWh5H6UcixqMdIII344UXEW1rcy1Z1rINNNDDDPylMyWLMsWBmDBA669tu7k+xeY77714yCBBUVHhqEzx4ny9+vDXaM3V+x++nmGewrONd3D0f.gCRGPH8XqIgjHTHS.O+.T53L2sNIgNUtzYXJNAd7T+zagIMk8goddmKfDgGHEBTpDjHZIbs80QuVEpa4LeNkcv6VjbFW8q+u9J909ceKrelE1.Kc6aiU74+l.DwwDunEyO4q7+it1RCBBiv22kHUSZF0Cg64D3+ygbD3OpQ1q2unzfzZs4iVMEV0EI81gj4mKuXZ0aWb1gXpc4XkcD0YtDupvQ6zWSts9ded60psP0l5SEFdB268duWV3BWXge70SVSOPvXks8JOc4Pp0Nm7ZuMyR5iYclyr9qMiYLC9LelOCc2c2CQURPKDDo03KDHRARfs+yuadga693.E9HZ1DGmr0htZoNfDbj9fzkXcJttdzb6MvQjsJUKzJHIlNPx3ik7G9Q2DSc1m.bfSkjjXvyEWYKSxJaMWAhBYujqVINJ.bzsx2HkYRrHPsGbuDYg7msvpL6qDA5dM41bLlSkIYTITj0TonlK34EP2auISMwA+FJBRzDk.tcLRV1FCwGYlWyfFBbvWnyFdgPlOotPud4H5r+2oUs2TWDVVbqKj+T5MKHhNajBtkaaZc7N.3j4uMZ6ikrNKZYFQwlVqb8Rkkz69AYYBlWMRtKCmP6VOzrWInAJrJCCYjvFKqKulmYrL2PLaagtYc8qVsZ8gX+UF5kjPJDjl1Jru2VS9sW2MxTzd3mjhWq0KOuf5j35w187XEdBVpqlUN5ZrnnsR3nFIpN6fnzDD5TjBM0DB1Cm.B+Su.O0u7WCwo353gFcVH1HDsmnUzm+LG4bs1xOTFBUNghgboeeRLmPrEkmldGgg0GK5x7xO0TxZEzX6zQbB0azftBSoVyPFsPh6VaRWBGHIIqr7DfNM6C.ZYgyeV8VU7hsOWqpVL11YNEK6p6UParCpohkoDMt46ZudTe6a2MEqz5+q7.9cefa+YonQu0+bmrtcIVF61BiVzlEOSkRQRRRgU3XyBrpYA6zlX1lLOMMM+3GpjURoUHEsrbMMi0J7oWHq6YeNlhViRkfa8.h1dHwowDGTmU3lxzNsSgo+WcrLpwMN9SK3oXA23u.8y8BLkf5j1X6nDJRSSHNsAcVymm4dtel44b1vn6Bu.WREPrVgmkUsFMUya6f9Fgi1aTaocr0P80ENnRzI1RV.4DWhbqS6US5b4HnzhkPqxIKr4Usz12ifZdH5IA25NDSJM0QDK0PMOPkjYlqPPpJtkF8xB8lHHyPWs8HErrnOmgDCYdqQIHnk10phxDkiVm.SjfVXjIYcTna04Su9RupvbE3zJc.HzsZq6O17JLrDtyYNygUu5UmSHYS.85AhZfbsmMK08lUKXypnb8504G9C+g7rO6yBPNgrTJYTiZT7w9XeLF23FWgU+XkRQTTT9Jgro8cbiabzYmcVXELdmGRDJc13tSRXYOwSgWXS7hSvOviMu4MSW0GIaNMk0JR3DufymwdwyEFgCHDL023QyTequc94m6+G13x9SLFoC3JvW5gq1klZGV4y+RvKsVXDcBA8p4dFanwipkV+qk7DPQIKLDwh9nNae7TBoYH78maeX6kEh9b5ZMwaszr15DYDkwAIDm.JEgggDkFQXpFm.ur6kA0nYbR1IPlY8siqKfrUdRoMW.lJgn32Ss1sxoRVc4iof9DlgnzRqZg0lMsqBINks51RVn7x0R5kJh5cef6G+i+w6CggIYgCu9P9CauuvtsHNNFWWW9O9O9OXMqYM45NGGGiiiC669tu789deOdKuk2RdYY5bqr7IPuskQQQYZAuytBQCfn2kidgVCwor4kuJjMCoCWORiiniZ0IJIAUm0IcR6Ai8LNMntG3605kWEr+SkYeg+87y93eR5x2CQRXVvxnzD3KQrosCKYovgLczBHILlf.u7gv2tnhTK.UKxB2VDENs1+d87CYIBmdIWyt4XcAKJte4rPxLu9Hkr4SUZc7hb4Cr6bHyR1dc0PAHcAWO7qIfs2Cooo3JbHIVQZhFBpAHIUmfD2LQKLVqKZUrVcFkeW2Z.AlIPsvFrHSUHIgLKdE45XHAoJiHWnx8NF2RVd6nZUl1ORo6s8LEvwpNZ7JkJ95cOfDHen6kSJ3udfjtLLsAwwwr7kubN0S8T4BuvKjsrksjq6rPH3DOwSj67NuSN1i8XKbbNNN4tymAkaG888yKqgBn.DNxLBWsfjstMp6HgvHb0BHMSplME2ftl9TgwOFvyGERREdfe.D3QGu4YwHF+DnQbLNtYcj363hHNkQ3Jowl1HjFiPCAFRdfBJdZOgeVjIY7gEsp0bjNsQuZyDhgV0VQpyKOoQu2h6R9H6EVjzE1.8ZgoiCflDkhvjXbbbQmpvEAxTAAtAYgcOfiqaVFIjLklx6voMRIjRgtHxudKJliJSQEqiI0riBx6XQkOu.I885ocnMsWZqJP4bSdEFdC233XBCCK3iv15wNbmr1zIisuKWqVMZznQ9uo05bqgMWe193rwqLLe2wwg67NuSN2y8bY0qd04Rc.YSj3m7S9I4y9Y+rDDDjWORRRHJJhZ0pQTTTebyOit1Bgfff.bcGZhde6g3KD5LsRiylrKGIH0JjZAMEZ5QoXTSbbYDyoNHMSFnVmYVXWYRxHzRBSUD3JIMLE+f.1911BaYCqm5RAZkBgDTpTDNdn.RRU36HQSll4nRAg.mzTvsk8s5Vl3oxboLGi4dVybn1UfRjQL4BYiRPn5sN15dbpiCJz3IDHTJbDZbEV0MsBgPlShJQhRqPiHaj+sLiWHRIyUYxefBPgTowukeQGnZMgi5j7JprU4lIJhBGsNi4t0kpp0j7JZIPsjr5lTZrvMMap.U5V2qxR0rlQFHZcJkBakJZ0NnkYxbY7caQq4pPJyahgrh1f7QnX857v62rqfMbOqy5rXoKcoDFFVX35FxscGbUO6.RIIIImrNNNFsVSsZ0nmd5g50qiVqy0N1bLgggDDDjSdmjjvxV1xX6ae6.YVWKDBl1zlFW0UcUbxm7IWnc4+4+4+gK8RuTV25VGggg366iuue942dIL5PNjCgq8ZuV5niNFRVS45UZyhdeRpHa3xRcV3VHDhrfnP5zhkpj8mBE3HYKRAxZAnIBezTqtGMkPXs.5wSBjhRANRIxrYNCs.bcxjSPnzPTyreLNIi0HZaYj09AfvAjRDtkzDHWRCAwII33JybSvvVlSa7YYkFGGQlU3Nsp6Jxr3UmhnYyrhrlO.333BtYDaRQutQmJNISJfXMzLAhSYjNt3IahlTbckDGEhDWbiBgHMzHKwV43jE4ON9BREJ7QAQpLlwHEjlhimCNHxrVWnQoRQ54AgQHPjIcgRAwwYsSc1Ixf.jhrpTpF7cHW9IRa4y7ooYdfB.AA.tfiHi2V.5TMBWmrcukRHNTbzMYcbYFERkuer6.bWzhVTteTaj7vdUFd3Nr80Yi9vki5OaWnyXMs8D7U1WmMkkcf+b5m9oy27a9MYricr4aKNNlevO3Gvm7S9IYCaXC.YxZDEE0m5ooiAiF3CERKY4DAYn0sqDID6.gP1B..hL+xEQqHbSBNPpSuVj6fDgD15nGU1nQb8wEMhHMaWCadDifMV2k8UJ.OWPqP0LAouONpViPOMA5IDd5kvpt66i07LKgst4sPpVgSGcRGidrLsYNSF0a4MC66jg5BvyHEalolooZp4lM5N5oAq419cD9RqDzJbQiGtjHgMJS4.eSyB4AOiLht66g3Ium6ksrpUPyd5gfQLRFy9NUN3S4jgCX5vHxBAboCfViPJYKOwBY0OvCydr8PjO+Jn9V1FdIojlFiv0Eu.WDZIcjjxluoeNo2+3HxG1ruCG3a+uF1qIguqDBSX828Cv1dtmm5hTDII3HbHTIXi.S3MbHL1iaVYjtoNvpWOoOv+CK4geTV65VMqUmxwedyg83Xei350RiZgBhRxBAxm6OwZ9s+Adgm3onmsrYRZ1.egCcL1wvn1u8k86DNdXlG.n0HcyFQf1pyXgQjZKw+GlOP4JTBtF4ALjVFLbWxCCrCOay2KSPaHyCBBHLLLWFDy1DBQtzGoooEb0NeeetrK6x3S+o+zEzgtYyl7k9ReI9ReouTdGE.EHoscyQizIFK2M00gh14xdEgx7gVKcVZY1PnaQV2GOBfVSD2n5lK3p9pPTDjzrkjEBP5kcBlxjfZ9DATWHQ56CosB+4vTZ7vOB24Uesrl4+nDr50ynTYI8ozDMJWO5QAOl+uD4dNANfS5uh2748Af8Y7.oDKbv0K.oSl+f6HEPXB2x27aSOKbILp.ezggYxxnSYq0bYhe7KlQGzM21W4qxK76d.ps0sSmxrkQr0Gmxy35x8cS2JGxoLaNtO9EhXripEqkBR0rjG5Q31+ReU12TAiUIoy3DBbjfmjj3DvEjoBj8Dwu8Z+9r8.e5QDy55LfOzLND5dBiOaDBgoL+a4Wyiby+bFWfC0S03nfT2ZrZT7+5LOcF6QbDPyFrjex+MO7O6WRzy7b32LFgijWPjvQcxmblE1QZDRADGAK6E4d9VeWdt6a9ndgUyd3E.IgPZV8bUpT1VsZb2W20yTOtilYOmyBwgOSvWiqqCoZMNFWHz7fRAuIoB6t.250qS850y+AaMe2cvpZCAoIJ.gLqZ2912dNArgPLLLDHy5ViVx1ReHDB788yIRmzjlDe8u9Wmy3LNCfdkDZ4Ke47Q9HeDtka4V.5sMCfZ0pUPubiLL.zrYyb4WLG2NKJ3AWsDNUpk3oj3mpvQKsrZVzJ59TfRfiLy8xzlIyxA3POnrgVK0.wsBUZ+rB2wgnVD7I.Rcb1Pt2dCVwO3+la+e6+hZqcCLUoD2TnCOIJUFgmvQRbK8W27KtbV509iY42+Cv69y+IQ9lOR7pKylDME3HEjljfSTJS.OTJG5NQiJNEGfTeO1TrFuE8brfe9cxVWzhXZNBbkNni5Aeo.ovAjArt0tId5q6lIYaam+WegKCFSPlLOIP8nTlrRxjiSQFESfiCwgMvy2I2sJ0BEcJcHHIyiM5A.YBdIoYtxhJFbboKELdsCSUFP8zXzIIDohwSC6eHv7eRtqq5ekk+vONiJQwXUoD.Phhn.W5zwIib12GZDB22efa7y9EI8OsJ1yTWFI9HaDSpJAWGAdIZhRRIgD11p1Ha3mbq7iefEvI7w+PLo22+afPb5nihg2o0ia4yi5N8SfU3UC3dS2zMw5W+5ycWLaYCRRRFxlzqckvVFi50qysdq2JWxkbIznQi78wXU8EewWLm+4e94SXpczFZr1172iXDifoN0oBzqK78G9C+A96+6+64Iexmrv4WHDbAWvEvG9C+gySTS1RpX1mN5nC5pqt1k215l1aBLJ2TpbOfPS1ZmnC5TUtrCJsFom.suKopTbj9sd21MWK5dG8rNyw5Baxx9w+Dl2W4axTZ.iLQxHcjjfCogMIP5PbbHNtfqPhHQwHccnmFQrlE9L7c+G9+x49M+Jvw7FHQjPfe8LBDOWvygN0JTgg30SH0cbQQR1DElp4gu4aAUXHS.MANRjBEtBIdsl7tFacaLofNnCGGV3O8WvAdXGLSZNuGHvEDNTS6RGwITKJE2VsAtd9nRU35JoYXS788QqRIHEzoJbbELJbwIsU2eNNPbOHihXj.01dCBhSvSJHtUy8JevGjG+tlGaZkql8RAcG3iJsYVtfILl.WWDoIfiKDkRy68A3m9I9zz0p2.SvI.QyF3njY9muTRZZDdBnCOAI5X5TIX73xFVyl3lu7uBmguOi8ccJY5YahocAEWk5MA6SE1s.tSdxSloLko.P9DeYzp17aC2gPHxmXva5ltIt7K+xoQiF4tAmgf7ptpqh4Lm4.z2LfmA1AsBzqUzRojq65tNt3K9hy0i1HUxHG4H4a7M9FL24N2BZOW1xYyHUJO4kCEn2.fPhPm4YCBMnQfp0KnoZMIlXcVp.gFgCnIAgPhT3RZRlNttRGTpr1tTU1vwEPlUfnx7pinD39W.2yW9ek8Z6vHhRwIQQTbJH.eu5YmpV5klljPZZHdJOFkqGB.uWb87q+m9ZbxW++IAiq6VcX.INJ7IlzjP7DJp6Inlmhv3TRRRnK2ZzrmsRMeObckzSbCbvISxAULZGGbb0PbOzYpjoUqF+tu+OjS+zlMLtw.oPrRi1URTTblk7BARoG53FHzZ7kdjnUfSq1.GIotBhj5LOlIQA9sZOPQfqGNIw3I.WznRhXbt9r5G8wPDDv9NxQhHNlznsgTnIJNBomGBGAI5zrE2gUsA9Ye0uI0Vy5XBRGDM1J0pEPZXJMShwqyZnRUzSiFDH8HTEiiiOtMELFUGrOZG90+K+ab1yXFvAu+PMSlErWz6jK1qubWgg2HmgxPnY6RaPuZ3Nb9iVqoYylLm4LGd+u+2OqYMqAgPj6lbGvAb.Lu4MOlyblCooo4xjXqms8DLZrz018DuzK8R4bNmygMtwMBzKI8gdnGJyadyiy67Nu9DF5l5mcHkqTpb25amN640NHTHPmobQVMoWW3SzRFDoJWiZcNEe1LN4316DMIkRP3fiSluAjKahVk4EBgI7PemuOiYSMoqnX5TqolalejKEtDofsjjPje.gBGTddTqVGfRiNNhNUBlXpjM7nKhkdi+LnYDj1xslIyuvckBjhTPnXaaaqfTiuKHhhoyfZjRJg5Thb8ngqKH7v0wOy6a7bHvIaNKGUZLQuzxYiO5i2JYzIY6dNrj3PdAolUgls63RjRgz0OSZHQVzGt0TEqxWxSSDKT0jWzQylUIYdShPCtNHQPRbHRUl6ykllhuTitYOLwtFAiV5hZKaCURBBWOZJEDWuNgdArMyZWoPxRugeJa9IWH6kec7Z1DWGMwwgfiDQfGaIIhPGWbGQmDKD3FDfPkRfijZIwL5lo3t70v8c0e27Htrs1M2FeWuBCeg6hW7homd5AOOuBQjnwRxcVcTssP2P7YGd51ImHCQo8+aSzY5HQoT4SzG.aYKagK4RtDdnG5gJTlRoj2065cw29a+sYzidz.8po8ZW6Z6i6G1nQC1xV1BMMt3kTRXXHekuxWga9lu4rFrVSDYZZJc0UWbdm24wZVyZ31u8amsssswJW4JyI5MgYtszLie7im2065cMjDYhYMZTJZzxTeLUHak+GZkDJZEMd8NwiYlVqx832VanUviT3cXsFgchNJsUnLu3mkk7POBSyO.mFMQoU345QbRLZGOZJjrQojn3PBTZFa8NHMJFOm.zpTPARQBc6H4AtkeA6266ckGAfYxs6fNMFoTPRpDoeMvQRRiT5vuCZjBMcpyVHkMkjfuVv9TqSb6Y6345BJMIBMI5zLs56oAqdwOOi9uLaMgbxG2wvewk9wYhQIT6kVGy+m9yYbIJFoCzrQH08BPjnItiQvgblmF8LgwQCGMM5nFi7P1+rHFT5jMZDkBOMHwAsNAGoDEI3DHILtIRQcbb8HV5v10J1fNkvXHMQy15pSh0.aaqrna6Wx966hd6MP35QhHFDtjpflZG1nJkzjD5x0kZBepojHUtjf.giDuzPFszi+3u82wwuvECG4ghmiL2U0cxeFoxL5cmf6bm6b4IdhmfvvPDBQN4kgfbmkLw1eha2BRfYB+bccKDgjFxVS.pXH5sSr+sqdZJ+ff.9TepOEW1kcY4ZECYjmejOxGga3FtgBxdX57HLLrPmKF+tFnPVwy00ksssswG+i+wykdw1EAsixSauoYlyblbxm7Iiqq6PpE0s6tjhd0krOHW+59qNX5vNKy7YXtyBEYIDlxK9jOMtMhQssFT2yEgVSXTCb5bDrNEzXjcxAeRm.iYhim08bOOOwceuzUTBiVJQGGSfuCtJM9oIDuhUCO0SCG2whvsk+XmZ0QtvIK1PRRQ54RXphMq0rsw1My3D9KXrSYJ7hK9YYo2wugIVKf5IonSh.gCtdtjljPceW1xpVeljEdRF6ANMN9YLcnmHX9Kj+vcd2Dsw0QTbLAAtzSTHRgGhl+vbZM...B.IQTPTM6jo8ANSXFSKSGYoJKlscjY4a6Vs+xVwhhVHQITsBBIH00kXkCaS5vpDo3uWimC7McjLlIOYRibXAO2RvoqQ.qbkzb0qhN1xlodPmnUYt4WCklPWO1huGS639KXeN3Ch08hu.O9u42RGaZqLFWGTIZTowTy2gZpDXcqmU++7HLgC+PJj5QxyS2UX2J31SO8PO8zStklFqIMtm1NKQsgjydhJMe2.ikq1a2PvaaAqMAngTzFlqgwMtwwUe0WMmxobJ4aKMMkW5kdIN6y9r42+6+849Ac+g14C11+soCk1scSGHFxe6xyoUJGc3vj01qeXa8haqgDat8X65epTMJ2Vq14JXEO6xHsQL0c6DYZLoIBp42AqHLhMrWSjy3y+YfS5s.5DFahjIey+R9k+e+hzkVhuxAoJKaSTGAp0uIdwm3oYJu4iMSuXUVnZHktjjp.WWjJAp3Dj9NziVQxjFK+u+W+BvwezfVx3Zjv97clN2w+92loj3SPiLKoEofShBu.IIMalMpAA3TyKy2lc.7cY6gMYzNRzQZjdtHTZR.1ZbyVQuXpQ.eTsx2cNlruGPpLKq1kIIuDMYdNUpzgs5.qaDAbrejyg848cpP2clE.PZWlJYAEyy9itdh1dC5pdmjFlj4O4pTZ53vJcf2wk7QXjevSCp4RWBAS62c+bSezOENqayLZOWbkfRjfHUSmZAq5YVJSHokwMEdOthrd2MHsIjry+D1xQry7AnfEw.Ejmnbj6Yfgf23wDliqrF5VWHjllxa5M8l3ttq6hS4TNkB6y7l273DOwSjG3AdfboS.JLYdlNOrsl2T1FB11MIql5ks09ksz2DR9gggYu7llN7yiZrM8xRCSEsL.2QjE.1I.JGZrgsj4JbjkrfbjtDklPCWIi8HNT3j9qfNCft5.5pS57cbxz89NE1Zz1Q3JHNNDsNSe0fDXiu3x68jZ6JYZAZk.oLStlXklsJzLgCelvwczPmtvHBftpyn+fuezSbbrYUBJmrnfz3i7pjX77Mw3cLZRaYYLfJAGeurNQQPTilY4OEWGHvCHMKTAcxbHcoYk9okt8RsJO5+zBiGxHQocX6.at6QvY90+mYe96OGXuGOL5QBivGFoGzg.7bHrmPbkdnSx5bOJJhznThzR7l7DYju6SAF8HPOpQfdDAve4ww9erGCMDZZpRZ467Z7bkLRoOa3Os7hwQd98YUuxXUo.xtEvcTiZTLtwMtBjp1Sr1NqWeXJmnnHbccy8DCid0AAAroMsIBCCyWVqLoZTgPvgcXGF6y9rO4Dw1Z9Zpm999zrYSNjC4P3y9Y+rzYmcVvWvuxq7J4xtrKid5omb4cTJESaZSiC8POzBVEa2ofIcmBjWm877xaiRSSyiDQy9a6oI1V+at92u8a+x+sgCn76oEcgqLKDiMeWzRiyTEDqYqqeC36IIoQXlUqdRhRiI0qNieFGT1DjkRlbA.3WiIe.6Guzy9rjPD0pkEXIZsKABAgaYK85fuRfTMoZABYVDBlkkOcooD1rKbnyX+yVzY0NsbCMMzYc12i3MvKrzWf8vOfznTzRG77bIUE1hbMSJEgPfVHP3lo+dZZJ5nD7jNnRUfPPBZZDGB9tjmfsERzZUgFJWE3mZ3wyFqhFM9AArojHNxO36FdauEvSlEMRR2rouUHxhqnvDV8JVIQMCQJ7w22gznXzBAaUkvzNxCGp2IfaKIsbw0Qxds+GDOq7tyRvVIojJyZ7bR0PyXHUm48OBig+l5cBYyEfrhqd2.3d629sSiFMJj2jMDkl7p7NCJG4el7zb850IHHfm9oeZtnK5h3du26EfbKckRIm4Ydl709ZeMlvDl.PwzQZYXjQvVpgMtwMxm5S8o367c9N44W5jjDRRR3zNsSiq7JuRl7jm7.V+a2DpZaoMzqa2YWWLVfa1lc5O0PfOT5dduhgcTq0FXRz7p7cqUlBJIkns0CNoI34IPmFgV4fmmCMSBIXjcBdNfGDmjhmqCnRHLo0hmfR0hrLEUZVh3WEGmEcd4AmQVFiy00AQLnRSysxMVjjsFFhLKfbDjIKgmlHoDgqKwQI3YjYRkBRAw49Vb1DpkfBOspUN.EB77wMLhTDDmjhv0EsPjoEjfd+eceCXIQqQVjkySxNGapml3tW6A62Yc5PMAD3iIOb268.EncPjnwS5hRoIU2JLvkYWq8nSfNBJc+RROoJRjN353SZbCjRWDJAhTEc3G.JYduu8ZxUqzJP4TtZEF1BWyRCkYn9FxDXnIDm6Ox0nnHVvBV.my4bNr3Eu3B4UCWWW9ZesuFW3EdgEpKkywy1DgFYDrSpR+s+s+s7.OvCTH62IDB9G+G+G4xu7Ku2nOyxU5rK6xd9h8DDZesU96l5hMQrsl0F8wM9p8vBXTbvjJRaYwnTzx3VjjpSak04DfRmw2IzjhBe2VVYlnv2yi.GAD2.pEfzSfJQiz2m5RWbSkTS5iJNDWmVAdgtUBgSq5k2vARcDHzJbDtH0Y7qBc1DZ5fHSSlDcuKQLoJj0pAoJbzBj4S3bBBmVRW0pSfDUblbJ5jryulL2YKIEgVimTRhFpGDzahPRCowI3jOo6ZPlkeURZEs1N5LKrURAo0CX7GzA.SZ7P8.zJYA8+Eo5rdASyh1vzzTTBWhToY9YtPiNIFeWmrnfDQV9vNUC5Tbc7QH8INF70R7MKFCZEQgw8ZJsIAFhHKGtTEK46VAWaMTamOTuyBaRZauz3FuwajOzG5CkG8fFhwIO4IyUe0WMus21aqfmZXH0rI+rqyFnTJty67N47O+ymUrhUTXRCG+3GOW4UdkbFmwYzGR3x+uc82zAR41mxc.Y6IJl82dhEgdmDTSmDCItn2PAL5RCPtK8QKYBD3fJKsjl8iPRbt18ogwjhSqbDsCtIZ5XyaEh.1RiLuDQqgsEgWinrIETKvysFZxxZiBkJK5.IEz5LIIbjncgHcLJbwywgDc1Rclv2I2J3L8FHSRFeWZ1pt4oDHRSyHFERDl163XHvOyJdnkE1YWawwwYA6iVm8IIEcbZuZ1KEsVgWLHKciFKgjVQ2nTSKAEzr0vP1uouufmCIBQV.Fkl4B1nyBWdSlwyQHyeVQpxHSSSiotqCc1nIr8rTffHIEmzDHRSWQI3FlMor077IMtIgpT7q0Y1nOZwGKrlf3bTwUuaCbujK4R1g6jwJUaxJiTCFxFi0jFRUCgrs6oYjlX4Ke47S+o+z930Fuw23aja7FuQl5TmZAIWdhm3I35u9qufqwA8R7ajZXsqcsr0stUtq65txy0G1ky3F2331tsai++r2ad7V1UU899cLmy0Zs26SS0mJoRKI.APffRiz9TjNUZTAunhBuqerKJpjqWufh5k7PTd3CAD4c4dyED7pdg7jFQkFATHBg9.DCIARH8oRUIUptS6dsVy4b79i4bs2qyopz.IgTEdF74PN0YuZlq0ZuFyw7232323i7Q9HLd73INRuu15vn2XLbFmwYvq9U+pWS0ed+pojj0XffFRZ5LSmzJJZl+0BIwLJ2WP5zX5fAQqnwlqzSUXtXjq+C7w3vesqklBKiidjRC1EVh5q3pnzUfWkjbhle7XEIqqHIXFDMMYPL5wUXvW6QPIZgXggVMR.ErQxxFM1JCT2RzjRrmIlKycMIbT1X5u0gY9jdlXBf5IIEND7S7e4Lcb51L89UNIbxDksxf2XvmmmoqOHpBnNCgbVFktiZVYCcRtoIHIphzJ5jpHMM1iHBrILbvO+Wkq9k86vpCpnVhfFXSXYwu12jsGgQFEeaMUEBCJJX4XahQJcY3LlWzgI24x0tqoMf833Ay8FdCug6zMnui19XsBbDQO14rd8Nf6acIyqe05EBA9E+E+E4M+leyqIZUUUtvK7B4k9ReoSJa69zFraaWuv9ud1qz8295e8uNW8Ue0qAFj6qMU00jfzG5C8gxevevev85kP921VuaAVikflvNF54SRfnOC6g0lYRPfwM0LJn3DKsJz5Sbde.FV9puV1+UdUHFG0wFLUNF3DJWsgRLHtRBAEm0PPEhgzx9SQWFRigBKVMKE0ROkcbcysFmj8wtDkkKO97mt18IiYalG4ITPxPWIojmFj0bzlZcB7LqCp3bTzhlb71gHbr21Msqimgl.MMgXGCLlBk7Zt9p80LX3PV3V1CWysrOpEPJsngZt0VOa0Nhp5ZbCpPcJswFZhBpqLMomMtF89NMls4Fnvw.AJrgc2xtK4GV+ppq+eqOlt8qdv9RDZ+k72O55tJ1qqbpe8u9WOm64dtSbb1wa5W4q7Uxa3M7FVSwmz4jsejv8Ga8SpX+j10sc84o8QS2nu21V+4oiphv8QkP92hlhRLjV1MFg5rfD0MxhYefh0lgWvmbTW3X3vgTXJv1jvzMHJnQprFjXKCbPIgTYp6WE7QhHXLNPaHFhDDPbEXLJ1pgPgCO4uXV2PQHhKpoZLQSb3tLDwZmpDfS5b2wDDBc8X.E52BGmz+FOp9mxQ.GLoeT0jaUYcNr6oKF8RtZWeWrHy5iTG0YsrmoKBafDcrUnvjRVXf9cf8tHr6lvHhopfl1ZFokLeoilnhuokAVAwHXaGSwfBpiqhOevChAwXPMZ2xHRIUbxy7z0k.anddGmX2sbT2EwbmCu0G0ZWTzcNn66Lsez08c3qpxYe1mMu025akm5S8oBLMYbW+0e8bdm24wG7C9AWy4seog2s8.Gwm2Wqo6ym69Irr+9beo0A4Q+I75O9t+1RK2epmmRmaMMpZLotMR2eSLlT3idOqt5pLPRI0R0PpA1FBzpsXHI4qw5VJjT7apJYoNMobekkkD8QZUCq1zRqOBhCqI2QCrtTDp8nVsnQrpsW4vutI6h4jBRj35XWQWy1sO+gSfij0G77+tK+aZu8a815g20FYxDFwbFO09Oe0dfLLY0AcyBN8fYTvoJplbVmf0yk3WcafBUnTrTJFpaaQLFDqgXPPrNDqAQrT6Coh4QRbq1rtqAyQCy5MriYM2a7M9FuS2fhhBZZZlrDd.dmuy2IW1kcYSvstyo2111132+2+2mssssslF3ZemTcI.TDgG8i9QyYdlm4ZR31G4i7Q3W5W5Wha9lu403jtpphW4q7Ux4bNmCKrvBLb3v0v65NtJ2AkP23d8Q9CSituO7I2WY86GidumcricLoMb0M9ue0hJcc55XHMNMwHlnzoNRIZmIIcAQCdbX.ofgtRZqqSpiWgiPnMQ0Mff5XkZOh0xXUPBBFwfwJDCPLDwHJA0gWJRp5mV.9jeL0mDWJkoEPRfTmnoi+dJlIPFDgzpBnWdPkoN4mTDJcenLsKbeGYSbreTri7Omf1HZhIZRm+qgtMrC65730SO+yYu9QIE7qCvjaFLisFDaAKtZMBULpX.0MMrz3FFNZdVpoAaKHlAHpfOBshfWg4JFBwLSo6ogKShxWYMSRrgcrq4Nuy67tS2f0ii5q407Z3xu7KeMBNjHBmy4bNbAWvEvi8w9XAlBAArVrr6W0e8a4U.b9m+4yq6085lz+F69rS7DOQd6u82NOqm0yZhDg1c7WOml66Pd8igiFKQtu1Vu1d2e7c+tSZ.jTSWMp9jitUFmJXiflStmEaW3qUtjWjPLWHElDV6s0rZSCHQblBVp0ypyOhwCFRqKlDbnXJxcmIhFCDCJFWAdDpEKKqJ0adljNb.HEIlhD6HzggIPZDjTjuonQM4h4Na4U6SNMgldNqWuMgt148ahCrtaM8CatuyrbNOmZo9S4TXRlbDPEMMV07OlDUGiDvlK3jti4jwkN8+ZQXUU4vCJnbSak82DPJmAu5QkHEtsPaSCkRtb00HdmikPwL6Pv3xXqGIRXJtz8vaeC6Xe6tD5iN5ss7xKy4dtmKW3EdgqoikKhvK5E8h3s7VdKL+7yCvZbh1mcC80.5NXHrVK6d26leyeyeSd+u+2+ZXQB.O4m7Sl2w63cvYbFmA.SjHzNmdqu5I6u+cPzzgKb24b8Pnbeo0cN524y6DvoiEvnN4K1jhT8PKxG6U+FnZO6igAnpzw3Xj1BKqVTvi7G8oyI7bdp4W9SEOhD8zHJ1xgnZfk7dVbz.9d++7mic9e3ELQ7hPJIEC6XRwSZyq+N0sxoEX9sByUlxmnBNiaRTsplqcCURzfKqFfn8RIVz.QSuFlvTaB+q6vzXZNSmP8ttjAZyjkHHzStX6ssrNebFn0Ptp.0rSQyj1g1jMJu+NYcSRj+61XNZ6bTtZtMZcnlFN4m4SkG848a.CpRUIIZZEOSZhvIkjLM3AZivV1RVOQHyREx7mNhZLSp1zMri8M2cUB0bNGWxkbI7K7K7KvUbEWwDGMcr237O+ymW9K+kulHWcN2D5u0ss8if1XLLdbp6Y7o9TeJ94+4+44ZtlqAXJN1Figm6y84xEbAW.yO+7r3hKdD8zw0qvd8iZsicJEEErvBKLgyuqWCStuFm39miNGyyM2b2iq3yI15G94tOdLixrno+c5+SXJyHllrsnBFUAO7M+nWDadO6mJeCVMhXbrjQ3VP4TNyyjS3G8olx.k1hqpfnUR3iFTLFGQCbXEVcmaEN6GPtCfyzrVI417UDf.37IuvgRfh78oL9oZpLmm.AQmSxN3L5EI8Z9sb0AZ51VIhI+2RP.ziShxz6GIKNYeUl5f+HxLI81W5fUIoe08k7HiJDmTjMSuFL4yYfoIjL+sDhhPTBjvYG7VG9MOO7vdvvLEolKbWGgoKZ8.I1xXIMaSWEI1eFgNXt5kT0M7Se7g49g9g9gtS2.iwvkbIWxjBSoyA311113c7NdGSTntNmq6d26lW9K+kyMcS2zcK7euzK8RYokVBf0DIsy43K9E+h7jdROo0r8emf2y2aZ8kmU.N6y9r487ddOLyLybu+DEF.7n1oQi0UrCsZ5Y2.Wwj+dVO3vJfIZAoj47F1FNFVoXaan.CGPEVY3fTeHTMot6hKfOtZtiYanJJohCw5PbFVLVmnBgcJNxX.QbIGvwbOGT6fvnJ2gc6kjqobaKUDIYlUzX.HlhfU5sY4B0IX5RtWjn3S6qlXMRThc0nRFuZCRrAbABEIHfH5w3JwGUzXjpbKxZxXRArdzX.wXAh3hFLQCAigfXvQdLHfoClACjp3yHpnjPgOzMqD.3zTSZngHhM88lnHn1pz8JaIQqjKlEEASBtHM+fzQRY+Ljl.rCpuHHpq6KISZqZGQj8aXGSZtK9hu36xMpppZMNHeBOgm.u829amy9rO6IQHaLFtnK5h3k9Reob4W9ke2d.zWOn6GkYSSC6ae66npneGuZhHL+7yeuZRL6fQMDBX8dvJT21jqDsTWJo1WS0vYXFwx38ePX0wokDaRXeYyXHygVjMUThqogBy3TWlpNvl2zl4lCQFVTlhTKCVbvnf5wYbH9VLp.sAn.ppJxQNGAmIUaEs.6e+vxq.g17nOjDVoPELyLvN2TBJgwqPgaZDrhJS3n7Q.GA8b1rFG2IKkjt9jIt2pYxrKgbgSI1j9i3iQLFKVR+cxPtgBQaBi59PXmlLPVSj7ow6TZ8oPpD86MRjIXRjRxpw3H3CLbXEK2rTpAS.TOtEbU.IcKwZrX0.59tcjUZgZOzVCUVLNKzzByLB101PsFj9E2RFi86kVS2F12Ar6V5rYW26Ffy8bOWdsu1WKadyaFXJDDWvEbA7a8a8awxKuLvT0g6Nq3Wf0pgycVe9V+cCVGN8csALf60vHuCF.qoHEQUSKad14XwVONSYROKbBs0iQMQ3.GJUJxi73DWJpK0mzKi8uOpWZA1hDwEiXPAmiEWcEryNKaa9slAt0B1JlcSahFqhe7BXwPUQEQOXidFenC.9FnJ2g68dXbKelW8afu368uisOyLXBMXDkUTgCnVdzuvmO+fm++YXVGEENHrxDmg1bTwcyoD6vOV0zWh6E8cTL3MBA0LghdFSOLmUfXhIKIc1.nUvfEIqrcgXpnaTigkFuJ5hGBwDIZLDMPPM3xs1LIiWtUUrZL8Sdrz2kbBRjtm4cDCTm.B+vYFw9wQjzpSJvge0VjbWQmr9cWZDznGZ7bE+Mua9vuk2Fac0Haob.qDaoQDTiis+3NGdduy2DgQEXDaJAncH8nqk+1aXGaatt1Y0clEiQlat43U9Jekbdm24slRFekUVgW1K6kweweweQ5.1Sn+A3t532uRF6b5udFh.2wQSer.WjuyrtVFVmrnN2byQaaKiFM5dkFGflCZ0N4vDY9stEhFg1fGSgEg.EEVlGK23W3KCW12.dhO5zNSHwvi1Hes2yGf1ae+TXLT.ngHpUR3PWVvny3zSXbpBTTv76XmbKgXpnXrBswVDSAUQXgq95fZEz5r2QA169319TeNdXwBb6eIpLJhFYYmEQMrMMMIf58HVGfM6nMEMbBpcknIyp6IBH05tm.qAmdiRt0j0AtcB9gIQXFR7M1VTRHrP56TFGAMRnUY1ACwu2akhEVEyrUXbFvLMxVTyDZ+YHcMkfHVRPPwzwXLW15hloGZHmXUIvl29N3lJrHQk5lwTk0G6gVG69x9Zv9ODTsYXbJxeV0y9unOGmzsc.d.C2BlkVfnXH3J31apY1kR8fxTJDyEWyDv26tGbLllnugcTM2m3S7ItS2ftH+17l2LO3G7CdMBMzUdkWIujWxKgK8RuzIaeWii8m8m8mke8e8e80.cwc14.lFEd29r9HNWuX8e7f0mG5FigACFvbyM2jjtdugYbItTTPDagi410IPb1JVc4FJz.3qwXBroAi3DWNxG++5qgm94+6.OxGVxW0xi419q9a4JeWe.NkQivt7RXsBMwHABXlcVXayAm0ICER5mnkg67Do1aY3nsRb7JT2VyfQCYF0ydunOGsuy+2T7S97RZv79N.eiK3cR8t2My6Elon.soIqEzB3JXGm5olXwgavjj20ZbIQcJWTJQIlR1lgIIbaMIDrKwiXvnQr4JxaM7gtiGdckus0.iFPsFRRKZ.LEBAuRkXXzJ0bkW3+.Oxy5rgSbqIVWLrB2n0FDR2XKXhIo3tSzm5dN062j77DEFWZhRmvVO0ShVqPvZRPfjGOkgHtq6V3FeS+24z9Uewotn9RKvhu62KG5y9U3zbCnv2.DoTgU8AhN3TdPmIHVr8p+vtUjPlTiazZtN9vbOwm3S7tbi5SmrNLoeOum2Cm64dtr3hKtFNU6bN9i+i+i4292929NU+n6riVB0NlRU4tGZczAb8Rk55KBmucMoWRgLVKfmc8ndDTO6HVtwyliNFVjnFXypqxVrEbvq4F4c8e5UvnS8jX3vgb3a9VP16gYK9H5JKRQgEuOPQUEdJ4lO7g3A+S9bfsu4obKqzxI8fNKthpY3PKtLyWTxnpgrzJKxvACYzgVl2+q6MSw668wvstIV4l2Kiuo8xNsNlGAquMEwZPo0IrxvBNwG+iYZxu.PsHpjYrQJR00Wgc80dCYBiNf0i.qhPnmnGk12HZLGc5V1LgBGXcz1LFiwgQi3vvL9HW2m3h3l9lWEwctMNv7yvy428+Ba6bdXqoFr6hjW6lLQhGASQViawNbcjTVG29YeVzTYY45ZlyZP8M3CdFUNDqOxk7tdO7k9beZl6D2N98eHV5ZuA143.yKVVotFmwfFhHipX+wwbBOzGDXRqVo6bkh7OlGKoN932c7l12ca2sJg70WXFuhWwqfW+q+0O4y6rGxC4gva6s81ny4+2JXvdz5khGswxc01brn02Ic+ht4dqqiPalZsXAsEdPmImwi66ic+O8IYPzfT2fqzhyonhgsnQJ16gHbaGhn.aFgQEUPaCyMXDZaCpJT6gwNgpsuc99e9OaXfYJC+bvI8veXTt8sPn1Sipzt5XpJFjfwPpX1VCG7xtAFaT1R0.nNxLVOFe.eaKUUUDMNVU8r8G0CFdf6BxAXZAPLotlhWvFMXTEMZS+dzhQszUvKS5j5Rpqp2oAfwLcE8lj9VLoxDy+RHmPUleVN8GzYwJ66KvrhRUvm5kJRjQEVHzxBeyqk3MeKb3AVrG7P8get2+oGyo0Xh1iYqaZjNHHR9Li4pmI.OfShS+w7H3f+KeZpTkgFCFIsZhP8JrMWIsW6MS60biTXU1dqmggzApvZIFTFTMK6OFvdZmHa9G3Ij.hdB8BSSr2o9owMhj93Fy8Y+re16zMnSFQKJJX0UWkW+q+0yG9C+gOBmlyM2b7hewuX1291Gu6286dxmcWwtg9k0cWgozAeRWz62Y66w5LAo+0mpJm1ocZ7TdJOE.tashi65SPObGiQnnDTgu+epW.u8O8misrTf4bULd0EnzYvHQLMsryhAIZCBznAzv3zph7Ahp.1gLtvxM3Gy47be9T7X9dmp6yPJrvSeW7PdZOYth206mSvCy4JPhAh9FpbUHMdNYWhECztLUENZpWFWQIthj33uhnbHmvOxOyyG17fTcvXHwmPB4BEWSQoN4h1jKJkDd4SnXVGNvSveElfw.SYkQ+Nvt05RIoa1gbFeeOR9xelOGasr.WafJr3idTMxb1RFXr3airZUACR0AOnquRW6NW4wGSS3aG.NqY5YSppAUDjgNdDO6mFumO6Ey7sFpZ73PHzzvLtAXro5Ov4bDCdzXLkKgX.mqfFigCfm8ZTdTO2eX3zNwdyHvTG1QPL8tusgcLu45bZbWYquPQVusvBKvu2u2u2c398uWs020Xd5O8mNezO5G8dGmzzyYuBXM3QwUXo7o+T366m8Evk+V+eyPJorZTho.QkBqkF7oxa1nD7c85w.Mdkhpgrj2ydTkYdxOFdjm2uRJjcqap5Lo.VkG4u1+Q9xe9OKG9puYl24vW2hwBQoAm0f06ofHQGzDWAoLWPG9HMkEra77P+geVbR+HOiL9MJh2mXVhTiJMzXpwWZSUfWTIFAwjcv5iYHpkIIGUsJpFRCw.HVAsUw5fhPW02zitZNCnQd3+j+Db4+8eHV7ltUbdCFuG0UfHJg5FbtRhRZhi15ZFflCSN2t4BJs.CLUyLh5kA..f.PRDEDUPLfHVnUozjF6h5v089fjGup.lT2wQbN15K74xN+D+yruOxmh4MUXaiTDSSdFCsfQoQaovp3DESLPquEbNV1ZXuNOCd3mMO5e4WLTZ.Wpeoajd05SFJDIik+F1w9loSnjt69y5c71439N5m+8topNg4K8umz0jEtGalbRwLwTOErSK3pr78+a9qx22OyymqQZ4.VCMECXo5VLkUL1GH5Lfwhqrf51VZhJ57ywsJJ2XkA247P34+Z9uBm5IlaX.LIgcHI9QyosKdwulWEKuqsyMPKGtDZJRhfupgTaeJjXAjwVfOZXQfCNZHWqDXKOgGGOge+WITMHwm5Xl9eDgXjfyPqcZqtxTVgZMzFZxryvLwYYWILFCosCwBtBBpf0UhQJIUoKJDSNx0tBtwXfy3T34+JNO18nB1qQvOy7TasDEG1pQf3XbS.ULLZznz8DM.dOQDbCFfwMjwdEOEDhBlxRZCZdYB.hlJxEM6oTH28wxU5yvR9w9u9JX322CmudXLGppf5hJZBJ0sQLkCvUM.ezPSHUN8ggCYoxRtESj5GzoyK7O52G141.WBVHsW0nNUDl5MQ0F1w7l4txQ6FNbuma8Uwu9ML36ohxTp0upzRpCoaro76awQH3gssIdTup+y7C769axtme.Wa8xvrywR0JlACoIBwffFMXjRpMEbCsi4ZGJriWvyjeh29eF7vNann.silkcqrhXJvzpgXeROA9oeyuNBO9GA6YtAr6PKiKbTGh3iPYwHbtAzzBZwbbKsJW0fBN0e5W.+v+2+ygSXGfoffOUB1fI2GDKYwVOqfPiJTGDZhAZTkf0RvNwKWx7JHNLFGq3Crb.VpMxpQgUEKKqPcNBVJJRSnk0G5fw.CKo347L3m5M8ZY7C5L3JWcENj5XgV3viUFSER4rDnjZemyuzwqUrrjGF6gnL.0MhZJYg1.0PFX3TE6H4ZjeMPbqj.LGK7.NCdd+4uVNgWzygKsDtoRGK4pH3FvXsfU7FZojX4LrrNf8ap3JZZXlG+ik+i+2divi9QBEUD0jrOYwjX2QulTfWRJtxFuYe7g4VeIZud66lXfw8GVWjyVqkwiGyC4g7PNhNjy8DKoMaF5nCQXrGaoCa0.noA1zHNyekeNNym7imq5u8Cv09o97b38rWN3BGjgUEPSCw1.ilYSnyOC63Q78vO1K4mhxm9SBFVhhlbr.DBZljC4JSraI0kNbOoGMuvGxal889+P74eu+8b8Wy0mz15EWEWrg5P.6vg31xHNwG4iim2OyKfgOymVpKvNLU0ecEfQL.FWA3bHmxIwBG3Pz1DXnXwJvg7Mr5biXwgUbhEtof+VjtdZmeFVZ6alCiKceuwS.gkKs32xrIm6c7d1jtbhNHDEJGVxldVOMdQO3GAG3C9w4R+D+Kbva5lgUCXEGKtxxr5N1LqNnfQkVRII.p29bbncLOVSIEsA7gFLC2Dik.0aalTj2FGpFmPUSgbhSMj0oJSlm5Q3L1EOy+jWMO5m7mjK6e7iwM+E+JXFWyJMs38dpbfJAFrsMy7mwowK5m5Ev7O2mEr8YRZAhQVqBlp4KzD6CWaiOXC6XdSBgvFSpden0WjofoxF68VsgKUSZuhOlbjHcswjN97DifOCwRiG12gfceKb82v0xgO3gnxH3TgseB6fM+.evvYdJIEZyJfqShLmlqRalCtoSSpqClhHzmfBnMBq1.W00y27J95r5JqfQg4GLfx4FxNeXOX3rd.IXILJTUkJNvZkhRg1X5zJJoHjuwqGF2jfEwmC+srDeHhamm.5bCHT3lPMZiBwaaeXNzAfwiyzbHKjQpBysYXmm.D8YwMhDYY5XtQTSmmfIUMk5pvBK.GbbJwgkYU.7z1AsibXnDquA1yslttahImskl78cA1zlfct8TobSWk3lZvuQYBBHShtM0rD7Iu3AIokGW0Uwsb0eSVXgEod0w3.laKalS8renHm0YACGl75lD1P746ivZSzZGmy6jF1MRn3wGlnafqw8oVmHV0Wes6+Y2icVmKi5nAHpY5bAMg1bmaQwZyUkVWaCIRxqllytTqGbESKDjBGIzkULQYhf22IKEdeSRkByjhKDUvDRLPnsIg2J8JFjnBsiSNFKRbLNsMF74t+RW2QIHPHWwehWwHY1UfcJuxTM6nmbCEPwmUUCiBt.Pb07x7M4HtSQzNYb0AC.lTxII4echCMEf.poAkHlXRD9wG.mE04I4F1lvgmPFq77ZN7iw3xdMQHn.ENjXWwb45HfAdMg0syTNoVAi0iwVVBRVKy6H2WHMlmRddGpHDQwZDBgr5m184YapNauVgrR1.m5iKrMbT+c.qygb+RF+dKVejJg7jyXH25lbcrJdJSYUjDuiqyU9PASCmpibuZHSAuTTz9fhqiGtwHXLD0Xp8OA38QrSDNoHZnsmB6YxxgJDa8XpbfDy2CJmr1aUBDQSvp3Jn6CjXBVkIQk1Ui7ZWRMsoeWSSxDQvGkoSOzgcslBYUkHQMhMjgJwDokbWsGWxgUbJiLhMJlRgVYLBBNp5JNR.nNNFWgCAKo1Dajf2iUKyU6X9damlgHcvgm5PNoyGzFponn6dnPr2wKccLA.9j21NbrUfPCTUltmERKmv6awUjd358dDW5NRmTpNwlHQqa3n93AaCG02Ga8aVBqG9i6MstF2cnC+07+Ul7+xrin68eRs5oflHuwDA02PNbrTEHFxJUZGs7Bw.lbwUzexAmKuQMYgGQLo.eySFDzHpz4VKOdMLwggB3IgeagXmNd66PI1KwgciQIBQPyNxmpU04OVSWic96bSlfPIJoFuqfjHNiwjGWoHVi.ASCJJET0EL5DVujDpzj9mmj94o..qESqBwXHcOKwg57jmAChjVIR5j4yQ7WPLqWHRmC4Imu.BESAXdRA7DQzopsjhl5ROhLYUOlrvQMwtWxQ8ZNj8+i2k3obu0DE2AGm6HuZxcyg2wX1FNp+tPq6KhIGI2AeAVNJujcTeq6H2u6XackL8511i3EDkoNLz0NlRi6tWB6cb6IV+zIZ9cA8CSjXz9igtELHjkz09WKxcv8oICwXuwyQ458t39qbz+n0cL5a2YNttyzki0ebld7Vy33t0yw6dV287omod26OhIB5sBg9Ejz8HZBFyv2QJvfI4KYcayjyKS5ulGugM+FNp2vt+yTXMupudGtGw1x5blC8eI+Hn61czw7n3rdC6aOq613ZXQR+If6oA1SLoaO5Pj+aWKN431oRgGwDRjGKYG0cnWc7FaW1vQ8F18eVeG0Ysc9N5EIYcNdmDgL4iwc45YMqIBvonBug8sssNmuYPb5np8jzeLYxQgi3Yv8z6+cGu9mW3HWew5mmvduFzKemwN9XTtg8cmlL8m9NeuCe4M+Von8cjGm9iFWyll9EyDXSV+KxQV6KvaXeaX8tQ1k+TXpy4IzN79.mz2YV+I86Flciqi2hlF1P0v2vte15bTtlHoOZXk28FeuBBztFOu4ewLUD+0710+jIZLInbR2gZiXUtGY8etz8LANBrvOBmz8Sd88.O1SlztGjXcyczg98ZbNeuHF8emz13aoaX2ua8i14NJglJr127VenvYhPO0A7QAO5t+cri8Ewi2de8XKqa4OS4.5zehrl68w0sa2quTFs6qKI2zcOaWy2A5MtlvH06kGF2WYaDQ8F18qVWzNqAh4d3c5xu30QhOiIS0v0f4rAal62csL2RXZnU840bOOya3j9dlojJPIHQwy07PbRHrQjdfPX59vthW5dvCAkrFdAY5Il3FYZt7NVCsNWb4uCDlPawiOrMbTugcLgczXCnCOznPHh0Dml8dfLqkw1UkdZBg6xN8xn+AdMPgz8Br4dpeh+cu0mjcpbTtWFIUvRQehK9P9gfALUL4O9s4CgIzsLFSccc0iXxgVGsf3RDm2XNhyQ+EBb7fsgi5MriorXWIkiGVZEZ+hWNEKrBPLE1l2m7JT3xRuZNTYMWcNaZyvN2Ark4fsLCTYReDohsIDyZsBfhtlDfsg8sl0uh6m9KwTY1aKfCbXV8R9JLLnPaSNgAJQmkEmYDa5Q9HfMMyTG1eqZQfUpY0u9Uwva6fvJKAipRSNnk3cEXO6y.4zO4z41HzIurwZOEktiad3uA871vte1VKMoR85DMIJQ66v7Fdlu.1zAVlXypTXMXLoRiVkTW71PRFdKLEDBZRLh17bryG9CkS4w+8xC+4+rgSZ6IweJDvTTgBzDi3rli6J7gikr0TvKQvhBRHEgazg+abc759Idgr0CuLyXKvfhwB2NQV8T2Em2e9ajpy46I07i+1w7QXwU4c7q8x3f+KeFNQmiVsk51.CplmaJ34Y++0qfG0OyOALZvzptsqQiFgiWlodiHp2vNlyDHU22iaX9EGyoVqX8VL0ADILQizsVKXC3aZPhiwZK.WA066frxG8Swk8o+77Utv2GOuy6WiM8bdlXFUA0MH1Bpba.8w8VVWhdm.njQfnft7priF3rX.yDf5EWDWok4GTx0t+EnxSlRkea5nViPafYWYLy1nbxsJsZ.bEXarrZyXjEWN0chjHsRL00cH6363DmzvFNp2vte1RZxssm7hjWdJJDirUaIy1Viq0iDawJFJLVhQk1lw.QJJsXDnosFo0ylbEDTkkWpl8e02D+0+V+d7j95WMOpy6WElcDcYwJ5mp0SaXeqac37NQuTPPiwTd.DgBiihUpYTixHux7lBB9.wHr0hAIbkuip786tVaCyHodo9vkWgQEJAOzztHyU4XPWG.x6wT5.DhZDUMb7jL6e7Dd5aXeWn0EgyQf+lHfHXPnoogn1hyHPzSLzhfx.WANDhsdpCdTIBwFz1U.okgFkSFKOjfiu5a6ugu4a4sCMiAZHpwjFHsgcOxDkjT3lyrnzmZdXRpEoQYbnlnUXr1vRsqjzsviZFH+V4jCTUvxs0DzHtRahPIVEq0jXBRHll325xc+nHEX5fK+3FaCG0aX2+Zc7rMSIuPGc5PAUotcLhj66jljW.I2DeWx2RnbHqVTxJENZJqHVTLosKZwSk2yb0sbpAgO9E7N4PWzmgtNWdTumFN2FFvZAq1ZRPeD.hQ7w.QifTUv3XCZgE2fgDhYUVTum6BRb1TSZNDX73Un0Wiwkz.9gCJyqPKO.885uMGG4863ng5F120Y8KDAxxJp.JYJ1YAaYAtxBZCdF25SuTZMrPrgEKrbCsMbCA3FiQtMfEBJMwDKPhwHgbnd1wsrs.7Itf+WvAVFBAjrdTugcOv5W1ecUG3jBgwQqAFG8zPjVQnUgkqGSSSDrk2QG06dlZ.uhIHnMQbFKyMyLHhPavmbd2zlaBwIYosqzIib7UOibiE+sgc+qESIepCuvtJKzJIDPaCdBwHVUw4LHFGGpdL9YFxo7nNG10i8wyJVgw9kY48uO16k804Vt5qiM01vlJJH5i3LByYgZumc+ucEvk7uA+.ONLEkqUFS6Wdw2Myz3clh8M4u2aam9uWq7a1e2Wyw6nQv70efui+yGsS7QrOSs6bYw8ncdlny5lTt8hVKBZJn5AVh65DXo1VVpoAijnzbcQE1sr8DInMoy6TYr8agqq7XtnvhsvQr0Sn1iHFJcVhQep643R8PRsSiuQuqQc4N7DGWysSkNcjo2yyN6N3DbTebnvTI+8HuWrgi5Mr6esbS4seRoL.oN3hM07Y0VLhhIlZRAxfJtcTdhOimJi94+4XSiJASCnJO7CrLK7w9j7gN++XLKVybhfUi38sLvYYvRsb0WzmgGzO3SBvPfHQhTx5VFdWj9lTBOQzTcTDSXdZrEnjZqiFY8MdAnq0UZ7JFa503jyAECJwPKltlGgpnhcRSmU.J5xm5jNpSFq0rGlXLhXbSTUPe9VokHZLRG.7qoEboZ5ZzHSPqHOOIZ9r2uUaZL8l7RUTiPf.pJTHoOyX.M5QjTeqzzkjNKXefmBm6+euiTRCs4UuHN.GLyrv7yl6aZoaVZHhTjZQYR1aVWMoZ5R5bdrIwz4BCT6WknDHXsPrDQUhsMXJTnPRabzfwXSeuR.yDrZLDzX2WCySPZxMa3I24vnJXTThDHlILhoGe7i4FGQHg6lPFxkbNXTOhIoY1dMRg.pJoFcbWCMN3m1s5wlZxy4wvFNp2vNlvlxffr0o3cJYdUGyA5ZHhgZqvRkVFMaEwJCHtzW3qFw7OumMOsaZO7u7l9+kJLToIkcvoJCCV1+Mdi7fVsFczLojPYLqUiNyCHMl6NKFPiZpf5LSE59XH4D1zcAj22XH0RyDwfwHoiCJhMwLBH2846f7Ij8eQxAbwDGjoN.eSvSgMwrkjZ.FwXbDzHVLDx6ulO2Fa1glFwl6zKo8aZLz97zh1bIXGmLxxk6swknbbPSvEXjIaksaEG8tNIFIpBhK2eNs.CrvouqtLNltuoB3yQ2VV.hu6BGwkbR2FUbjbfMgQIhfpAz78zDENS23GVM.OFZa7XMBFiMshL0mmjcseQKcWHcUG0X5YAJJABQReenSWCHeoKBP.erEmwQ2dzcnmLEeWqnyjXVR2wPvRLlZ6b1TzGHhRTLDQwDZSmHQIFCX5BRIOy8FXTugc+u0q9CtiJ.EiZvn424USJTvrDlZDCFsJ0awhBLbD63Y7TodaalViADaZIpVCCMN160c8P8XDUnRJwptogxJ8JMZKXs1Tg0HI7PCZpshEif0jaJuQepsdkaWVFWZA1VM0hCiVvYDzVv2F.0fHkYE+yfw0E5VfJIeL6JLC.q0gGA+D7GRCRatT4ic8QRhShRutoN4nyH4tRdNz4bzzctXDkTudjD0HCZHqNGgz8CmPzWihGOsXh979DSg6oxjnsUmPCvpwvjyQvZPsEnRAgnAvANKhqHEEMFZSdGoosIsx.ijZGZ.VDzXHG0dZkIwtmUJvxMPighfPk0QgI0aRUefRwlx+L.1HpYsIONlyEhjVhBFrXMBs3w24fuEllJCCElBznPHXPn.wK3Ta5gbildl1ccIBwbAyhQvHNbhEiJo18Y9P2hPvYRXpmSV9jIvRCzMbTugc+n0KJz6Hy.SdYSxNq696Bjeqc5VqRNT3ccxroS4TnsmB44DGUhvh66.vJ04LJoo2XrSihMEPax0HQepB3xz7xJ.hIGkMjhxTmHQTA0CDSSjD84dlnGTvYgBqsWz6FzXFZkPB1AIpok.6a.eCZtqkmVzcNzJiL0QkBEFAa6XbZLU9zgHCJKntolPHcCyZETM0uNSsP2HNBXTEmwgV2BAvIkXvfA2DVwXbEHnTnBhl3kr0ZxbeO67W0IOSJyqWWDADCsw.ZzfcBj.omGpOhuMfyVBpgxxRD.e9YppooSb4m8DSiYqICiSnEFMGPpSxGBABDvVjpZ0XjoXP0Y5T3f5KFiIm0ADMRgFwYTlzfjygu6isflb3ZMo9YowJSoinqXx4v6iSJDRqK+49VB0ommhIsxvobPwllXqaEMcInMer2.5iMr6+sINqy0zaO1fH4.a52GD692pFRdwy6eHDwTXfnCFMCilYVhwHZH4fU8drpAWSKrz3jCSaxoWHpHljSZviUhoIAZAZyZWg0jbDZSB9iX.02fXEPsIMx1Xy9fSCXQ8Tflb7BIriy3WpHonmTAvmo8RHUUlY3DLEFBDnDKB4lWL4noCAnsEDAIj2WqYBMFqJK.DhgL1+FxNXhXIjmjJkLSwVkgyH4606UJK6D7JSZhsbTvDhPYRRYahdJsIW6zDnLu5.M3AmCaLlfgHOo1DbXEChyjv5t2bsgVOUkt7iTMosKgd.FazLtJ.tzjxiiJCKKHFCzpsTVTBZBdk9QhNIAsSWrRx79TRFLZBGpP9FQa.JqxiYKVSBYaMSdjXLgzQzlhftegNVH.ZaZCBwzw0Xv5R22B4tSeEofmShYPIkVCpFSO+6EHyFNp2vNFwhqE1iNm08LsezX8dQSIui1zKR1fBAvZKHXRKcVDEhon9JL1TBt5VcoEHFR3OW2BqrLrvRr50cCrxdtcVb+GDW0.lam6fMcFmJ1S5DgACfJKhM63MD.iiXFKWq.zpvtu0zwDS5kUU.mPsugpccRIglxUBGdQ3puV1yMd8rxgVfsu0cvldfO.3Ac5TTV.kJX.qOyPh5FXu2Jiu9ajCbS2BZcKys0My7m8CDNiSAJRbWFWpiv2krLMFQ7svxqB29AS7grIyLhNL5KGP0otSnFX0V35tdVb22L6+VtEDQXGm5oxnS6zwbFmBUkjEAohjCzXxSuXxN2ukaMcMuZSJyiNfRKgXC1SZWvfQoAlIAASUoKM4SGo5uwcSyMeKb62ztY0UWksdxmHa4rOKXaaBFNCDEbQETEWgkn5w6afnCovlyEPGXu8+BFoyQcaxqaa.1+sSb26gae26lkt8CSUUEC29lYqOfy.19VPlcFjpAIHeZASQdgVFHnoN+tUgw27dXP8pouY5yIKUReufcrCjMOGpp3LVvmI6wAWF12sl9Nk5S2PZBPw.Hpa3ndC69Y6Hf9XshzDjv5TkDDESVI6DFZ3IFCnFKQiPAtLz.Bh0RThDbJQQHnJACDbZOmFPqukBQfwsvm9Kwk8A9G4a9EtDVb26gAAgnWQLNp0H1Ymgcd1OPdDOq+OXm+3+HvIrYXtgnhgPl1GJQrgjfA8O7p9+gCdIWNU00LxUPHDXIajaeFCOuegWBm4O0+Ats266mux65ui8doWI1P.qXncbKtsLOm7i66kefe4WL7jNGRBdjAt7qgK4u7ukq7e9hHt+EnLFgVEopf1AErqG6ijefekWB1m7iADE0VkVhsORgy.dC64C9I4u6O8OiMUOlsWUwxKrLtACY4nvvy7z3G6B9yfa9l4y+V+K4a9udwXWbArQOXDZGTft4MwY8C8T3w+x9UgS9jfBE0BwPDijfHo9ad87+7W5kwNWrkQsQJcNVlVNfzh+j2J+x+e+GBOhGATlVEk0Y.7oPVu18xW5O+sw09ItXB21AvEUbEFZhA7yUwC7o8D36+E+yB65LYatBNz3UwCTU4n1mb95Ij91TNIrpLkFnYbfRNq+heE9Fev+I9pe7OAqtu8wPEZWpNweeQgQCYam1ov47i9L3j+IeNvotqTxGr1jv+EAqJoU8MtlOvexajEtnOCaq0i0ZSwZGUtMmvC+m+mgu+W5uDEkE38dbFGr7pb0u6KjK5c9Wwb0MTDBTTTPvmX5RHD1vQ8F1wvlXlvS0njg6PR+dLAPMndrlRBjJ27z6gQv6wSj.AhRLQKpXLQUtXdYtFfXL4j9PKy+1a4+Ieg+xKjsrvJLr0yNLNJ7oE0Fk.dEj3Xt8K9KxG7R9BL+G5CwO9evuCtGy2KxvhjVDQJC+X.BQJ1yAXla9VYynTpf3iL+vBVd2KvN26AXuuo+a7O7Wegr48sHO3p4HLtgJWEMAA+Bi419PeR9KtjuLOie2eMN0WvyiC+A9G487FdqXu1agSavbLzGQZCLnb.KsvJXiFto+4Kl25k9U34967avo+y8BwIsnlBhc3vGfgKOlh8d6rMBXN7BrqxQ34vTDfJqA9muH9qeS+Y3tt8vIqNlIFnLmRwwMsr7p0bEuq2KW8W+avK9O40BeOOPBRaJ4q.zFoJDvcS2BacUXFuh58LSkC2.karY4b9Ezbf7YLgG2.WyMvey49xI90tNNEJXl1.NwfebMEEErvgVkq988A4Z9TeVdQ+F+mn3vKvrkVLMsI3bBQJFVf2ONuxqTT0ReMHu0Cia3Z9e7Wwm5c92.6dubxkCorskJwhQcHMPKJ9lwL9vWEeru1ki8i9Owy4W+Wks7LeFPaLAiSQd72lhDV22syb641Xm9DDUMMdr1BVvnTb3kxqVPSkWO9T9UOv9QutajcTLjhUVEiwfXcT2FRNz+N2acaXaXGMa8kw8ZyucTXJuScFz.HVCwXSZYsFC91.1BaxMsRxatEZDMuL0DaHrhlJ.lXLkHJhImCKrBW7u04y07O9Q4ThJyhh3.SrFKBN0SaTYXYEwvXNgBk4CAN3W8J4u9W9+B+z+guJF7b+AwLLmbvTu9BPoThzpsTXEphQbhR4XOODaIW0E9AX266V4A3rT4rXaVlQhRrYEJJRIC7zvvJGbE9TupWOOkO8WlO2G4iwI0nrYWA15kw4rzpMHQkg1.xpKyoWUP0gVlO7e3eJuvY2Da8Y+LQloHg+dShu4RLfQTB9VleXElXfBUXdmkUu48vm3U9Gw1WYUl2Tht5xTTYw6S2yGhEwCmQ0.1yk7M3i+Zei7z+e7FvMa0zjE5ifOxHTJEOVaJUYlPfpVgQUiRXCmmzUjHlFObvk4e3O30R3qcUbl1gT1zfU7nVCp3waBTnQNkhBVZ+GhOzq80QkHLi.pQQzDye7wPhNjhjSrqgnlfLNIOpKxm608F4q+W92wt7oDpNPaQhsojHKBQUYnwhpAphQrFgE9ZWGumWw4yO4JiYK+3OGvEwm4lsqTfP.iDvE8LREhZSZkBZfBSJotoDuzmKnfSElwUhKDXjwlwBOfyJLtQW2aEaXaX2OYSRX35vkVxhyTTUhwHQTZaSQtop.AAWw.znI8ugLzGIU1STvZ5VlYAEFatR5RY4m5V9b+o+YbCevONmk2vlaZXTzSYzC9ZD7XcBEhPXkkwEanrYLaVCr8lF19sdH9aeU+wD+x+aPqGqPB6QRr2Xfgzx1igjSfPCChQF03o4ltU1Yiv7qzxvnGq5Q803LQ70qvPIxrQOyOtgSY0Vtz286iS2Cauokg0sLBPaGiyDIFaQCMTZiXVcYNIuxIsbKex21+K31NXx4jFSXQGBTVVRLFwgPowRndLEpRoFYXaKE29AYqsAJFOlYJbD7MLXPYhIKw.iTKCWogc0B2xm5yyAtnOcZN25D8CSkGtj4+d.jTI66hQJhwLEKcIm0PhcKQkE+neB12W3qvtLE3VcEbhGj.MsKSYgPvmFmyzFXmQKysxpXO3gR3jmsgUUDBI1SD6vHtKuyQfFOWw63uluz65ukc0DHR9e8n...H.jDQAQUKiqYTSCkw.UNIyrjbBA80Hs0LLF3DLV1YcKmvAWj204+GAewKIEYbBbtIIIVhxDFJIJX0X9GMW3Rc3kmSZHFhhIS8zXpALqo.JrphccIEcCaC667VlKzGg0wjCMBFIA2AJ17WnclDkrvL.EChwPqO2C+TfZO021AwFMXvhQMnphGR7Qd1pzRu+reI95u6+dN4.LSvS0.GQiGqFoPLDMVpCQTUY1givIfypnRfJSfSznXugaj+k216.VtFVII8p.4jqoTHoWVMw.FmkfUPKbzF7XUnpG7NZQAQUSJEn1hmZrtHRyprsQUDaFinAbkVpaavJNr1BDqgfDoVaonTwLdE1ZHx99BWJM+qednMUbLX.ro6mFEpn.cbfARIVMRrolYGTxLipPkPhazZRCvqWdLRPnvVRLpTIBa1J3VbAtpK9KlXHSGaExODiYRsLMuBFD0gMVjnKgY.FUSiMefq7htXLGZAFYfBajlvXbEPoQPZ7Lz3nJJ3pUJpCLptksTTw.qkPLljb.UHF8Hhh0khxkbt7nF3x+l7U9aderqkaXNIfwFXXog33wDa8XLNhqzhKZvZKv4b3PIr7h370rcTN4EVkO7q6MB29AfP.KwzW9hVPcDrNZvhhCTGI1LIHw720kXGJToDoJIXu07mY5RtdOpDtgsgcLq4SUVxjkvZEgRmAZCox11qSVIo014c2CKrDi269nPL3iJVwgFSEjQ4ryBadyfOxk8d+GYvstelQiXz.MqtBgXDeSK3p3vV3.CJ3fCJXegFFG.DKs9ZrZ.WyXNk4Fw08u9YRZHRm.WqIzp8d+jhloqYGz0TkplYVV0Z31hAtMixgJcrhXHTVf5L3isDcf3hLx4v38DEXEqvsSfCOrh8ahbXMRcPwVVAEVZCMT4rTF7bRtJtxK9ymYe.zFRhvcr0Sgwh1jJzCmygAgYpJotdUN3pKw3JKGpzvAbPc0PjgyfqZDssoU0XDAc0UXGCFlzPkEGOk2aB4IXyZoR1IslYcNZ1AlBwlbzvKtLKr68vNGLKwlwnFEaggZeKVr3Q3Phv9rBGpvwhEEXGNCsssTOdLiFNDqXHzzRUUUpvWzLc95PZHD4K+O7gHdC2LmrohReKRviInotGTYEKWXYgYFvdIx9CQpsNZZCLZ3PprFrsMrsfx99pWFq7U+JoUE3i4DnXvku1xrPOecCpbjtaMvZBToOalforOcCLp2vNFwRkU6ZLIUx1VDjnlpRsPGub8LSQQhOxQPrdrhRmHwW+w+XXNv9oTRXLZifszwxgVNoGvC.plA12g3Z+7eI1wfJpWcL1BKko9WNlxQr2UqYoSY6X15VfnxJ2zd3jpirYRPMXsVVwuLnVbGZYtwO2kvo8DeL4wtMAAt0QqlhVxXDh9.lnAIBKKJGbv.ha8DvrsYXwCcXV3F1GaK.y5JPJEZisfOhzpTLXHMFK6O5wryS.2binc4koceGfSMVgrxJnkQDapXUDEJZCrvduUH3IHUH1BntEWDJCfEKkVCMsqhpIbpkhADFX3.kVpNkShPnkCeC6gsDf4iBlXjYmcVVc0URE9huk58rOXkFXSCRPJYK.zIK+Osr9TUR1ZR+jbbB1pRfFHzhrxXr0Ito6IfSRMIBwNfUDX2yZnbmm.XJode6mYt8Cx1MNFJVzwAJkBZsQp8dJJJvGBc3Oj7BtzR7M9reAlOZvMdLCsV7wjizVwwBNK6kHy+fNCjnh+l1Cw5HyaKSI3UTBQORvPgQ3e6y944w+C8TX5R.EJTKRDrQChDS7lFCAQSNqykVtzwQ8PHUMpjVUUH2.lM46YtfYCG0aXGCX8xA3jhRHaValdRpRgHnAEy++s24dvV1Ucc9OqG6Gmy41cmtS+HjNj2IPPRZBAHgPDIfHJi7ZTTjgYDmQKcz+PPlRGjpnFJcFmhZlZrloFkRqorbvobFPFUnDEDkvKU.4MBIgPd2gjzcmtuuNmyduWq0u4OVq89rOm6sS5NIR2Lb9U0st264r2q8Zu16020u02eu7BCrFLimBMdTSAjofuFTEve2WfO569cSwjIX0lnVrdGdEbrPMG5pupnAld3ixZO3Cw45itNVU0TFTTx3fmUkFN2m60xK6s8lfm4UAiq3Qd+eP9n+meWvZax4TrCvOg7bKJkvNbvwui6lKbRczGqUwPV2jn3PTQso8ScXyGxlBrZthq9G6Uyk+y8uD16Ng65d3K8N+s3N+neh38nxfx3I37LzlyTzbzPfK6E+h4Pu4eA3Bu.X0Ggu4u6uO+Cu62Om2vUnd5pTX0n0QtRMMN17QNdJNloyuXZ2RswnXy0VmcryQTUUQknXUf0O2ygeze42D78+h.kl5226m+z+K+2obhiAdOSmNIF.Monwy5EXsMgmxNh0.QgHeszlcVh71GTj3lM4.wsJSl7Ec2lSv3BTVTfu1QccCCGsCVapiU20P9gdK+qY2uxWdLhD+a+L7W9e5+Jab62Ei7fa8MPY.aYFqWuAlxAXxyh7WWpf5.b3CS8C8vb.ikUxMLYxDxKKoI.iyT3tvCxO4a+WAd1GJRe1G3Cwez672jAxHXi0QOzRgwPSkigY4b3a8aD4uvNKxV8Hnk.5tpn.ocZDWnpK2qzRChnhJRzyt5smYqB1KApWJmYks3G0K70RafpD8SUaPQvnYfwv8749hbI+OeOrQnAsLEUnlu9W7qys9o9a4.aNl8kavTKI60nYSbDNvd3Bt9qCLZN1C8fjYrnCUncAFTNfwSqoZkRdfBE+fu82L7buVXPzvX64M9F3o8k+FbmefOLEMUTFzfNP8FiY2i1MG4ad+w7Mh2.RrZo2HRLMt5BXU.JMdcfMMvvm4kwk+VeKwpktaJ7Le5bn2waku1seaTc3ixnl.hGxrVbUAVUpo5fmGG5s9Vfq3hgBCrugbYus2B26W4avC92+U4.EiPp2fFULSMUVVxQVa8nlqg17XjFmAbZv4cLbXAS1XcJGsBaT63nVMuj27OO7i8ph93b.xe8+nbwesuN2y+6+XtPslA4ZlLYSlF7PYIUdGr1w.y9iAPhO59ipjwwhA8Qz3XQf6Fflnc97IZqFWwzwUbt1LTUNxCZJsEr5TGOrAdNu1WM69m50CCyiiwunuWdog.+d+h+xnO5FbgqrB0Sl.9FJxGvjp5H2AY5n2tfAN1pDdj0nPYXyIahsnjw.dsguUnlW2a6MCujaHdrJKEuwWGO6G5A4V+se2bvhAwP714XnjQdcf0OxwgiuNbdmabQGqPk0QlwCgFz3hKSIfpWN6qe5sMtXkNRwQa.RlLxHJMN8RMpWJmMKBQPZkJpMZUcrBcghbmvsdKeR9berOEhJflJrdOJuhKZPIYMNxTJzD0H2mYXUMrym9kCOmmEjY4g+VOHtoShQkrRguwgVqoRqn3BepvUckvnbjLCAALCy3hutCwW6u3CiHVLgXdyXkxbNwjZFehS.SlBmSYJR+hbTWTTfL1gy4ovXYslFVWq4YdnqA1YITpwEFfU7v4sWtfm6yhicueP1qRiVmyzoiYX9J3zvtt7KFtfmBLHCIGTjAdgK+EbC7I9BeYNWQEcorPLy1IAGEZaJIVMK5qiFxRRQsdzKPlV6PkkS99NW12K7FgQYDTo7qxNWgq7l+d4d9.+Enqbr1lqxnxAzHZLlXhPpkeZWH52ywjAhtmgvBfRPIoz1J.Rxfej.2UArJMJeTKbQ.xsbbww4ecGBxT3yTofiICdNWKm6S+xQ97ecpppiU+mPr.Sn0ZZRgXO4FXhC4QNN553tTr4YzPf5PfFEruK6RwdMWETXAcQj2YsvkdSWOewem+.7NAqJZ0OwGnLOG0zF3DqA6euovaWHD4rfYtdZHQ8SO2rS062sNqTZWN88bOQkBl0mrlSsTVJOtjzKkwPeHkSegNCrnBBJL3IfXTosR6XWdCqHJp0V7hPFo7Fg1SXxlfJfSfLQiXrrpn3Xk47i7S+FgcuRzvjMgH+2JE9T5tTLPk2wfUVgXtGUE6UIhVGrmgzX83RIWGQLPiPlFpp2HlNOsyt4JLF1rptK45W4Ej7L1LDXmG3.fJlM6LljY+GTfdmqPiDSanh2Sls.mDnRD164cfHPhpMWCF05ZOGb+HYJ7M0nHfnxR1OLl9N6BvGXl6gQbGKJkhF.uQQcnl7hBXe6KF545TLRaTrqK6xwIAZZpwVTRcPPoBD7MwHzyGh70q54BChI40CQTHOV7pzmIIWOgnQ3HYrMOox2kH3UAp0dLCGR1N2AXyP2lSX0.E4vvAzHQtfUBnUVbhCMBZsMtfgXiYYUWCnBcF2UQLM25CIWAMqLxutPL5UUfoLGHfUEP7dTpPJcEHQM0qStjnnh4mkPLob0t2AHYjPUxG9k3BRRJCApTBhJDoERVzfhwcjrDndobVijbRsY+mPJbjEDDbJEHBYnHSDTUUXrdTJEVeffDKvshABZKhRiSkwlY4bXUfq9U+xY2uraN4QBwjkiRREAUnC7KlEQSffIMBaoM2qBD5mtLSagUSHpknNLKnOZMjFwIghPbxqJl0z7aiW.fVgSqSSVkt7TgfhfRvk.7mSTpXR8WGlQ9LDySzRZLsaxeKW0yzfClo4VaX5Oua1EhbvZ.QqRIbp3hWc6dOdyQWRbp6yasZXjeZUuw04jjaZFeVDh9Ub5ZKJSjlFMXoGJVqh35YNaRKH27IyK8rqQuwfYiEA15f5LI1uCnkPWHoOK5Xa6+y9Sc++ZAf2tXEP0d0CwD.FKbLK58Gmzd2RYo7sQYaeQL40GstYUlwhRon16HXswjNjHwfBHnQqr3KJoQmiqVSHjyIDM2kugK7U7R45+29KB4YPQAz3HOubtq+ba8rUlaB+YuhRkhBuE9rGyyaQGsoWpjcatHXZCU+Sg19IhzuOnjdOejsZViGOOaZWX5QE.7jbK1wrwovwdx6.8VtpyqXlswmEa+kZTuTNyKRRinNMIloMWqOGqQEMxBQWdahDnJ3PmkQQVN5JGi80TkaIXs3m5Yb.ltyU3l9m8ixU7y+FidVg0Fa+hblTWALy8wVTKySUIvVCD9taM4j2fOYB10GnVDAkR2U4RdrDMQJreLA75TaUiJD2kySJ2Cyccmosc6y6SUInnyM2hEZhsd1AUKH8Lsp0mBUB8sanQ2ps7B+DftrUHPWNpQsM.7sabpM3V5+LncuHvRf5kxYchdNsSBgPzyLPv4ZPoTXJJXslFZJK3XtJbtFxAjQErpVXSZXeOsKhK8Yes7B+I9wgm4UF8T.aBDncqmFY9sJ2651sc0dTXrnrHL3hAqv2Nj1jqe6BBK96GKYwzNw1CVO+yj41Z+ovBAOpxovo22WreraOUuCT2oE9o4kbqRhC4N.0GOswhM4I6ySse+2mVBTuTN6UZ84TRF8JlQEho5RqgK44+b3Fu9mCUkYDZ7znDJ16dYuW3SE8EewvA1WLgMjaSglqty2dIzDCS6d5rcpnM8V3l7rHYQv4SEv5SptjIsCEQMCPo2tb9GGlO1tdyV+Lg9Kp1ZSgY9he6Rnc.pc7BG5Lp2rHljGEDyE+tSOH99Z3ucxi1kdQYIP8R4rC4wPKkfWnvjgGgM8dllmwkd8WO4+b+jvPyr8IqTDesNkD6yx.0LpUDkPnoBsxRnYZ7R+3Dz4zYZaan.+jMU2Od3kd6jVNa6FKTs.hpdc53ezZPsGOzD8nJ85C8C1iGsiuqmoZM527xIqOpaMxZOYtEfWngVrYhTmb5MV21G2t1u+wL2ygjrDndobVnzyyaCfIyh1GhYDMiFiMmM70LsLm7BKRYFMI2bKG5pqezlDhRyxbtJTYYXxsvDO41rt4KyMIZaj1h4Mol6IhV0yC98jizW64nqmcpcdA1JnP+6sNsWkYeWK22sTA7jhzar8zSZ8XGosN61+S25kQ19+9TQDUjK+txYXKKKK9SR53vls+8k.KTZDUyaui99hxRu9XoblU5u8RYqtsUqWenR.Dso5TrYz.fjiBCYnIlVgRmepoBRHkZEDzFSZdjBTlt5haH5GfDjXh4IDBaQyTWJcb14+sIWhq+mk9mYnEd+V7PfXbPHm5btdJJ86ump7SG6PJDkpiRm1zIKFCAIzUfaSMbmOmu30VDY188oiV88MDWJ7qCc8qYO+MsFGUhGij5OohbIPrf65DONIUV0ncLtiyl3mGj3ODaeeaXe21VgVWrLV5YChOdMUz8rO1boyoy0DiF5PCHoP1WRimVaze+CHz5G69fGWxRhsJJ38wLrnnUcop0GSuSYorT91ozkNLgdZmD59NZsTunioERUJHIj3WY1FCG0NoRoTnzsY1t3dKUofbvXLPx2kamvpQ0UARPAYYwBjmy4PqTwI3d+BdZQ64jD62Yrg0555tEnJKKiUdjoUXR0ZQeaA2Ua5xE3a6BCKBPe5rfA.5zBfI.QQDbtZxSkvrX.nnRk42tNer9TRHFEhZUWFJr6YRa+PnaQXsJx8dUSMYYYnTB9Prx.Q5Ya6htkEkDBg36IPLkxlZyf22kGUHsSo9dfi0ZwZsLYxDDQnnnX1sqNUrKR8IiYVzTJhfIa16OKApWJeGfDM9y75wEy3YcAXBzCXODQtUg3DAenKlOTn6xYvJxPBJZZZvkRgnhH38dDuOV0sSZwGujwnezjZSkRkpShKvMbKf8+H6qwOYHpThipM6DVUUk.ESADDjBjGEz4xesKLIcfzOY4pgKRCSWZg0GPppAIpIpz5JNYYwT3ZP5.HCLqeM2tKzpNf51cAXssIMqzwjkM+h8AAecSbmb89oEXssvVjFDfzBDsZm2TUSHDnnn.kHwzmaaEjGvK9tyupppCrtul6vRf5kx2gHamAV.R.xj9oGHcbSlcFnpUC8H3d7y8osVqQA5nVxZslbiEcfYZG2tMTIVxjTgYSFaohIVdvV.b9zUixuMKAUjRmVPEqNlyNxzFh0rJMRHfVGSLSz3HSqPvSH3hFHcaBzlN4wE3cKKsRGQVAmigCFPq+mX0lH0BBfKDqfNnR4jbSGcCs.dc9lOsQ7YLJHaAp8deTiYsNEF7fQaRNWdLuiTlkGi.VstiVCuDhUacqYV2WBys3PVVVLcEjBTntuKUw1yUwBJfQowlTBnMlL8Mtt1YIP8R4rCYw4zBfDRgecatPX6B+YIxpoJzAZ6Abo7ylCnMGRzkGfT.ZnVEMPolDUFg.RJwIYDfZGQJDSUXZe.sRioIf0X5zptcxmqOPsdlVSmcKA79l33r3HK2DSOmiGGWyqMLzabfWRdLoJl3jRsPKMCz+mSUoku6VdiSbG2EbHtPbwgl5XAgvG4M1nMwjlTcMEnIWYH3pSQw3L6HfNAhlVLO.w7nRJJqZZZhQ7ZaWtw2i1MEz3QaxPbdDezm9655hfKjpdL8BS+965.R7rW2fUaHWaf5lXT425S+9.MSlRgwhuwEyuKskLtjrDndobVizZ063+vbaAc6rh+V0WqspkuM4ShzDUS64IMnyRaqOD5lXGbd70MnbAnb.Px.OFSDv2EhIJJg41haHDhZOAHgsq2d1on0ZLZMhymB5mH8GTTFAFIo4pNVqE6GEmc.zKJOt1IQO+cHkk4hILIvpzrwZqiaxzzBfosFozP4.pVeSTdGCxxI3bDBAxyy6YCgzaJdOlrbBHc6BBl8bzUMEFLH1OZ0XODAzCMtnFt9XVfwjrSgShInoNCPZzQiyl7iaeSCh2SQxFGUSlFoTymbuu5XkKe7IVC2zZLoEZBNOYlYZpuDndobVgbxmZOaB7hI2lVWiR0V2Ek1jnTL+8lyrnZq8pDAli5ZetqLJRygV2w4Xt0hAEqu1ZvgefNMpa074dtsaOUjTk43RLDBrqcsq4Mf32AvQcKEADjnVbnnYZEbm20rUNknVl2++vWKtHUPRdyRurvmR0YruS666Ne.TgouwB6okctwxc9M+lybh6fOBNda2NOxCcDLBw.XJ3i4rtDsTRqwDU.ZE4iFhxX5V32XLHNOVslM2XC3tumYWizBTG9VucFTVRt0lVDQ0QuRwfRXzvHXMwqA5YZzmkkkLLcLc8d369di6NQknYwXg5Fdn6+AHWavpMjozH9XpXUAc45jkxR4LlHsYvLAThZaegbVXduX1O6QsggP5E7VkpZcipTcXbz4dN3TBprL7hh55nE+GjYY78deb++YeHXswnlz.qOAtm6mu5s7IXfnPqRtIl3AshZilU1ydg7hHcAvB.V8yPeQYKIApdYkuV+tMBHp6NnYY5u4ucUr0JU8rLG2VGU6m2IjPpf0V4wHApO1w4i8+32GN5ZwB16paBG4D7U+PeDr00QulPqgPKfjfX0y.q5tu0I5pjz0Sy7K51t3Z6gGWzrsFYJIO6QCrKSFe9O3GFtsuAr1XXRMr5l74+CeuDN1QYTVFUUUXyzXsVpmNEqMKoweRaWqFVYHphBDUr3H6bNJyKhFMb004y8A9fwZ+3jZXyF3de.9r+IuexahofWQEh1i.nQf7ctSXkgospE.bDviDTn0VpZZnXPISplxtxK3t+LeVp+KuEXbCL1AqWCexOM2yW5qvtxKP4C3abLrbPbglzX02Y3+PKk++RQHfGe7kPer5hu3ajdcb60lfESSfrbMaJdpEOdUhC39ZZu3enhTQnz5naW4bXxx.WfUt7q.yN2Eie3iStVglLBnvV2vEKvW3252g09peUtzq6P7HqsJe9a4Vf6393bB.gF75X4jxYLrVCbEWwUBoZtX20lHmppTMvSYx57U1niyl19MMc17xq.mqAstryfchJfHwBwZ6pPdjz9GRkDPuaFUDhGsxfUYi.jgHG9gPbGBFkDKpqXPEBDBBVigbmmyuHiC+G+mwm59d.dl2vyBallu5G6yvFeguD6Sk5OdEhD.7zHNxGN.164l3P1lzR1fx.h3QkbGxXYtIj7e3zhHNh+8vAjuxtnweTpcNFkYoQh.8miyyQui6h+re12D23O3KkrxB9p+seZdfO6WjKvCFoASllZbnUVTnQBpH3oVPDWTq+yeeL5.6ilSbefXPqEb9ZJT4rmFga+O7+KM2w8vS+ZuFnpguxe8GC952N6AAQBTI9nRyYZlJBqb9GDFMBj5nwQLQaoTlkS8Z0nxyX0oiIuvxPQ3obj03C91903Z+jeFNmmx943G9v74+H+UruISoLUEdzJKMUNLJEtjQuWBTuTNiJQGxHDsueqlksIE+jGansFLMFTjpN3kFJGVhxX1NhpmuwW3+i7RpiZWsmcy4bYWBG+gNF6QaHO4Bf5fvdyxXs0WmC+g+Hb6enOLNslBkhywACUpXhiOok3wapYyU1EG3PWcrrOAcamOKKiwhfRqnw6vnsXRdZf1tP+OzPLJdBjUXi+sDqXISBSITF8JEbIsqS0gPBAbIef13qPEl4NYUMUws+2ZSMsF7UQCBZsXzvzwavvhR7NGiFjiaxTtjg6ji8I+z7Q969TXTBibJNeaF4Zh4gZsAEVLVCdwyDeb2Hcd.Q59RDAQK3EEk4YzzzPf.FkNRSTfHJTvCqTRwt1IM4VVwD4J2TlS8jwLLCtvAEbh65d3i9e6cgVqIK.mmxRgnHzTyT7n01nlnhkLcVxKeznzQ5G3.6kC7LdZbzuxcw9xJI31DqM5IG6zXwN1wC+W8I3v+0eLrAXWJE624YEqkJeC4CKnx6n1GXSK77twaH9LvlAJGTGXum+4wQpbjObDAoBqNfEEgoS3fEiXiiuJe5eu2MphLFBTLcJ6pnDiOPcSE6XzP7UUXsQd1E7Ko9XoblUj1Ms2RybhZPhdGFnM3ZBz3cnMVzVCAQnw6X7zMO0uNam+9NbHO6WwKkiVHL0Di3NQAZSfJ2XFTpYj2w4YrbAY4reLLrwiowgotAcsfwmCkiPtvCvJ2z0EAcRdUBhiwiGiQYwXyQTfSIDRI4+pPMX.mDWpBSFjE8MWMw9Si1ipHihQCPkaiJfG7cTFDPAVMAMz3cT0TiPLPKTVvTZiET.DZHDqYhYVl57zPrOjuiRZLApolwiWiAYVx8A1adIWP1PNmZXO1RVwXITOgJ+DZnlfQXRkGa1H149OOXOmSbbsoIpcYH8bqrjIHrtKt.wnrBrNGr45Pd6lJbPtkUN3d4XtITk7c6IS1jQkETZ.8liYPUC6K.mmXXuAEYS8joLnxxwTjiwXvPjqWu2m7FEfJex3iVt5WxKj5cuCdDoAuwPHD87EsqgcT63.N3fd37.J8MTlonoZBVM3lzfVkwDkhUN+KfK7Fd9whYLFPkAlbtrq9YQs0vlUUvzZr0dnYJkVEMSVGc0Xt3gEbPklc4Cr+gCISInrBRohw9o3UdZbSPqBjsji5kxYZIpQszAtMWtcVqRaUWiUmgHp31YCQNVGMXkSoqQqwBAlEF5g.Xgc+O4Gf8bcWCOhVQcdANkPsqADOFD1QdN15JBqtA5o0QPFcjeSIqjGQA2evy22O4OA7T2OXfFmOskaMk4CHSmE2Jqt.iMmo9XHNaSILJwzdyGcssf2i2KcQSYkqgo0Npl1D8pkrBPhTdDs6kJRohnHKq.SJeQGbdBohqKIsxZhprOWPe38MLsdB1hbxGTxjpwT0LMp0esmcaJovCgoSwpMTXiIGKuRiLXDO33IbIG5Zh6RQIQsp0wme4FKtZOHJrlBfjQ9DAFE8vBAhmqEtrWvykMWojo53B3CxKPU6nYxXxDgQZCC0YLRYH2Ge1NowQciGQLDpi65RoZWvyjrIQJOjasruefal887NDOfNvTqJZSOigBikBmmAMN1gWnz4HWKH9FxyyAznKFvXaN2Cdt9erWCbIWT6KY.VPY3ReVWCp8tapFVhsrLQ0T74agQytJygM1jhlFrgX48ZRcESZpwVlyzPL3qhFhDTxRMpWJmAEEQEmaSEjyBg7V+dVgJD4N1phS3MnI2VPn1Sv4dzbWjXatMtJVGvsQA6eO7p927lvcAOENhRXBFL5BJz4DF2DCYZqkxgCwjYYRSCNQiylwifvclAW8q6eJW1OwqAJTfFRaFF6...3vmIQTPTwxLsvOnBJjFv5MH0B9fJpcsnnotFbwIgFH51Ynnvlk7VkDPiWy.6.JMCHyjmBzCWLUWjFmvC9ZgBJfJAcilBcApTfcfKfAHCCjBk4lZOYnQ6EFXyigHevSi0vZVnYPA0.FiklFG9l.FLH9HkONsgGQDjCb.t1WwKGxUfI4W6h.0Mj4svXOCzCHib7NHnikVKlLA7NLRJ9NyTrmWxMAWx4y5FCFaAlFMEhkRSAFigfQQkugISqh1FPASTf0TPVvBACEECiItqISSgBtMZ4Oz3b0vNGxK6W8Mg5pubNVPvKZTXIz3wDRA9SHzs6mZW.eS.OYroxv2zUwAekuTtfel2Pjpq1WWEhAxxkdQbMural6sdCNQHPknvGznTlT336nHK821L1rIPSPgoX.SpCjkWhMqf5pPZAYyRf5kxYZYVfSz4etHIeQVHjmylZEqpDpFTP0fRlXrTos3M4OltBVepNB87u4N2IqHC0y+4wq+e+amoWz4y8YCbjLMaZKHTNfwdnQYYbHvFdnZvPNdYN2WFbOqjygdCuVddu02LLZDURnaRqjRnOSzvZhfLZEljUvITJpFTPs0foHGLljg.8wnAThFoZcDFmUv5JXZdFSxxXiPfos2CY1dUEGCpACoIKiwVCUCJopHm0UJbiFv3f.kCAmuyqQbNG41LLJK5TFYJDfINgUtfymK4luQtivTNVgkiaL3FLB0vcQiojo5LllWvCqg6sPyM8S85gC8LhEcWiNFeQZAxrLQDBCGwTqgi6cTMnjMyLTkagQkzlnmZ4Rlmx9407K8Kx8a0bXIv3rRlfAuNmwAEq6DpFNjUWY.2ixwk98eSjekWBqla43RfpAErpBdHWEY6aOTaS.ohBTfsb.jYfq5x3e9+g+cvUcY7.ix49HvpYYrYlkoVCMYYznsLN.Mkkbhxbt+L31zdtxW8Kmene82Armck3WOF2NZEQCrla3Z+E9YX2W+g39xDVcWi3nFEiMY3yFvIp8TUTv5Cy4azLl8eCOad9u1WCGtolMyxXckli6A2vQrowx3r7kFSbobVhj72YCPHDKkTjmygapXrQHy6IOyfudBapDVaWi3DdGG7zPUi4xxc.hRgXrXJ0vK5F3M7G7t3VdW+tbaejagi8PqwN7AFkOhodgJefPdFi0BGQ6YuOuqgW5q8UwE8JekvJC.khbcLfWbNGFqExx3XF3Hl.a3pwVXYCbrZ0lrFdNVSMGDINImHPBdGSMFNVVF2kqIZbLB3q2jGxDX2F.eMnxi6HQAD7bzlobjLE0quI6.AqQgSfUGuNn2Sz.jprntYRCMimhQEAmCdH2lg1pXiPEiys7rem+Z3duuW93u62CO7Q2fyoQwJZCdGTqfo4ZV+bVgW3O6ajq3e0+BXfFWjw73tCBdZLANhUHyknxISSlEdfwqSEiv0Tg0F0PORcCXJx3beouX9w+O9N3O+272licW2O6uvRYimZmPXWi3AZFie26fa5U7p3h949o4y9q7qx8bG2FGbzNotYZrnmmmycr4w4RyRCRYIOQoQE05sTAO2qgWy+qeG9L+t+d7k+y+q4nOzIXzjJFIJJTFDQQMZpxrbjbEkW5EwM+5ecbE+HuFXXYLHfRoi.k.tpIXKKhWuKd+7p9M+0488N9M3q+49JrBkrRSfBznFLh6OzvIJsbkupWAeO+RuYt6+OuOt6xL1inXESFAmGs2SsDnQCJ4zJmHtTVJO4Is9PsffNXlk.daUBd0M3t9i9SY2SczTUGiTqfmPdFGSDt3a7FH6ZdZy7zhShzETGa45Sbq8.VAntFp8vsdG7P2xeCG4VuCdn679gPff1P1NFwS4JtLt7a7Yi447LfCbtQq8qSbLqT37AL1H6wpwUbjO3sf5vGEaJC0UYf5LEaD7bk23yG0U+zgLMB9TXpq3A+TeVl7E9JreUN0t.FiBLdNAdF8LdZbt2zMBVSha6nyFvsd67M93+MrKkgrTXHiVSPYo5bVgC9i7JfgY38NLMB0+AuOdeusecdpdXzzZLJKSCA1rTylW7A3G9C9dgQEvW+N41+PeLt6O++.UOxpTjoXzt2AO0q5p3B+AtY359dhbWUjmBju5Herngu0w399S9KX3FSvlEotnodJUYFp1yN3hdQ2Dbf8m31Ngi1jx+Eiqf63t4A9K+3bmel+d7Oxpz3czLrfK7ZuZtpuuaD80ecfU399nebB26CxHWz3gYYY3bAVsvx99detryq7JhFpM5YfwZJQnAcL0.Biqg69aw25S8Y3t96+Rr425gvu4FX0FrCKYOW5Exk+hdAL74bMvANP7YNo1JqssLoHNuNFl4AAlVA0Bm3u5iwW6i9I4H29cyvPLYhs+m1kvg9AewndAOOnvh7kuM9Fe1OG6UUfstoKJQUZK0d2Rf5kxYNwm7BAMfMjbOuTvoHJPEBPSUJba08xoB5j1LlXPV7DH..ElEgiQ0KCwIY9zeK5dwLRa.cPmwxPYmyj7s0r.MgHMC0RpMIZfQkdVaoit4mniNIA.FzQf2llTRgRmNOW77L4QJRZaCUpe68PXVR7YVmIEsf4VjVOmaREa96+d3O4s+avSsF1YiGknwo0rFBad4Gje3O76A18JowgTaHBHtjELsw9eYJPWly0JC3QiQBPUSrM5Rwrow.a59W2M3N6ABDuF9PJy34RmGowu1eTIZMRiwhaViHww13BoyGXMsAbolPp61KbwCIdLBscBRdfjMcMSoRfz6AhJv740QcZGEL6co.yZy1GzVh8u1bQRuH.ct.5J0uWR8wR4LpjharVxom+6zZTEsuhpRGeKZts2m93WlK48qaitt.yP0hSraRGhAlMQr8b6s.CzaSAJMTzuW15ygDm.p5OAmtXKzXiTAzApoBHnSfKld22If7NrNKtXPx2cjlPa.0LaCKs+urv0GhJGqDcBLUE8fCklZhZBZSduMda23SWdYQM62oMGfoLdb9zpaltcQE6zmrhmf2BX0XJf4KXssNncKvO8.LMnaSS.omBcWmd8M5FGZG6z8d0KEorcfk8ut8VTQlA32Z.73QzaQKsd1KCsi0oeI53ySSulWR9wSn6ZMqutDndobFSZeGt6UR0relA.m.LSZVzYav9fCOQPq6JFAzSSI8b.PJIxtR6jROgtnkNpoLyBy8t9VOsuU5YXDRueRfvswihss8Z+9VMl0ZBJMBgdAJdHM90BnjnAI4i.Q25ZVeri63Vbln8CQT9tsTzl+TzaiFcZEcK.jre4LeoTn6wTa3UZ6AzLmm7z9br6KCydFJyeNQ3Vca93Oc22qJ9zd8UfxpSeWZQ11mG8dNL2yn1aw1ut+yj9eQurhmz6zLcuipSi4z6411I810fZ168ckpqEFm5mLEZiInkxR4LjD0vZQf5dJ9.sZnzSSs1C8Ir5zcS6BosfGgF5lq0aACkLCrRPiOAZz148zCLDV7l3j8Qc2PcSL6zFa9uWCKDeZ5XD90cLQPcSeM5nWmpcAEXNGkInCDTdzXQ55c8.OSWqYKnNSC84b3lNfvDPSpOMWFQbg64t9WZGCwB8v71RnErtcQh4j9W+1A2vBGSu2a5.Y2lueK6NpSlMdplCgu8aeT5SKbcDUu0AZOzE1nvIoUWBTuTNyIQu7PO2KqdlMWoSqvdSdZo4KYGs4mz8DPVTQntoi8tNy.qh518nlso2psKiWGUuDtDcT5N63MsZsmvXS26s3ssymib62tHVucEzqeKowy.IpUSGhs+V3IFYfN.uRnwqnoi6F1BviNsw7tyOcrNUmc5l6VucLq6VbQvcHMVFWv11SqWSO.q9somj8aaA9jYZltEP2jzpwZGCH5ENN8VNkY298NNipUug9OzRu216dy.ySqip2wwrmmssso23AciwLaGMrTVJmIk9b81SymSMKbuUNVO8j9v.Z1Z9maqy4UKLAsU53tNdPagRlEUzZF2754TypEjtcAotI+RuEsVrGzRUSe00RGmmPBTQlG.UznEM5P+qc6EaqviZlegh9ql52FslkN5LnysK62ulAJEG6agjkDeFyMdx7CmsL4FRFi12mRi9G317b.15hvscq1mI8uWjENNjV+9e1NG5sOjEHhZ9+o885vVN5YWLUKH8BznrTi5kxYVo2jo9ZR2p05bZLqBc5Bpl6k7m.5aH5sLQtOEFaQCm4nAn8Ta8Lhd2GysRSn2wRapThPhZf4iYmvbW+tEF5mNP6CvzCDPSXVEYgXF6yjfeiFUzfskXTQChEs3HymVjRoQKoiUl+Ztk3JRMOnyh7h65sKft9y1PmBztqgdbB21voA59Fcq6bRzPztql4zxuuV0yoALyNp9bW261ZVlpdFEOsf0y.Pm02aOfnMK5QPSpQiT+L+6mlVJqnK4It8bb2o9+RMpWJmIkE.omYqdlCLbQMS2NMNdxP5ui+NCINGH8ii9wBfvzCvokRf1sCOqejphH84PeAsu5uPvLdy6oAXGkMg4AA5i7.QPGIBPOWWUV.Zn6b2dHi4no5TRVftlPaaOOsLy8dP+ie61YQ+wnEduZaTr9QWNUtOl69caThncHtW+Zt7Ftnm+QReYApmVpQ8R4LqzaaqZ5OwTOaqrcx1oU4SPcMTy8qS+1WwVzJ+QseeR.glMub6Xkk4o0HcBKRTAzC.W058.sGz70NPHUSAsZBgTthl.nU3TIH+41x+h2OsNQVDdZt6Y0B1NPsM2Oy8cayws3i5EOtNuGYqFdawleQVdWr8l+YudtO7j+dwh+udaam96NZKGmp+NmXt6qEkk.0KkyZjETh3wPNKZyfmxpps8zrrsG2b+9Q+ZzaGxyIwOadfm3mEAo8Dq91tfGMlXbinBaS0de64kOBVu8d8fZg++wT1Bf8iww0CT+w5RbZoI8oibRa3sYg6S0l3jbvKApWJKkuKP5pJ2KHZsFs1FcANMnUa+wsTNyJKApWJKkuKThEmUh0f.QHHABhty0AWJmcIKApWJKkuKPVTK41pncUUE1FWJWe.MFULOIOmbVDMSeWp7+CPtsB4hslRh+A....PRE4DQtJDXBB" ],
					"embed" : 1,
					"id" : "obj-105",
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 558.0, 8.0, 86.0, 44.0 ],
					"pic" : "System:/Users/acont/Dropbox/shared/invoice_logo.jpg",
					"presentation" : 1,
					"presentation_rect" : [ 845.0, 75.0, 86.0, 44.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 14.0,
					"frgb" : 0.0,
					"id" : "obj-23",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 41.0, 262.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 53.0, 87.0, 240.0, 22.0 ],
					"text" : "Real-time Multiple-Pitch Transcription",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Arial",
					"fontsize" : 24.0,
					"frgb" : 0.0,
					"id" : "obj-22",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 8.0, 182.0, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 38.0, 38.0, 182.0, 33.0 ],
					"text" : "Transcribe~",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-53",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 297.5, 156.0, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-49",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 261.5, 156.0, 36.0, 20.0 ],
					"text" : "*~ 2."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-72",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 478.5, 230.0, 48.0, 20.0 ],
					"text" : "pack i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "gain~",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 174.5, 156.0, 87.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 478.5, 258.0, 51.0, 20.0 ],
					"text" : "noteout"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Bang to see all current parameters",
					"hint" : "Bang to see all current parameters",
					"id" : "obj-32",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 4.5, 315.0, 26.0, 26.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-28",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 303.5, 355.0, 37.0, 18.0 ],
					"text" : "4096"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-29",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 303.5, 373.0, 37.0, 18.0 ],
					"text" : "2048"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-30",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 303.5, 391.0, 37.0, 18.0 ],
					"text" : "1024"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-20",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 159.0, 355.0, 37.0, 18.0 ],
					"text" : "2048"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-26",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 159.0, 373.0, 37.0, 18.0 ],
					"text" : "1024"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-27",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 159.0, 391.0, 32.5, 18.0 ],
					"text" : "512"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-16",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 46.5, 355.0, 37.0, 18.0 ],
					"text" : "4096"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-14",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 46.5, 373.0, 37.0, 18.0 ],
					"text" : "2048"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-13",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 46.5, 391.0, 37.0, 18.0 ],
					"text" : "1024"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-10",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 433.0, 258.0, 37.0, 18.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 433.0, 230.0, 34.0, 20.0 ],
					"text" : "+ 21"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 433.0, 202.0, 75.0, 20.0 ],
					"text" : "unpack i i"
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
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 433.0, 177.0, 50.0, 20.0 ],
					"text" : "zl iter 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "nslider",
					"mode" : 1,
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 433.0, 283.0, 75.0, 198.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 174.5, 205.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"id" : "obj-36",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 234.5, 101.0, 49.0, 17.0 ],
					"text" : "resume"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"id" : "obj-37",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 192.5, 101.0, 42.0, 17.0 ],
					"text" : "pause"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"id" : "obj-41",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 174.5, 83.0, 98.0, 17.0 ],
					"text" : "open chopin.wav"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"id" : "obj-43",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 174.5, 130.0, 166.0, 19.0 ],
					"save" : [ "#N", "sfplay~", "", 1, 120960, 0, "", ";" ],
					"text" : "sfplay~ 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 14.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "list", "list" ],
					"patching_rect" : [ 14.5, 424.0, 308.0, 22.0 ],
					"text" : "transcribe~ PianoTemplates.txt 4096 1024 4096"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 1.0, 0.968627, 0.811765, 1.0 ],
					"grad1" : [ 0.266667, 0.34902, 0.470588, 1.0 ],
					"grad2" : [ 0.85098, 0.85098, 0.85098, 1.0 ],
					"id" : "obj-3",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ -4.0, 2.0, 655.0, 70.5 ],
					"presentation" : 1,
					"presentation_rect" : [ 16.0, 17.0, 876.0, 66.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 24.0, 452.0, 417.75, 452.0, 417.75, 162.0, 442.5, 162.0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-17", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-17", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 442.5, 253.0, 473.25, 253.0, 473.25, 224.0, 488.0, 224.0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-72", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "invoice_logo.jpg",
				"bootpath" : "/Users/acont/Dropbox/shared",
				"patcherrelativepath" : "../../../../Dropbox/shared",
				"type" : "JPEG",
				"implicit" : 1
			}
, 			{
				"name" : "transcribe~.mxo",
				"type" : "iLaX"
			}
 ]
	}

}
