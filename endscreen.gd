extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
		get_node("victorytext/options/buttons/Exit").connect("pressed",self,"_pris_button")

		
func _pris_button():
		get_tree().change_scene("res://end.tscn")
