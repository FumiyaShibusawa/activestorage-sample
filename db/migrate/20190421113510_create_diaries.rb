# frozen_string_literal: true

class CreateDiaries < ActiveRecord::Migration[5.2]
  def change
    create_table :diaries do |t|
      t.string(:title, index: { unique: true })
      t.text(:content)
      t.datetime(:published)
      t.references(:user, foreign_key: true, index: { unique: true })

      t.timestamps
    end
  end
end
