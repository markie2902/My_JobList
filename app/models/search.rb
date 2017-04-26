class Search < ApplicationRecord

  def search_jobs

    jobs = Job.all

    jobs = jobs.where(["title LIKE ?", "%#{title}%"]) if title.present?
    jobs = jobs.where(["status LIKE ?", "%#{status}%"]) if status.present?

    return jobs

  end

end
