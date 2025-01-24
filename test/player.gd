
# Classes are reusable blueprints
class_name Player

# This is an inner class
class Stuff: 
	var _age: int = 10 
	
	func _init(a: int):
		self._age = a

static var player_count: int = 0
	
	
var _nick_name: String = "Jaber"
var _health: int = 100

func _init(n: String, h: int) -> void:
#	Instance variables
	self._nick_name = n
	self._health = h
	
#	Class variables
	player_count+=1
	
func say_status() -> void:
	print("%s %d" % [_nick_name, _health])

func hit() -> void:
	var st: Stuff = Stuff.new(25)
	print("st: %d" %st._age)
	_health-=1
	
# Static functions and variables are mostly used for utilities
static func say_how_many() -> void:
	print("Player count is ", Player.player_count)
