class CreateWordJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :word_jobs do |t|
      t.string :last_word

      t.timestamps
    end
  end
end
