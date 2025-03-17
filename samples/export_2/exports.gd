extends Node

@export var number: int = 5
@export var number_b = 5  # Coercido pelo nome [Variant]

@export var resource: Resource
@export var node: Node

@export_group("My Properties")
@export var number_c = 3

@export_subgroup("Extra Properties")
@export var string = ""
@export var flag = false

@export_category("Main Category")
@export var number_d = 3
@export var string_b = ""

@export_category("Extra Category")
@export var flag_b = false
