@tool
extends Node

# Export enums

enum NamedEnum {THING_1, THING_2, ANOTHER_THING = -1}
@export var x: NamedEnum

@export_enum("Warrior", "Magician", "Thief") var character_class: int

@export_enum("Slow:30", "Average:60", "Very Fast:200")
var character_speed: int

@export_enum("Rebecca", "Mary", "Leah") var character_name: String


# Export arrays

@export var a = [1, 2, 3]
@export var ints: Array[int] = [1, 2, 3]

# Nested typed arrays such as `Array[Array[float]]` are not supported yet.
@export var two_dimensional: Array[Array] = [[1.0, 2.0], [3.0, 4.0]]
