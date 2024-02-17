require 'csv'

def parse_csv(file_name)
  csv_data = []

  # Read the CSV file and convert it into an array of hashes
  CSV.foreach(file_name, headers: true) do |row|
    csv_data << row.to_h
  end

  csv_data
end

# Provide the name of the CSV file to parse
file_name = "data.csv"

# Parse the CSV file and print the resulting array of hashes
parsed_data = parse_csv(file_name)
puts parsed_data.inspect
