class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.string :location
      t.string :company
      t.string :url
      t.string :levels
      t.string :categories

      t.timestamps
    end
  end
end
