@tool
extends Node

# Exporting bit flags

# Set any of the given flags from the editor.
@export_flags("Fire", "Water", "Earth", "Wind") var spell_elements = 0
@export_flags("Self:4", "Allies:8", "Foes:16") var spell_targets = 0
@export_flags("Self:4", "Allies:8", "Self and Allies:12", "Foes:16")
var spell_targets_b = 0

@export_flags_2d_physics var layers_2d_physics
@export_flags_2d_render var layers_2d_render
@export_flags_2d_navigation var layers_2d_navigation
@export_flags_3d_physics var layers_3d_physics
@export_flags_3d_render var layers_3d_render
@export_flags_3d_navigation var layers_3d_navigation
