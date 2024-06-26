extends Node

#cards
signal card_drag_started(card_ui: CardUI) 
signal card_drag_ended(card_ui: CardUI)
signal card_aim_started(card_ui: CardUI)
signal card_aim_ended(card_ui: CardUI)
signal card_tooltip_requested(card: Card)
signal tooltip_hide_requested
signal card_played(card: Card)

#player
signal player_hand_drawn
signal player_hand_discarded
signal player_turn_ended
signal player_hit
signal player_died

#enemy
signal enemy_action_completed(enemy: Enemy)
signal enemy_turn_ended

#battle
signal battle_over_screen_requested(text: String, type: BattleOverPanel.Type)
