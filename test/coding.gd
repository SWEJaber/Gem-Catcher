extends Node2D

# Enums
enum PlayerState { IDLE, WALK, JUMP, ALIVE, DEAD, ATTACK }

func handle_player_state(state: PlayerState):
#	This is similar to switch statements
	match state: 
		PlayerState.IDLE:
			print("Player is idle")
		PlayerState.WALK:
			print("Player is walking")
		_:
			print("Unknown player state.")


# Script-level score variable
var _score: int = 100 


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	handle_player_state(PlayerState.ATTACK)

func classes() -> void:
	var p1: Player = Player.new("Jabba", 10)
	p1.say_status()
	

	Player.say_how_many()
	var p2: Player = Player.new("Raed", 200)
	p2.say_status()
	
	p1.hit()
	
	p1.say_status()
	
	Player.say_how_many()
	
func string_formatting() -> void:
	var lives: int = 10
	var level_name: String = "Rocky"
	var speed: float = 312.3245
	
	var s: String = "l %d n %s s %.2f" %[lives, level_name, speed]
	
	print(s)
	
func loops() -> void:
	var my_times: Array = [41, 43, 34, 56, 43]
	
	
	for my_time in my_times:
		print(my_time)
	
	print("DONE")
	
	for n in range(10):
		print(n)
		
	const STOPPER: int = 10
	var num: int = 0
	
	while num < STOPPER:
		num+=1
		print("num: ", num)
		
	print("DONE")
	
	
	const PROFILE: Dictionary = {
		"name": "Jaber",
		"age": 28,
		"favorite_game": "MMX6",
		"occupation": "Software Engineer"
	}
	
	for key in PROFILE.keys():
		print(key, " -> ", PROFILE[key])
	
func dictionary() -> void:
	var profile = {
		"name": "Jaber",
		"age": 28,
		"address": {
			"street": "Alwurud",
			"plz": 23456
		}
	}
	
	
	var name = "Jaber"
	
	print(profile)
	print(profile["age"])
	profile["age"]  = 29
	
	print(profile)
	print(profile["age"])
	print(profile.address.street)
	
	print(profile.keys())
	
func arrays() -> void:
	var fruits: Array = ["apple", "pear", "banana"]
	
	print(fruits[0])
	print(fruits.size())
	print(type_string(typeof(fruits)))
	
	print(fruits)
	fruits.shuffle()
	print(fruits)
	
	
	fruits.push_back("kiwi")
	fruits.push_front("orange")
	
	print(fruits)
	
func operators() -> void:
	var num1: int = 3
	var num2: int = 11
	
	
#	Mathematical operators
	print(num1 + num2)
	print(num1 - num2)
	print(num1 * num2)
	print(num1 / num2)
	print(num2 % num1)
	
	var result: int = num2 % num1
	
	print(num1 > num2)
	print(num1 < num2)
	print(num1 == num2)
	print(num1 != num2)
	
#	Conditionals
	if num1 == 3:
		print("num1 is 3") 
			
		if num2 < 10:
			print("DANGER!")
		else:
			print("We are okay :D")
	elif num1 == 5:
		print("num1 is 5")
	else:
		print("Ooops")
	
	print("Ooops2")
	
func variables() -> void:
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
