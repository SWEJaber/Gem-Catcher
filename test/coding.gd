extends Node2D

# Enums
enum PlayerState { ALIVE, DEAD }

# Script-level score variable
var _score: int = 100 


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Hello")
	
#	Variables
	var health: int = 100
	var height: float = 1.77
	var isInvisible: bool = false
	var surname: String = "Alsalamah"
	
	
#	Constants
	const SPEED: int = 300
	
	# Enum variable	
	var player_state: PlayerState = PlayerState.ALIVE
	
#	
	print(PlayerState.keys()[player_state])
	
	print_name()
	var result: int = add_nums(1, 2)
	print_name()
	
	print(result)


func print_name() -> void:
#	This local variable overrides the global "score" variable
	var score: int = 500
	print("Score: ", score)
	print("Jaber")
	

func add_nums(num1: int, num2: int) -> int:
	_score += 1
	return num1 + num2
