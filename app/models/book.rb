class Book < ActiveRecord::Base

  # scope :finished, ->{where('finished_on IS NOT NULL')} REFACTORED TO BELOW. IS THE SAME OUTCOME
  scope :finished, ->{where.not(finished_on: nil)}
  scope :recent, ->{where('finished_on > ?', 1.days.ago)}

  # def self.recent  ANOTHER WAY TO WRITE THE SCOPE :recent ABOVE
  #   where('finished_on < ?', 2.days.ago)
  # end

  def finished?
    finished_on.present?
  end

end
