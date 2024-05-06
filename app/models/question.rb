class Question < ApplicationRecord
  belongs_to :user

  def self.random
    order(Arel.sql('RANDOM()')).first
  end
end
