class CreateResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :responses do |t|
      t.column(:content, :string)
      t.column(:question_id, :integer)
      t.column(:vote_tally, :integer)
      t.column(:best_answer, :boolean)

      t.timestamps
    end
  end
end
