class ChangeDataTypeLatLng < ActiveRecord::Migration[7.0]
  def change
    change_column :pins, :lat, :float
    change_column :pins, :lng, :float
  end
end
