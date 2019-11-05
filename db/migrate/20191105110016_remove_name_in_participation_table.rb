class RemoveNameInParticipationTable < ActiveRecord::Migration[5.2]
  def change  
    remove_column :participations, :user_id
  end
end
