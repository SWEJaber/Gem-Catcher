extends Node2D

@export var gem_scene: PackedScene

@onready var score_label: Label = $Score
@onready var timer: Timer = $Timer

var _score: int = 0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	spawn_gem()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_gem_off_screen() -> void:
	print("_on_gem_off_screen")

func spawn_gem() -> void:
	var x_pos: float = randf_range(70, 1050)
	
	var new_gem: Gem = gem_scene.instantiate();
	
	new_gem.position = Vector2(x_pos, -50)
	new_gem.on_gem_off_screen.connect(game_over)
	
	add_child(new_gem)

func stop_all() -> void:
	timer.stop();
	
	for child in get_children():
		child.set_process(false)


func game_over() -> void:
	stop_all()

func _on_timer_timeout() -> void:
	spawn_gem()


func _on_paddle_area_entered(area: Area2D) -> void:
	_score += 1 
	score_label.text = "%05d" % _score
	
	area.queue_free()
