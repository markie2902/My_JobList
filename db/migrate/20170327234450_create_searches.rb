class CreateSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :searches do |t|
      t.string :keywords
      t.string :title
      t.string :status

      t.timestamps
    end
  end
end
