class AddExperienceToProjects < ActiveRecord::Migration[6.1]
  def change
    add_reference :projects, :experience, index: true, foreign_key: true
  end
end
