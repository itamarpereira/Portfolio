class Selection < ApplicationRecord
  has_many :projects, dependent: :destroy
  has_many :visualizations, dependent: :destroy
end
