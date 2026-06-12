extends CanvasLayer

signal start_game

func _ready():
    $MessageLabel.text = "Dodge the Creeps"
    $MessageLabel.show()
    $Button.show()
    await get_tree().create_timer(0.5).timeout
    update_score(0)

func show_message(text: String):
    $MessageLabel.text = text
    $MessageLabel.show()
    $MessageTimer.start()

func show_game_over():
    show_message("Game Over")
    await $MessageTimer.timeout
    $Button.show()

func update_score(s: int):
    $ScoreLabel.text = str(s)

func _on_button_pressed():
    $Button.hide()
    $MessageLabel.hide()
    start_game.emit()

func _on_message_timer_timeout():
    $MessageLabel.hide()
