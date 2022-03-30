class CreateParties < ActiveRecord::Migration[6.1]
  def change
    create_table :parties do |t|
      t.string :event_name
      t.string :event_host
      t.string :event_date
      t.string :event_address
      t.string :short_message
    end
  end
end
