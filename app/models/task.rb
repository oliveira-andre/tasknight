class Task < ApplicationRecord
  belongs_to :character

  def end_time
    created_at + 25.minutes
  end

  #[TODO] change this name
  def end_at
    end_time.strftime("%b, %d %Y %H:%M:%s")
  end

  def finished?
    return true
    end_time < Time.now
  end

  def rewards
    [
      {
        name: "Ouro",
        amount: 1
      },
      {
        name: "Espada de Diamante",
        amount: 1
      }
    ]
  end

  def battle_actions
    [
      {
        character: "Resque",
        action: :atk,
        damage: 10,
        text: "Resque atacou Goblin com 10 de dano."
      },
      {
        text: "Goblin atacou Resque com 1 de dano."
      }
    ]
  end
end