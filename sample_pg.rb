require 'pg'

connection = PG::connect(dbname: "goya")
connection.internal_encoding = "UTF-8"
begin
  result = connection.exec("select weight, give_for from crops;")

  result.each do |record|
      puts "：#{record["weight"]} :#{record["give_for"]}"
  end
ensure
  connection.finish
end