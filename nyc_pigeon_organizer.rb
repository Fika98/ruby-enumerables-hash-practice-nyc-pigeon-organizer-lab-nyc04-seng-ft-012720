def nyc_pigeon_organizer(data)
new_pigeon_data = {}

pigeon_data.each do |pigeon_attribute, hash_of_attribute_values|
  hash_of_attribute_values.each do |attribute_name, pigeon_name|
    pigeon_name.each do |names_of_array|
      if !new_pigeon_data[names_of_array]
      new_pigeon_data[names_of_array] = {pigeon_attribute => [attribute_name]}
      elsif !new_pigeon_data[names_of_array][pigeon_attribute]
      new_pigeon_data[names_of_array][pigeon_attribute] = [attribute_name]
      else
      new_pigeon_data[names_of_array][pigeon_attribute] << attribute_name
        end
      end
    end
  end 
end
