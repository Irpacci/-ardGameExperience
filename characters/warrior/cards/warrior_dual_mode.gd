extends Card

func apply_effects(targets: Array[Node]) -> void:
	var damage_effect := DamageEffect.new()
	var block_effect := BlockEffect.new()
	block_effect.amount = 3
	damage_effect.amount = 3
	for target in targets:
		if target is Player:
			block_effect.execute([target])
		else:
			damage_effect.execute([target])
	SFXPlayer.play(sound)
