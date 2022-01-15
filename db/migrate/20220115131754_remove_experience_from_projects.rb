class RemoveExperienceFromProjects < ActiveRecord::Migration[6.1]
  def change
    remove_reference :projects, :experience, null: false, foreign_key: true
  end
end
