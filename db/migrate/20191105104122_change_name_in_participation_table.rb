class ChangeNameInParticipationTable < ActiveRecord::Migration[5.2]
  def change
  add_reference :participations, :attendee, index: true
  end
end
