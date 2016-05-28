class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :clave_estado
      t.string :estado
      t.string :homici2007
      t.string :homici2008
      t.string :homici2009
      t.string :homici2010
      t.string :homici2011
      t.string :homici2012
      t.string :homici2013
      t.string :homici2014
      t.string :homici2015
      t.string :iso_code

      t.timestamps
    end
  end
end
