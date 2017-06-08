
u = User.create([ email: 'admin@test.com' ,  password: '123456' ,password_confirmation:'123456',is_admin:true])
puts "created an admin user"

categories = [ {name: "彩妆"}, {name: "眼妆"}, {name: "底妆"}, {name: "唇妆"} , {name: "粉底"}]

categories.each do |c|
Category.create!( name: c[:name])
end
puts "create categories"


packs = [ {name: "烟熏妆"}, {name: "职场妆"}, {name: "派对妆"}, {name: "桃花妆"},  {name: "梦幻妆"}, {name: "夏威夷"}, {name: "香格里拉"}, {name: "普罗旺斯"}]

packs.each do |p|
	Pack.create!( name: p[:name])
end
puts "create packs"


products =[
	# {title:"彩妆1号",category_id: 1,pack_id: 1,description: "樱桃彩妆", image_path: "http://oqecjavzf.bkt.clouddn.com/%E5%BD%A9%E5%A6%861%23.jpg"},
	{title: "彩妆2号",category_id: 1,pack_id: 2,description: "草莓彩妆",image_path: "http://oqecjavzf.bkt.clouddn.com/%E5%BD%A9%E5%A6%862%23.jpg"},
	{title: "彩妆3号",category_id: 1,pack_id: 3,description: "苹果彩妆",image_path: "http://oqecjavzf.bkt.clouddn.com/%E5%BD%A9%E5%A6%863%23.jpg"},
	{title: "Nars大地色眼影盘",category_id: 1,pack_id: 4,description: "眼影盘",price: 680,image_path: "http://oqecjavzf.bkt.clouddn.com/Nars%E5%A4%A7%E5%9C%B0%E8%89%B2%E7%9C%BC%E5%BD%B1%E7%9B%98.jpg"},
	{title: "彩妆5号",category_id: 1,pack_id: 5,description: "苹果彩妆",image_path: "http://oqecjavzf.bkt.clouddn.com/%E5%BD%A9%E5%A6%865%23.jpg"},
	{title: "彩妆6号",category_id: 1,pack_id: 6,description: "芒果彩妆",image_path: "http://oqecjavzf.bkt.clouddn.com/%E5%BD%A9%E5%A6%866%23.jpg"},
	{title: "nars腮红",category_id: 1,pack_id: 7,description: "腮红",price: 450,image_path: "http://oqecjavzf.bkt.clouddn.com/nars%20%E8%85%AE%E7%BA%A2.jpg"},
	{title: "彩妆8号",category_id: 1,pack_id: 8,description: "桃子彩妆",image_path: "http://oqecjavzf.bkt.clouddn.com/%E5%BD%A9%E5%A6%868%23.jpg"},
	{title: "眼妆1号",category_id: 2,pack_id: 1,description: "樱桃眼妆",image_path: "http://oqecjavzf.bkt.clouddn.com/%E7%9C%BC%E5%A6%861%23.jpeg"},
	{title: "眼妆2号",category_id: 2,pack_id: 2,description: "草莓眼妆",image_path: "http://oqecjavzf.bkt.clouddn.com/%E7%9C%BC%E5%A6%862%23.jpg"},
	{title: "眼妆3号",category_id: 2,pack_id: 3,description: "杨桃眼妆",image_path: "http://oqecjavzf.bkt.clouddn.com/%E7%9C%BC%E5%A6%863%23.jpg"},
	{title: "眼妆4号",category_id: 2,pack_id: 4,description: "芒果眼妆",image_path: "http://oqecjavzf.bkt.clouddn.com/%E7%9C%BC%E5%A6%864%23.jpg"},
	# {title: "Nars丝绒眼线胶笔",category_id: 2,pack_id: 5,description: "眼线胶笔",price: 320,image_path: "http://oqecjavzf.bkt.clouddn.com/Nars%E4%B8%9D%E7%BB%92%E7%9C%BC%E7%BA%BF%E8%83%B6%E7%AC%94.jpg"},
	# {title: "眼妆6号",category_id: 2,pack_id: 6,description: "蜜桃眼妆",image_path: "http://oqecjavzf.bkt.clouddn.com/%E7%9C%BC%E5%A6%866%23.jpg"},
	{title: "眼妆7号",category_id: 2,pack_id: 7,description: "石榴眼妆",image_path: "http://oqecjavzf.bkt.clouddn.com/%E7%9C%BC%E5%A6%867%23.jpeg"},
	{title: "眼妆8号",category_id: 2,pack_id: 8,description: "橘子眼妆",image_path: "http://oqecjavzf.bkt.clouddn.com/%E7%9C%BC%E5%A6%868%23.jpg"},
	{title: "底妆1号",category_id: 3,pack_id: 1,description: "樱桃底妆",image_path: "http://oqecjavzf.bkt.clouddn.com/%E5%BA%95%E5%A6%861%23.jpg"},
	{title: "底妆2号",category_id: 3,pack_id: 2,description: "草莓底妆",image_path: "http://oqecjavzf.bkt.clouddn.com/%E5%BA%95%E5%A6%862%23.jpg"},
	{title: "底妆3号",category_id: 3,pack_id: 3,description: "杨桃底妆",image_path: "http://oqecjavzf.bkt.clouddn.com/%E5%BA%95%E5%A6%863%23.jpg"},
	{title: "底妆4号",category_id: 3,pack_id: 4,description: "芒果底妆",image_path: "http://oqecjavzf.bkt.clouddn.com/%E5%BA%95%E5%A6%864%23.jpg"},
	{title: "底妆5号",category_id: 3,pack_id: 5,description: "苹果底妆",image_path: "http://oqecjavzf.bkt.clouddn.com/%E5%BA%95%E5%A6%865%23.jpg"},
	{title: "底妆6号",category_id: 3,pack_id: 6,description: "蜜桃底妆",image_path: "http://oqecjavzf.bkt.clouddn.com/%E5%BA%95%E5%A6%866%23.jpg"},
	{title: "底妆7号",category_id: 3,pack_id: 7,description: "石榴底妆",image_path: "http://oqecjavzf.bkt.clouddn.com/%E5%BA%95%E5%A6%867%23.jpg"},
	{title: "底妆8号",category_id: 3,pack_id: 8,description: "橘子底妆",image_path: "http://oqecjavzf.bkt.clouddn.com/%E5%BA%95%E5%A6%868%23.jpg"},
	{title: "唇妆1号",category_id: 4,pack_id: 1,description: "樱桃唇妆",image_path: "http://oqecjavzf.bkt.clouddn.com/%E6%B0%B4%E6%99%B61%23.jpg"},
	{title: "唇妆2号",category_id: 4,pack_id: 2,description: "草莓唇妆",image_path: "http://oqecjavzf.bkt.clouddn.com/%E6%B0%B4%E6%99%B62%23.jpeg"},
	{title: "ysl圣罗兰水感粉底液",category_id: 4,pack_id: 3,description: "粉底液",price: 565,image_path: "http://oqecjavzf.bkt.clouddn.com/ysl%E5%9C%A3%E7%BD%97%E5%85%B0%E6%B0%B4%E6%84%9F%E7%B2%89%E5%BA%95%E6%B6%B2.jpg"},
	{title: "唇妆4号",category_id: 4,pack_id: 4,description: "芒果唇妆",image_path: "http://oqecjavzf.bkt.clouddn.com/%E6%B0%B4%E6%99%B64%23.jpeg"},
	{title: "唇妆5号",category_id: 4,pack_id: 5,description: "苹果唇妆",image_path: "http://oqecjavzf.bkt.clouddn.com/%E6%B0%B4%E6%99%B65%23.jpeg"},
	{title: "唇妆6号",category_id: 4,pack_id: 6,description: "蜜桃唇妆",image_path: "http://oqecjavzf.bkt.clouddn.com/%E6%B0%B4%E6%99%B66%23.jpeg"},
	{title: "唇妆7号",category_id: 4,pack_id: 7,description: "石榴唇妆",image_path: "http://oqecjavzf.bkt.clouddn.com/%E6%B0%B4%E6%99%B67%23.jpeg"},
	{title: "唇妆8号",category_id: 4,pack_id: 8,description: "橘子唇妆",image_path: "http://oqecjavzf.bkt.clouddn.com/%E6%B0%B4%E6%99%B68%23.jpeg"},
	{title: "粉底1号",category_id: 5,pack_id: 1,description: "樱桃粉底",image_path: "http://oqecjavzf.bkt.clouddn.com/%E7%B2%89%E5%BA%951%23.jpg"},
	{title: "粉底2号",category_id: 5,pack_id: 2,description: "草莓粉底",image_path: "http://oqecjavzf.bkt.clouddn.com/%E7%B2%89%E5%BA%952%23.jpeg"},
	{title: "ysl圣罗兰气垫粉底",category_id: 5,pack_id: 3,description: "气垫粉底",price: 550,image_path: "http://oqecjavzf.bkt.clouddn.com/ysl%E5%9C%A3%E7%BD%97%E5%85%B0%E6%B0%94%E5%9E%AB%E7%B2%89%E5%BA%95.jpg"},
	{title: "粉底4号",category_id: 5,pack_id: 4,description: "芒果粉底",image_path: "http://oqecjavzf.bkt.clouddn.com/%E7%B2%89%E5%BA%954%23.jpg"},
	{title: "粉底5号",category_id: 5,pack_id: 5,description: "苹果粉底",image_path: "http://oqecjavzf.bkt.clouddn.com/%E7%B2%89%E5%BA%955%23.jpg"},
	{title: "粉底6号",category_id: 5,pack_id: 6,description: "蜜桃粉底",image_path: "http://oqecjavzf.bkt.clouddn.com/%E7%B2%89%E5%BA%956%23.jpg"},
	{title: "粉底7号",category_id: 5,pack_id: 7,description: "石榴粉底",image_path: "http://oqecjavzf.bkt.clouddn.com/%E7%B2%89%E5%BA%957%23.jpeg"},
	{title: "粉底8号",category_id: 5,pack_id: 8,description: "橘子粉底",image_path: "http://oqecjavzf.bkt.clouddn.com/%E7%B2%89%E5%BA%958%23.jpg"},

]

# {title: "ysl春夏限量眼影盘斩男色",category_id: 2,pack_id: 3,description: "限量眼影盘",price: 550,image_path: "http://oqecjavzf.bkt.clouddn.com/ysl%E6%98%A5%E5%A4%8F%E9%99%90%E9%87%8F%E7%9C%BC%E5%BD%B1%E7%9B%98%E6%96%A9%E7%94%B7%E8%89%B2.jpg"},



products.each do |ref|
	Product.create!(title: ref[:title], description: ref[:description], category_id: ref[:category_id], pack_id: ref[:pack_id],
   quantity: rand(300..500), price: rand(200..600).to_i,
	 image: open(ref[:image_path]) )
	end

puts "create products"

  #
  # Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each { |seed| load seed }
