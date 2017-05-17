class CreateWeatherRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :weather_requests do |t|
      t.string :ipaddress
      t.integer :lat
      t.integer :lon

      t.timestamps
    end
  end
end
