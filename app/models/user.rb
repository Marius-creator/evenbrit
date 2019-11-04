class User < ApplicationRecord
  has_many :events #Un utilisateur peut administrer plusieurs événements.
  has_many :events, through: :participations #Un utilisateur peut participer à plusieurs événements au travers des participations.

  after_create :welcome_send
    def welcome_send
      UserMailer.welcome_email(self).deliver_now
    end
end
