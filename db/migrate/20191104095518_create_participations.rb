class CreateParticipations < ActiveRecord::Migration[5.2]
  def change
    create_table :participations do |t|
      t.string :stripe_customer_id #l'identifiant unique donné par Stripe au payeur
      t.timestamps
    end
  end
end
