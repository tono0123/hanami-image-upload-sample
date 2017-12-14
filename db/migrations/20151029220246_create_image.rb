Hanami::Model.migration do
  change do
    create_table :images do
      primary_key :id
      column :name, String
      column :description, String
      column :image_data, String
    end
  end
end
