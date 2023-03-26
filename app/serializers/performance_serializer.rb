class PerformanceSerializer < ActiveModel::Serializer
  attributes :id, :title, :starts_at, :ends_at

  def starts_at
    object.duration.first
  end

  # daterange позволяет сохранять включительно, но выдает невключительно
  def ends_at
    object.duration.last - 1.day
  end
end
