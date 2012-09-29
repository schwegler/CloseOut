class AddSiteimgToSite < ActiveRecord::Migration
  def change
    add_column :sites, :siteimg, :string
  end
end
