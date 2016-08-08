Hanami::Model.migration do
  change do
  	create_table :agreements do
  	  primary_key :id
  	  column :url, String, null: false
  	  column :method, String, null: true
  	  column :response, String, null: true
  	end
  end
end
