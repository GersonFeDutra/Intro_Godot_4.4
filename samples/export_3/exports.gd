@tool
extends Node

# String as path
@export_file var f
@export_dir var d
@export_file("*.txt") var text_file
@export_global_file("*.png") var tool_image
@export_global_dir var tool_dir
@export_multiline var text: String

# Limiting editor input range
@export_range(0, 20) var i
@export_range(-10, 20) var j
@export_range(-10, 20, 0.2) var k: float
@export_range(0, 100, 1, "or_less", "or_greater") var l: int
@export_range(0, 100000, 0.01, "exp") var exponential: float
@export_range(0, 1000, 0.01, "hide_slider") var no_slider: float

# Adding suffixes and handling degrees/radians
@export_range(0, 100, 1, "suffix:m") var m: int
@export_range(0, 360, 0.1, "radians_as_degrees") var angle: float
