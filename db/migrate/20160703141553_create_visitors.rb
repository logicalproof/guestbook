class CreateVisitors < ActiveRecord::Migration
  def change
    create_table :visitors do |t|
      t.string :first_name
      t.string :last_name
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :email
      t.boolean :marital_status
      t.boolean :first_time_visitor
      t.boolean :more_info_requested
      t.boolean :new_to_area
      t.boolean :visit_requested
      t.boolean :learn_about_jesus

      t.timestamps null: false
    end
  end
end
