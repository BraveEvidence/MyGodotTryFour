extends Node2D

var _my_library: Variant = null
@onready var label: Label = $Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if _my_library == null && ClassDB.class_exists("MyLibrary"):
		_my_library = ClassDB.instantiate("MyLibrary")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	if _my_library:
		var value = _my_library.addition(4,5)
		print(value)
		label.text = str(value)


func _on_button_2_pressed() -> void:
	if _my_library:
		var value = _my_library.hello("Nobody")
		label.text = value

#https://developer.apple.com/help/account/manage-your-team/locate-your-team-id/
#https://migueldeicaza.github.io/SwiftGodotDocs/tutorials/swiftgodot/your-first-extension/
#https://github.com/rktprof/godot-ios-extensions/issues/9
