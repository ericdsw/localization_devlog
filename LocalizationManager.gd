class_name LManager
extends Node

signal language_changed(new_language)

const BASE_DIALOGUE_PATH := "res://resources/dialogues/"

var language := "en"

func get_dialogue_json(dialogue_name: String) -> String:
	var _localized_dialogue := BASE_DIALOGUE_PATH + language + "/" + dialogue_name
	var _file := File.new()
	if _file.file_exists(_localized_dialogue):
		return _localized_dialogue
	return BASE_DIALOGUE_PATH + dialogue_name

func update_language(new_language: String) -> void:
	language = new_language
	TranslationServer.set_locale(language)
	emit_signal("language_changed", language)
