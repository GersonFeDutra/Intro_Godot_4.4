@tool
extends Node

# Export array

@export var a: Array
@export var scenes: Array[PackedScene]

@export var textures: Array[Texture] = []

@export var vector3s = PackedVector3Array()
@export var strings = PackedStringArray()

@export_range(-360, 360, 0.001, "degrees") var laser_angles: Array[float] = []
@export_file("*.json") var skill_trees: Array[String] = []
@export_color_no_alpha var hair_colors = PackedColorArray()
@export_enum("Espresso", "Mocha", "Latte", "Capuccino")
var barista_suggestions: Array[String] = []
