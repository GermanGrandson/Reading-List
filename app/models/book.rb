class Book < ActiveRecord::Base

  # scope :finished, ->{where('finished_on IS NOT NULL')} REFACTORED TO BELOW. IS THE SAME OUTCOME
  scope :finished, ->{where.not(finished_on: nil)}
  scope :recent, ->{where('finished_on > ?', 1.days.ago)}
  # scope :search, ->(keyword){where(title: keyword) if keyword.present?} SAME AS SEARCH METHOD BELOW, BUT WILL DISPLAY BOOKS IF NOTHING IS IN SEARCH. DOES NOT NEED ELSE. SCOPE WILL ALWAYS RETURN A COLLECTION.

  # def self.recent  ANOTHER WAY TO WRITE THE SCOPE :recent ABOVE
  #   where('finished_on < ?', 2.days.ago)
  # end

  def finished?
    finished_on.present?
  end

  def self.search(keyword)
    if keyword.present?
      keyword = keyword.split.map(&:capitalize).join(' ')
      where(title: keyword)
    else
      self.all
    end
  end

end
