extends Control

onready var label_two := get_node("LabelTwo") as Label
onready var dialogue_path := get_node("DialoguePath") as Label

func _ready() -> void:
	LocalizationManager.connect("language_changed", self, "_on_language_changed")
	label_two.text = tr("UI_STRING_TWO")
	dialogue_path.text = LocalizationManager.get_dialogue_json("dialogue.json")

func _on_SpanishButton_pressed() -> void:
	LocalizationManager.update_language("es")

func _on_EnglishButton_pressed() -> void:
	LocalizationManager.update_language("en")

func _on_language_changed(new_language: String) -> void:
	label_two.text = tr("UI_STRING_TWO")
	dialogue_path.text = LocalizationManager.get_dialogue_json("dialogue.json")
	
