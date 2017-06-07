categories = [ {name: "彩妆"}, {name: "眼妆"}, {name: "底妆"}, {name: "唇妆"} , {name: "粉底"}]

categories.each do |c|
Category.create!( name: c[:name])
end
puts "create categories"
