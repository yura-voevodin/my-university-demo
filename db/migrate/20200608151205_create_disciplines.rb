class CreateDisciplines < ActiveRecord::Migration[6.0]
  def change
    create_table :disciplines do |t|

      t.string :name
      t.string :description, null: true

      t.timestamps
    end

    create_table :disciplines_classrooms, id: false do |t|
      t.belongs_to :discipline
      t.belongs_to :classroom
    end

    create_table :disciplines_groups, id: false do |t|
      t.belongs_to :discipline
      t.belongs_to :group
    end

    create_table :disciplines_teachers, id: false do |t|
      t.belongs_to :discipline
      t.belongs_to :teacher
    end
  end
end
