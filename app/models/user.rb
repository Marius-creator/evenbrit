class User < ApplicationRecord
  has_many :events #Un utilisateur peut administrer plusieurs événements.
  has_many :events, through: :participations #Un utilisateur peut participer à plusieurs événements au travers des participations.
end
