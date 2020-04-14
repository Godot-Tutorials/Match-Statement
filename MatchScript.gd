extends Node


# Declare member variables here. Examples:
var x = 1
var array1 = [1,2,3,4,5]
var var1 = 2
var var2 = 10

var dictionary = {
"key2": "value2",
"key": "value"
}


# Called when the node enters the scene tree for the first time.
func _ready():
	
	# Constant Pattern
	match x:
		1:
			print('x = 1')
		"String":
			print('x = "String"')
	
	# Variable Pattern
	match x:
		var1:
			print('x = 2')
		var2:
			print('x = 10')
	
	# Wildcard Pattern
	match x:
		_:
			print('x can be any value')
	
	# Binding Pattern
	match x:
		var newVar:
			print('x = ', newVar)
	
	#Array Pattern
	match array1:
		[]:
			print('array1 = []')
		[1,2,_,4]:
			print('array1 = [1,2,any value, 4]')
		[1,2,..]: # the .. is used when you want to declare an open ended array
			print('array1 = [1,2, anything]')
	
	# Dictionary Pattern
	match dictionary:
		{}:
			print("Empty dictionary")
		{"key": "value", "key3": "value2"}:
			print("keys and values match")
		{..}:
			print('open ended dictionary')
	
	# Multiple Pattern
	match x:
		1,2,3,4,5:
			print('value is either 1,2,3,4,or 5')




