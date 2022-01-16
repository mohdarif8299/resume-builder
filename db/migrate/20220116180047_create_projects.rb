class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :project_url
      t.text :description
      t.string :tech_stack, array: true, default: []

      t.belongs_to :experience, index: true, foreign_key: true
      t.timestamps
    end
  end
end
