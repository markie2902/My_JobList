class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :company
      t.string :location
      t.date :date_applied
      t.date :date_replied
      t.string :status
      t.string :url

      t.timestamps
    end
  end
end
