class ChangeMunici < ActiveRecord::Migration
  def change
  	change_column :municipalities, :homici2007, 'integer USING CAST(homici2007 AS integer)'
  	change_column :municipalities, :homici2008, 'integer USING CAST(homici2008 AS integer)'
  	change_column :municipalities, :homici2009, 'integer USING CAST(homici2009 AS integer)'
  	change_column :municipalities, :homici2010, 'integer USING CAST(homici2010 AS integer)'
  	change_column :municipalities, :homici2011, 'integer USING CAST(homici2011 AS integer)'
  	change_column :municipalities, :homici2012, 'integer USING CAST(homici2012 AS integer)'
  	change_column :municipalities, :homici2013, 'integer USING CAST(homici2013 AS integer)'
  	change_column :municipalities, :homici2014, 'integer USING CAST(homici2014 AS integer)'
  	change_column :municipalities, :homici2015, 'integer USING CAST(homici2015 AS integer)'
  end
end
