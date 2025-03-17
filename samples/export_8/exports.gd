@tool
extends Node

# Export storage
var a # Not stored in the file, not displayed in the editor.
@export_storage var b # Stored in the file, not displayed in the editor.
@export var c: int # Stored in the file, displayed in the editor.

@export_custom(PROPERTY_HINT_NONE, "suffix:m") var altitude: Vector3

@export_tool_button("Hello", "Callable") var hello_action = hello

func hello():
	print("Hello world!")
