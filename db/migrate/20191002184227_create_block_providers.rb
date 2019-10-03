class CreateBlockProviders < ActiveRecord::Migration[6.0]
  def change
    create_table :block_providers do |t|
      t.string :logrecno
      t.string :provider_id
      t.string :frn
      t.string :providername
      t.string :dbaname
      t.string :holdingcompanyname
      t.string :hoconum
      t.string :hocofinal
      t.string :stateabbr
      t.string :blockcode
      t.string :techcode
      t.string :consumer
      t.integer :maxaddown
      t.integer :maxadup
      t.string :business
      t.integer :maxcirdown
      t.integer :maxcirup

      t.timestamps
    end
  end
end
