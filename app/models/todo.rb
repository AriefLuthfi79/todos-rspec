class Todo < ApplicationRecord
  def completed?
    completed_at?
  end

  def completed!
    update_attributes(:completed_at => Time.current)
  end
end
