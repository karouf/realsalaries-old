class CreateAnnualRates < ActiveRecord::Migration
  def change
    create_table :annual_rates do |t|
      t.string    :country, null: false
      t.integer   :year,    null: false
      t.decimal   :rate,    precision: 6, scale: 3, null: false
    end
  end
end
