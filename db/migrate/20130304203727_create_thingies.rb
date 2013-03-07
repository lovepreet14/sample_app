class CreateThingies < ActiveRecord::Migration
  def change
    create_table :thingies do |t|

      t.timestamps
    end
  end
end
