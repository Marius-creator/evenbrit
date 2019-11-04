class AddReferenceToParticipations < ActiveRecord::Migration[5.2]
  def change
    add_reference :participations, :user, foreign_key: true
    add_reference :participations, :event, foreign_key: true
  end
end
