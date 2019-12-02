class Perfil < ApplicationRecord
  belongs_to :user
  validates :altura,presence: true
  validates :peso,presence: true
  validates :objetivo,presence: true
  validates :atividade,presence: true
  validates_uniqueness_of :ativo, if: :ativo
end
