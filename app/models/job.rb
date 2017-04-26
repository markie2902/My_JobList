class Job < ApplicationRecord

  def self.search(search)
    if search
      where(["company LIKE ?", "%#{search}%"])
    else
      all
    end
  end

end
