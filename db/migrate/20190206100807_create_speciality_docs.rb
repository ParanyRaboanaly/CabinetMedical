class CreateSpecialityDocs < ActiveRecord::Migration[5.2]
  def change
    create_table :speciality_docs do |t|

      t.timestamps
    end
  end
end
