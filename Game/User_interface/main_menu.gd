class_name Main_Menu	

extends Control

@onready var start_button =$MarginContainer/HBoxContainer/VBoxContainer/Start_Button as Button
@onready var exit_button  =$MarginContainer/HBoxContainer/VBoxContainer/Exit_Button as Button
@onready var start_level  = preload("res://scenes/Game.tscn") as PackedScene
# Called when the node enters the scene tree for the first time.
func _ready():

	start_button.button_down.connect(on_start_pressed)
	exit_button.button_down.connect(on_exit_pressed)
	
func on_start_pressed() -> void:
	get_tree().change_scene_to_packed(start_level)
	
func on_exit_pressed() -> void:
	get_tree().quit()