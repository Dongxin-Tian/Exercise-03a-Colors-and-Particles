extends ColorRect

onready var HUD = get_node("/root/Game/HUD")

func _ready():
	HUD.connect("changed",self,"_on_HUD_changed")
	update_color()


func update_color():
	if HUD.color_background:
		get_node("/root/Game/Background").color = Color8(52, 58, 64)
		#$ColorRect.color = Color(1, 0, 0, 1)
	else:
		#$ColorRect.color = Color(1, 0, 0, 1)
		get_node("/root/Game/Background").color = Color(0, 0, 0, 1)

func _on_HUD_changed():
	update_color()
