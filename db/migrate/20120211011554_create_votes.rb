class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :user
      t.references :application
      t.boolean :vote
      t.string :no_comment

      t.timestamps
    end
  end
end
