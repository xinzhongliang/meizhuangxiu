packs = [ {name: "苹果"}, {name: "草莓"}, {name: "桃子"}, {name: "芒果"},  {name: "樱桃"}]

packs.each do |p|
	Pack.create!( name: p[:name])
end
puts "create packs"
