extends Control

@export var statement := ""

@export_range(1, 100, 1, "or_greater") var range_var: int = 42

# Pode estar na mesma linha, ou não
@export_node_path("TextEdit", "LineEdit")
var input_field: NodePath

@export_node_path("TextEdit", "LineEdit") var input_fied2: NodePath


func _ready() -> void:
	prints(statement, "more than", range_var, get_node(input_field).text)
	$LineEdit2.text = \
		statement + "more than" + str(range_var) + get_node(input_field).text
