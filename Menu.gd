extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("options/CenterRow/buttons/Exit").connect("pressed",self,"_pris_button")
	get_node("options/CenterRow/buttons/Button").connect("pressed",self,"_but_press")

		
func _pris_button():
		get_tree().change_scene("res://end.tscn")
		
func _but_press():
	get_tree().change_scene("res://World.tscn")
