@tool
extends Node

@export_exp_easing var transition_speed

@export var col: Color
@export_color_no_alpha var col_b: Color

# Allows any node.
@export var node: Node

# Allows any node that inherits from BaseButton.
# Custom classes declared with `class_name` can also be used.
@export var some_button: BaseButton

@export var node_path: NodePath
@onready var other_node = get_node(node_path)

@export_node_path("Button", "TouchScreenButton") var other_button

@export var resource: Resource
@export var animation_node: AnimationNode
