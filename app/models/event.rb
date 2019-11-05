class Event < ApplicationRecord
# validates :start_date, presence: true
# validates :start_must_be_future
# validates :duration, presence: true, numericality: { only_integer: true, greater_than: 0 } #le nombre de minutes doit être un multiple de 5, et est strictement positif
# validates :duration_must_be_multiple_of_5
# validates :title, presence: true, length: { in: 5..140 } #doit faire au moins 5 caractères et maxi 140 caractères.
# validates :description, presence: true, length: { in: 20..1000 }
# validates :price, presence: true, numericality: { only_integer: true, greater_than: 1, less_than_or_equal_to: 1000 }
# validates :location, presence: true

belongs_to :admin, class_name: 'User' # = administrateur (utilisateur)

has_many :participations, dependent: :destroy#Un événement a plusieurs participations
has_many :attendees, through: :participations, class_name: 'User' #plusieurs participants (utilisateurs) au travers des participations
end
# private
# ​
#   #Valider que la date de début est bien dans le futur
#   def start_must_be_future
#     return if start_date.blank? #On sort de la boucle si start_date est vide
# ​
#     if start_date < Time.now
#       errors.add(:start_date, "cannot be past")
#     end
#   end
# ​
#   #Duration is multiple of 5
#   def duration_must_be_multiple_of_5
#     return if duration.blank? #On sort si la fonction est vide
# ​
#     if duration % 5 != 0
#       errors.add(:duration, "Duration has to be multiple of 5")
#     end
# ​
#   end
