extends Node

export(int) var max_health = 1
onready var health = max_health setget set_health
# won't update from exposed var unless we add onready

signal no_health

func set_health(val):
	# this gets called whenever we do stats.health -= 1
	# magic!
	health = val
	if health <= 0:
		emit_signal("no_health")
