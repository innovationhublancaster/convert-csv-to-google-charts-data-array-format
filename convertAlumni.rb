require 'csv'
require 'time'
CSV.foreach("alumni.csv") do |row|
  puts(row[0] , row[1])

  CSV.open(Time.now.to_s + "newAlumni.csv", "a+", {force_quotes: false}) do |csv|
    var = "['" + row[0].capitalize + "', " + row[1] + "],"
    csv << [var]
  end
end
 
