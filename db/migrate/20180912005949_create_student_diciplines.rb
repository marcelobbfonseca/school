class CreateStudentDiciplines < ActiveRecord::Migration[5.2]
  def change
    create_table :student_diciplines do |t|
      t.references :user, foreign_key: true
      t.references :discipline, foreign_key: true
      t.float :grade

      t.timestamps
    end
  end
end
