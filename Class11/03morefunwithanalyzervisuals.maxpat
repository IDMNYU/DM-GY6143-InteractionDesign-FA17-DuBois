{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 3,
			"revision" : 4,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"rect" : [ 125.0, 79.0, 1277.0, 582.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 18.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "luketeaching",
		"subpatcher_template" : "luketeaching_template",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-163",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 161.0, 674.0, 387.0, 27.0 ],
					"style" : "",
					"text" : "< swap in the z (third plane) from the right input"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-160",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 215.0, 593.0, 299.0, 27.0 ],
					"style" : "",
					"text" : "< this puts out a totally normal plane"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-158",
					"maxclass" : "jit.pwindow",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 706.0, 736.0, 190.5, 144.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-152",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 499.0, 420.0, 150.0, 47.0 ],
					"style" : "",
					"text" : "< frame clock for the geometry"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.222951, 0.875348, 0.876243, 0.9 ],
					"id" : "obj-147",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 706.0, 407.0, 75.0, 29.0 ],
					"style" : "",
					"text" : "sel -999"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 18.0,
					"id" : "obj-142",
					"maxclass" : "jit.fpsgui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 147.0, 307.0, 80.0, 42.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.222951, 0.875348, 0.876243, 0.9 ],
					"id" : "obj-141",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 761.0, 363.0, 61.0, 29.0 ],
					"style" : "",
					"text" : "sqrt 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-140",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 835.0, 363.0, 150.0, 87.0 ],
					"style" : "",
					"text" : "< dumb shitty hack... convert the frequency data to MIDI"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.92079, 0.584363, 0.382955, 0.9 ],
					"id" : "obj-132",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 9,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 45.0, 736.0, 604.0, 49.0 ],
					"style" : "",
					"text" : "jit.gl.mesh v @draw_mode line_strip @scale -0.8 -0.8 0.8 @rotate -45 1 0 0 @line_width 2 @color 0 0 0 1"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.92079, 0.584363, 0.382955, 0.9 ],
					"id" : "obj-131",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 40.5, 638.0, 613.0, 29.0 ],
					"style" : "",
					"text" : "jit.op @op pass pass !pass pass pass pass pass pass pass pass pass pass"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.92079, 0.584363, 0.382955, 0.9 ],
					"id" : "obj-130",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 45.0, 535.0, 400.0, 49.0 ],
					"style" : "",
					"text" : "jit.gl.gridshape v @shape plane @automatic 0 @matrixoutput 1 @dim 128 128 @color 0 0 0 1"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.92079, 0.584363, 0.382955, 0.9 ],
					"id" : "obj-129",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 861.0, 687.0, 113.0, 29.0 ],
					"style" : "",
					"text" : "jit.matrix bob"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.92079, 0.584363, 0.382955, 0.9 ],
					"id" : "obj-128",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 761.0, 630.0, 167.0, 29.0 ],
					"style" : "",
					"text" : "jit.rota @offset_y -1"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.222951, 0.875348, 0.876243, 0.9 ],
					"bgcolor2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"bgfillcolor_color1" : [ 0.222951, 0.875348, 0.876243, 0.9 ],
					"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"bgfillcolor_proportion" : 0.39,
					"bgfillcolor_type" : "gradient",
					"gradient" : 1,
					"id" : "obj-126",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 729.5, 535.0, 175.0, 29.0 ],
					"style" : "",
					"text" : "setcell $1 127 val $2"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.222951, 0.875348, 0.876243, 0.9 ],
					"id" : "obj-124",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 706.0, 492.0, 39.0, 29.0 ],
					"style" : "",
					"text" : "join"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.222951, 0.875348, 0.876243, 0.9 ],
					"id" : "obj-123",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 706.0, 452.0, 173.0, 29.0 ],
					"style" : "",
					"text" : "scale 40 127 0. 127."
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.222951, 0.875348, 0.876243, 0.9 ],
					"id" : "obj-122",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 706.0, 362.0, 46.0, 29.0 ],
					"style" : "",
					"text" : "ftom"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-117",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 464.0, 420.0, 24.0, 24.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.222951, 0.875348, 0.876243, 0.9 ],
					"id" : "obj-115",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 583.0, 362.0, 59.0, 29.0 ],
					"style" : "",
					"text" : "sel 30"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.92079, 0.584363, 0.382955, 0.9 ],
					"id" : "obj-114",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 712.0, 586.0, 257.0, 29.0 ],
					"style" : "",
					"text" : "jit.matrix bob 1 float32 128 128"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.92079, 0.584363, 0.382955, 0.9 ],
					"bgcolor2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"bgfillcolor_color1" : [ 0.92079, 0.584363, 0.382955, 0.9 ],
					"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"bgfillcolor_proportion" : 0.39,
					"bgfillcolor_type" : "gradient",
					"gradient" : 1,
					"id" : "obj-110",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 32.0, 407.0, 113.0, 29.0 ],
					"style" : "",
					"text" : "fullscreen $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-108",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 32.0, 378.0, 24.0, 24.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.92079, 0.584363, 0.382955, 0.9 ],
					"id" : "obj-106",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 32.0, 342.0, 59.0, 29.0 ],
					"style" : "",
					"text" : "sel 27"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.92079, 0.584363, 0.382955, 0.9 ],
					"id" : "obj-105",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 4,
					"outlettype" : [ "int", "int", "int", "int" ],
					"patching_rect" : [ 32.0, 299.0, 50.5, 29.0 ],
					"style" : "",
					"text" : "key"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.92079, 0.584363, 0.382955, 0.9 ],
					"id" : "obj-104",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 32.0, 438.0, 103.0, 29.0 ],
					"style" : "",
					"text" : "jit.window v"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.92079, 0.584363, 0.382955, 0.9 ],
					"id" : "obj-103",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 32.0, 234.0, 191.0, 49.0 ],
					"style" : "",
					"text" : "jit.gl.render v @erase_color 1 1 1 1"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.92079, 0.584363, 0.382955, 0.9 ],
					"id" : "obj-102",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "erase" ],
					"patching_rect" : [ 32.0, 123.0, 96.0, 29.0 ],
					"style" : "",
					"text" : "t b b erase"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-101",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 35.0, 33.0, 24.0, 24.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.92079, 0.584363, 0.382955, 0.9 ],
					"id" : "obj-99",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 32.0, 81.0, 82.0, 29.0 ],
					"style" : "",
					"text" : "qmetro 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 739.0, 239.0, 156.0, 47.0 ],
					"style" : "",
					"text" : "< this is good shit right here."
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.222951, 0.875348, 0.876243, 0.9 ],
					"id" : "obj-47",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 706.0, 305.0, 74.0, 29.0 ],
					"style" : "",
					"text" : "unjoin 3"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-34",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 413.0, 340.0, 116.0, 29.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.222951, 0.875348, 0.876243, 0.9 ],
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 413.0, 293.0, 56.0, 29.0 ],
					"style" : "",
					"text" : "dbtoa"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-31",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 413.0, 234.0, 98.0, 29.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.222951, 0.875348, 0.876243, 0.9 ],
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 331.0, 82.0, 50.0, 29.0 ],
					"style" : "",
					"text" : "adc~"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.222951, 0.875348, 0.876243, 0.9 ],
					"id" : "obj-6",
					"linecount" : 3,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 9,
					"outlettype" : [ "list", "float", "float", "float", "list", "bang", "list", "list", "FullPacket" ],
					"patching_rect" : [ 336.0, 141.0, 519.0, 69.0 ],
					"style" : "",
					"text" : "analyzer~ @buffersize 1024 @hopsize 512 @fftsize 2048 @windowtype hamming @initialdelay 0 @numpitches 1 @numpeakstofind 30 @numpeakstooutput 30 @barkformat list"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"color" : [ 0.222951, 0.875348, 0.876243, 0.9 ],
					"destination" : [ "obj-7", 0 ],
					"order" : 0,
					"source" : [ "obj-101", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.92079, 0.584363, 0.382955, 0.9 ],
					"destination" : [ "obj-99", 0 ],
					"order" : 1,
					"source" : [ "obj-101", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.92079, 0.584363, 0.382955, 0.9 ],
					"destination" : [ "obj-103", 0 ],
					"source" : [ "obj-102", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.92079, 0.584363, 0.382955, 0.9 ],
					"destination" : [ "obj-103", 0 ],
					"source" : [ "obj-102", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-142", 0 ],
					"source" : [ "obj-103", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.92079, 0.584363, 0.382955, 0.9 ],
					"destination" : [ "obj-106", 0 ],
					"source" : [ "obj-105", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.92079, 0.584363, 0.382955, 0.9 ],
					"destination" : [ "obj-108", 0 ],
					"source" : [ "obj-106", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.92079, 0.584363, 0.382955, 0.9 ],
					"destination" : [ "obj-110", 0 ],
					"source" : [ "obj-108", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.92079, 0.584363, 0.382955, 0.9 ],
					"destination" : [ "obj-104", 0 ],
					"source" : [ "obj-110", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.92079, 0.584363, 0.382955, 0.9 ],
					"destination" : [ "obj-128", 0 ],
					"order" : 0,
					"source" : [ "obj-114", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.92079, 0.584363, 0.382955, 0.9 ],
					"destination" : [ "obj-131", 1 ],
					"order" : 2,
					"source" : [ "obj-114", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-158", 0 ],
					"order" : 1,
					"source" : [ "obj-114", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.222951, 0.875348, 0.876243, 0.9 ],
					"destination" : [ "obj-117", 0 ],
					"source" : [ "obj-115", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.92079, 0.584363, 0.382955, 0.9 ],
					"destination" : [ "obj-114", 0 ],
					"order" : 0,
					"source" : [ "obj-117", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.92079, 0.584363, 0.382955, 0.9 ],
					"destination" : [ "obj-130", 0 ],
					"order" : 1,
					"source" : [ "obj-117", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-147", 0 ],
					"source" : [ "obj-122", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.222951, 0.875348, 0.876243, 0.9 ],
					"destination" : [ "obj-124", 0 ],
					"source" : [ "obj-123", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.222951, 0.875348, 0.876243, 0.9 ],
					"destination" : [ "obj-126", 0 ],
					"source" : [ "obj-124", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-114", 0 ],
					"source" : [ "obj-126", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.92079, 0.584363, 0.382955, 0.9 ],
					"destination" : [ "obj-129", 0 ],
					"source" : [ "obj-128", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-131", 0 ],
					"source" : [ "obj-130", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-132", 0 ],
					"source" : [ "obj-131", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.222951, 0.875348, 0.876243, 0.9 ],
					"destination" : [ "obj-124", 1 ],
					"source" : [ "obj-141", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-123", 0 ],
					"source" : [ "obj-147", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.222951, 0.875348, 0.876243, 0.9 ],
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.222951, 0.875348, 0.876243, 0.9 ],
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.222951, 0.875348, 0.876243, 0.9 ],
					"destination" : [ "obj-115", 0 ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.222951, 0.875348, 0.876243, 0.9 ],
					"destination" : [ "obj-122", 0 ],
					"source" : [ "obj-47", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.222951, 0.875348, 0.876243, 0.9 ],
					"destination" : [ "obj-141", 0 ],
					"source" : [ "obj-47", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.222951, 0.875348, 0.876243, 0.9 ],
					"destination" : [ "obj-31", 0 ],
					"source" : [ "obj-6", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.0, 0.030146, 1.0 ],
					"destination" : [ "obj-47", 0 ],
					"midpoints" : [ 783.0, 237.5, 715.5, 237.5 ],
					"source" : [ "obj-6", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.222951, 0.875348, 0.876243, 0.9 ],
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.92079, 0.584363, 0.382955, 0.9 ],
					"destination" : [ "obj-102", 0 ],
					"source" : [ "obj-99", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "analyzer~.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0,
		"styles" : [ 			{
				"name" : "luketeaching",
				"default" : 				{
					"fontsize" : [ 18.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ],
		"bgfillcolor_type" : "gradient",
		"bgfillcolor_color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
		"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
		"bgfillcolor_color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
		"bgfillcolor_angle" : 270.0,
		"bgfillcolor_proportion" : 0.39
	}

}
