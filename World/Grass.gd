extends Node2D

const GrassEffect = preload("res://Effects/GrassEffect.tscn")

func create_grass_effect():
	var grassEffect = GrassEffect.instance()
#	var world = get_tree().current_scene	
#	world.add_child(grassEffect)

# better to just grab the parent (ysort node) than grabbing the whole tree
	get_parent().add_child(grassEffect)
	grassEffect.global_position = global_position
	#2nd g_p refer's to Grass's position

func _on_Hurtbox_area_entered(area):
	create_grass_effect()
	queue_free()
