class Game < ActiveRecord::Base
  belongs_to :player
  has_many :pieces

  enum state: [:in_progress, :complete]
end
