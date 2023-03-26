class Performance < ApplicationRecord
  validates :title, :duration, presence: true

  validate :dates_overlap_check

  def dates_overlap_check
    overlap_performance = Performance.find_by('duration @> ?::date', duration.first)
    if overlap_performance.present?
      errors.add(:duration, { message: "This date already used by: #{overlap_performance.title}",
                              data: overlap_performance })
    end
  end
end
