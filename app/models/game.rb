class Game < ActiveRecord::Base
  has_many :pieces

  enum state: [:in_progress, :complete]
end
