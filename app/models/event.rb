class Event < ApplicationRecord
validates :start_date, presence: true #il est impossible de créer ou modifier un événement dans le passé.
validates :duration, presence: true #le nombre de minutes doit être un multiple de 5, et est strictement positif
validates :title, presence: true, length: { in: 5..140 } #doit faire au moins 5 caractères et maxi 140 caractères.
validates :description, presence: true, length: { in: 20..1000 }
validates :price, presence: true, numericality: { greater_than: 1 }, numericality: { less_than: 1 }
validates :location, presence: true

belongs_to :user #Un événement appartient à un administrateur (utilisateur)
has_many :participations #Un événement a plusieurs participations
has_many :users through :participations #plusieurs participants (utilisateurs) au travers des participations
end
