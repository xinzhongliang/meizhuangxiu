# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# u = User.new
# u.email = "admin@test.com"           # 可以改成自己的 email
#
# u.password = "123456"                # 最少要六码
#
# u.password_confirmation = "123456"   # 最少要六码
#
# u.is_admin = true
# u.save



# products =[{title:"Logitech mouse MT630",
# 	category_id: 3,
# 	pack_id: 3,
# 	description: "The Logitech Ultrathin Touch Mouse T630
# 	is built to complement today's sleek, sophisticated Ultrabook computers. It features a brushed metallic body
# 	with a silky-smooth touch surface, and the thin, lightweight design is incredibly portable so you can take it
# 	anywhere. ", image_path: "http://oqecjavzf.bkt.clouddn.com/Logitech%20Ultrathin%20Touch%20Buetooth%20Mouse.jpg"},
#
# 	{title:"Bose QuietComfort 35",
# 		category_id: 1,
# 		pack_id: 1,
# 		description: "World-class noise cancellation makes quiet sound quieter and music sound betterVolume-optimized
# 		EQ for balanced audio performance at any volume Wireless convenience, with easy Bluetooth and NFC pairing aided
# 		by voice prompts 20-hour battery life per charge; up to 40 hours in wired mode Noise-rejecting dual-microphone
# 		system for clear calls even in windy environments",
# 		image_path: "http://oqecjavzf.bkt.clouddn.com/QC35.jpg"},
#
# 	{title: "Apple Watch",
# 		category_id: 1,
# 		pack_id: 1,
# 		description: "Gold aluminum case S2 dual-core processor
# 		Built-in GPS and GLONASS
# 		Water resistant 50 meters2
# 		Ion-X glass
# 		2x brighter OLED Retina display with Force Touch (1000 nits)
# 		Ceramic back
# 		Digital Crown
# 		Heart rate sensor, accelerometer, and gyroscope",
# 		image_path: "http://oqecjavzf.bkt.clouddn.com/watch.jpg"},
#
# 	{title: "GoPro Hero5",
# 		category_id: 2,
# 		pack_id: 2,
# 		description: "Stunning 4K video and 12MP photos in Single, Burst and Time Lapse modes.
# 		Durable by design, HERO5 Black is waterproof to 33ft (10m) without a housing
# 		Additional GoPro HERO5 Black Features + Benefits below on item page.
# 		Preview and playback your shots, change settings and trim your footage, all on your GoPro.",
# 		image_path: "http://oqecjavzf.bkt.clouddn.com/gopro_hero5.jpg"},
#
#   {title: "Vuzix M100 Smart Glasses",
# 		category_id: 2,
# 		pack_id: 2,
# 		description: "Vuzix M100 provides the features and capabilities of a modern smartphone,
# 		without a cellular radio, in a hands-free wearable device.
# 		Bluetooth 4.0 connectivity makes it easy to pair with another Android device or connect wirelessly with Wi-Fi to the Internet.
# 		The M100's integrated camera captures 5 megapixel still images and 1080p high-definition video. Video and image capture
# 		can be stored directly on the M100's memory (expandable up to 32 GB) or streamed live.",
# 		image_path: "http://oqecjavzf.bkt.clouddn.com/vuzix_m100.jpg"}]
#
products =[
	{title:"彩妆1号",category_id: 1,pack_id: 1,description: "樱桃彩妆", image_path: "https://ws2.sinaimg.cn/large/006tNc79gy1fgbxa1hyr2j307s08w3yh.jpg"},
	{title: "彩妆2号",category_id: 1,pack_id: 2,description: "草莓彩妆",image_path: "https://ws3.sinaimg.cn/large/006tNc79gy1fgbxcwdm72j30hs0got97.jpg"},
	{title: "彩妆3号",category_id: 1,pack_id: 3,description: "杨桃彩妆",image_path: "https://ws1.sinaimg.cn/large/006tNc79gy1fgbxg394wcj30hs0goq39.jpg"},
	{title: "彩妆4号",category_id: 1,pack_id: 4,description: "芒果彩妆",image_path: "https://ws1.sinaimg.cn/large/006tNc79gy1fgbxhgb424j3064064q2u.jpg"},
	{title: "彩妆5号",category_id: 1,pack_id: 5,description: "苹果彩妆",image_path: "https://ws1.sinaimg.cn/large/006tNc79gy1fgby68f4v0j3064064mx3.jpg"},
	{title: "彩妆6号",category_id: 1,pack_id: 1,description: "蜜桃彩妆",image_path: "https://ws2.sinaimg.cn/large/006tNc79gy1fgby70rkqaj3064064mx7.jpg"},
	{title: "彩妆7号",category_id: 1,pack_id: 2,description: "石榴彩妆",image_path: "https://ws4.sinaimg.cn/large/006tNc79gy1fgby78r6ijj3064064aa5.jpg"},
	{title: "彩妆8号",category_id: 1,pack_id: 3,description: "橘子彩妆",image_path: "https://ws1.sinaimg.cn/large/006tNc79gy1fgby7hjj5oj3064064mxs.jpg"},
	{title: "眼妆1号",category_id: 2,pack_id: 4,description: "樱桃眼妆",image_path: "https://ws3.sinaimg.cn/large/006tNc79gy1fgby7ukpsdj30xc15oq6n.jpg"},
	{title: "眼妆2号",category_id: 2,pack_id: 5,description: "草莓眼妆",image_path: "https://ws1.sinaimg.cn/large/006tNc79gy1fgby86htd3j30xc15oagv.jpg"},
	{title: "眼妆3号",category_id: 2,pack_id: 1,description: "杨桃眼妆",image_path: "https://ws4.sinaimg.cn/large/006tNc79gy1fgby8ititjj30xc15o10p.jpg"},
	{title: "眼妆4号",category_id: 2,pack_id: 2,description: "芒果眼妆",image_path: "https://ws4.sinaimg.cn/large/006tNc79gy1fgby8r96i5j30co0fuaaw.jpg"},
	{title: "眼妆5号",category_id: 2,pack_id: 3,description: "苹果眼妆",image_path: "https://ws3.sinaimg.cn/large/006tNc79gy1fgby908rwej30xc15on2e.jpg"},
	{title: "眼妆6号",category_id: 2,pack_id: 4,description: "蜜桃眼妆",image_path: "https://ws3.sinaimg.cn/large/006tNc79gy1fgby9fcisvj30xc15odpn.jpg"},
	{title: "眼妆7号",category_id: 2,pack_id: 5,description: "石榴眼妆",image_path: "https://ws2.sinaimg.cn/large/006tNc79gy1fgby9uy1n3j30xc15o0xf.jpg"},
	{title: "眼妆8号",category_id: 2,pack_id: 1,description: "橘子眼妆",image_path: "https://ws3.sinaimg.cn/large/006tNc79gy1fgbya438vhj30co0fut9n.jpg"},
	{title: "粉底1号",category_id: 3,pack_id: 4,description: "樱桃粉底",image_path: "https://ws3.sinaimg.cn/large/006tNc79gy1fgbyafvd8bj30co0fut93.jpg"},
	{title: "粉底2号",category_id: 3,pack_id: 5,description: "草莓粉底",image_path: "https://ws4.sinaimg.cn/large/006tNc79gy1fgbyapqie4j30b40dwdfv.jpg"},
	{title: "粉底3号",category_id: 3,pack_id: 1,description: "杨桃粉底",image_path: "http://oqecjavzf.bkt.clouddn.com/%E7%B2%89%E5%BA%953%23.jpg"},
	{title: "粉底4号",category_id: 3,pack_id: 2,description: "芒果粉底",image_path: "http://oqecjavzf.bkt.clouddn.com/%E7%B2%89%E5%BA%954%23.jpg"},
	{title: "粉底5号",category_id: 3,pack_id: 3,description: "苹果粉底",image_path: "http://oqecjavzf.bkt.clouddn.com/%E7%B2%89%E5%BA%955%23.jpg"},
	{title: "粉底6号",category_id: 3,pack_id: 4,description: "蜜桃粉底",image_path: "http://oqecjavzf.bkt.clouddn.com/%E7%B2%89%E5%BA%956%23.jpg"},
	{title: "粉底7号",category_id: 3,pack_id: 5,description: "石榴粉底",image_path: "http://oqecjavzf.bkt.clouddn.com/%E7%B2%89%E5%BA%957%23.jpeg"},
	{title: "粉底8号",category_id: 3,pack_id: 1,description: "橘子粉底",image_path: "http://oqecjavzf.bkt.clouddn.com/%E7%B2%89%E5%BA%958%23.jpg"},
	{title: "底妆1号",category_id: 4,pack_id: 2,description: "樱桃底妆",image_path: "http://oqecjavzf.bkt.clouddn.com/%E5%BA%95%E5%A6%861%23.jpg"},
	{title: "底妆2号",category_id: 4,pack_id: 3,description: "草莓底妆",image_path: "http://oqecjavzf.bkt.clouddn.com/%E5%BA%95%E5%A6%862%23.jpg"},
	{title: "底妆3号",category_id: 4,pack_id: 4,description: "杨桃底妆",image_path: "http://oqecjavzf.bkt.clouddn.com/%E5%BA%95%E5%A6%863%23.jpg"},
	{title: "底妆4号",category_id: 4,pack_id: 5,description: "芒果底妆",image_path: "http://oqecjavzf.bkt.clouddn.com/%E5%BA%95%E5%A6%864%23.jpg"},
	{title: "底妆5号",category_id: 4,pack_id: 1,description: "苹果底妆",image_path: "http://oqecjavzf.bkt.clouddn.com/%E5%BA%95%E5%A6%865%23.jpg"},
	{title: "底妆6号",category_id: 4,pack_id: 2,description: "蜜桃底妆",image_path: "http://oqecjavzf.bkt.clouddn.com/%E5%BA%95%E5%A6%866%23.jpg"},
	{title: "底妆7号",category_id: 4,pack_id: 3,description: "石榴底妆",image_path: "http://oqecjavzf.bkt.clouddn.com/%E5%BA%95%E5%A6%867%23.jpg"},
	{title: "底妆8号",category_id: 4,pack_id: 4,description: "橘子底妆",image_path: "http://oqecjavzf.bkt.clouddn.com/%E5%BA%95%E5%A6%868%23.jpg"},
	{title: "唇妆1号",category_id: 5,pack_id: 5,description: "樱桃唇妆",image_path: "http://oqecjavzf.bkt.clouddn.com/%E6%B0%B4%E6%99%B61%23.jpg"},
	{title: "唇妆2号",category_id: 5,pack_id: 1,description: "草莓唇妆",image_path: "http://oqecjavzf.bkt.clouddn.com/%E6%B0%B4%E6%99%B62%23.jpeg"},
	{title: "唇妆3号",category_id: 5,pack_id: 2,description: "杨桃唇妆",image_path: "http://oqecjavzf.bkt.clouddn.com/%E6%B0%B4%E6%99%B63%23.jpeg"},
	{title: "唇妆4号",category_id: 5,pack_id: 3,description: "芒果唇妆",image_path: "http://oqecjavzf.bkt.clouddn.com/%E6%B0%B4%E6%99%B64%23.jpeg"},
	{title: "唇妆5号",category_id: 5,pack_id: 4,description: "苹果唇妆",image_path: "http://oqecjavzf.bkt.clouddn.com/%E6%B0%B4%E6%99%B65%23.jpeg"},
	{title: "唇妆6号",category_id: 5,pack_id: 5,description: "蜜桃唇妆",image_path: "http://oqecjavzf.bkt.clouddn.com/%E6%B0%B4%E6%99%B66%23.jpeg"},
	{title: "唇妆7号",category_id: 5,pack_id: 1,description: "石榴唇妆",image_path: "http://oqecjavzf.bkt.clouddn.com/%E6%B0%B4%E6%99%B67%23.jpeg"},
	{title: "唇妆8号",category_id: 5,pack_id: 2,description: "橘子唇妆",image_path: "http://oqecjavzf.bkt.clouddn.com/%E6%B0%B4%E6%99%B68%23.jpeg"},
]
#
# pack_products =[
# 	{title: "ysl圣罗兰气垫粉底",category_id: 3,pack_id: 1,description: "气垫粉底",price: 550,image_path: "http://oqecjavzf.bkt.clouddn.com/ysl%E5%9C%A3%E7%BD%97%E5%85%B0%E6%B0%94%E5%9E%AB%E7%B2%89%E5%BA%95.jpg"},
# 	{title: "nars腮红",category_id: 3,pack_id: 2,description: "腮红",price: 450,image_path: "http://oqecjavzf.bkt.clouddn.com/nars%20%E8%85%AE%E7%BA%A2.jpg"},
# 	{title: "ysl圣罗兰遮瑕明彩笔",category_id: 1,pack_id: 3,description: "遮瑕明彩笔",price: 650,image_path: "http://oqecjavzf.bkt.clouddn.com/ysl%E5%9C%A3%E7%BD%97%E5%85%B0%E9%81%AE%E7%91%95%E6%98%8E%E5%BD%A9%E7%AC%94.jpg"},
# 	{title: "ysl春夏限量眼影盘斩男色",category_id: 2,pack_id: 4,description: "限量眼影盘",price: 550,image_path: "http://oqecjavzf.bkt.clouddn.com/ysl%E6%98%A5%E5%A4%8F%E9%99%90%E9%87%8F%E7%9C%BC%E5%BD%B1%E7%9B%98%E6%96%A9%E7%94%B7%E8%89%B2.jpg"},
# 	{title: "ysl圣罗兰唇釉10色号",category_id: 4,pack_id: 5,description: "圣罗兰唇釉",price: 350,image_path: "http://oqecjavzf.bkt.clouddn.com/ysl%E5%9C%A3%E7%BD%97%E5%85%B0%E5%94%87%E9%87%8910%E8%89%B2%E5%8F%B7.jpg"},
# 	{title: "Nars大地色眼影盘",category_id: 2,pack_id: 1,description: "眼影盘",price: 680,image_path: "http://oqecjavzf.bkt.clouddn.com/Nars%E5%A4%A7%E5%9C%B0%E8%89%B2%E7%9C%BC%E5%BD%B1%E7%9B%98.jpg"},
# 	{title: "ysl圣罗兰水感粉底液",category_id: 5,pack_id: 2,description: "粉底液",price: 565,image_path: "http://oqecjavzf.bkt.clouddn.com/ysl%E5%9C%A3%E7%BD%97%E5%85%B0%E6%B0%B4%E6%84%9F%E7%B2%89%E5%BA%95%E6%B6%B2.jpg"},
# 	{title: "Nars丝绒眼线胶笔",category_id: 2,pack_id: 3,description: "眼线胶笔",price: 320,image_path: "http://oqecjavzf.bkt.clouddn.com/Nars%E4%B8%9D%E7%BB%92%E7%9C%BC%E7%BA%BF%E8%83%B6%E7%AC%94.jpg"},
# ]
#
#
#
# u = User.create([ email: 'admin@test.com' ,  password: '123456' ,password_confirmation:'123456',is_admin:true])
# puts "created an admin user"
#
# categories = [ {name: "彩妆"}, {name: "眼妆"}, {name: "底妆"}, {name: "唇妆"} , {name: "粉底"}]
#
# categories.each do |c|
# Category.create!( name: c[:name])
# end
# puts "create categories"
#
#
# packs = [ {name: "苹果"}, {name: "草莓"}, {name: "桃子"}, {name: "芒果"},  {name: "樱桃"}]
#
# packs.each do |p|
# 	Pack.create!( name: p[:name])
# end
# puts "create packs"
#
# pack_products.each do |ref|
# 	Product.create!(title: ref[:title], description: ref[:description], category_id: ref[:category_id], pack_id: ref[:pack_id],
#    quantity: rand(100..200), price: ref[:price],
# 	 image: open(ref[:image_path]) )
# end
#
# puts "create pack_products"
#
products.each do |ref|
	Product.create!(title: ref[:title], description: ref[:description], category_id: ref[:category_id], pack_id: ref[:pack_id],
   quantity: rand(300..500), price: rand(200..600).to_i,
	 image: open(ref[:image_path]) )
	end

puts "create products"

  #
  # Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each { |seed| load seed }

	#
	#
  # pack_products =[
  # 	{title: "ysl圣罗兰气垫粉底",category_id: 3,pack_id: 1,description: "气垫粉底",price: 550,image_path: "http://oqecjavzf.bkt.clouddn.com/ysl%E5%9C%A3%E7%BD%97%E5%85%B0%E6%B0%94%E5%9E%AB%E7%B2%89%E5%BA%95.jpg"},
  # 	{title: "nars腮红",category_id: 3,pack_id: 2,description: "腮红",price: 450,image_path: "http://oqecjavzf.bkt.clouddn.com/nars%20%E8%85%AE%E7%BA%A2.jpg"},
  # 	# {title: "ysl圣罗兰遮瑕明彩笔",category_id: 1,pack_id: 3,description: "遮瑕明彩笔",price: 650,image_path: "http://oqecjavzf.bkt.clouddn.com/ysl%E5%9C%A3%E7%BD%97%E5%85%B0%E9%81%AE%E7%91%95%E6%98%8E%E5%BD%A9%E7%AC%94.jpg"},
  # 	{title: "ysl春夏限量眼影盘斩男色",category_id: 2,pack_id: 4,description: "限量眼影盘",price: 550,image_path: "http://oqecjavzf.bkt.clouddn.com/ysl%E6%98%A5%E5%A4%8F%E9%99%90%E9%87%8F%E7%9C%BC%E5%BD%B1%E7%9B%98%E6%96%A9%E7%94%B7%E8%89%B2.jpg"},
  # 	# {title: "ysl圣罗兰唇釉10色号",category_id: 4,pack_id: 5,description: "圣罗兰唇釉",price: 350,image_path: "http://oqecjavzf.bkt.clouddn.com/ysl%E5%9C%A3%E7%BD%97%E5%85%B0%E5%94%87%E9%87%8910%E8%89%B2%E5%8F%B7.jpg"},
  # 	{title: "Nars大地色眼影盘",category_id: 2,pack_id: 1,description: "眼影盘",price: 680,image_path: "http://oqecjavzf.bkt.clouddn.com/Nars%E5%A4%A7%E5%9C%B0%E8%89%B2%E7%9C%BC%E5%BD%B1%E7%9B%98.jpg"},
  # 	{title: "ysl圣罗兰水感粉底液",category_id: 5,pack_id: 2,description: "粉底液",price: 565,image_path: "http://oqecjavzf.bkt.clouddn.com/ysl%E5%9C%A3%E7%BD%97%E5%85%B0%E6%B0%B4%E6%84%9F%E7%B2%89%E5%BA%95%E6%B6%B2.jpg"},
  # 	{title: "Nars丝绒眼线胶笔",category_id: 2,pack_id: 3,description: "眼线胶笔",price: 320,image_path: "http://oqecjavzf.bkt.clouddn.com/Nars%E4%B8%9D%E7%BB%92%E7%9C%BC%E7%BA%BF%E8%83%B6%E7%AC%94.jpg"},
  # ]
	#
  # pack_products.each do |ref|
  # 	Product.create!(title: ref[:title], description: ref[:description], category_id: ref[:category_id], pack_id: ref[:pack_id],
  #    quantity: rand(100..200), price: ref[:price],
  # 	 image: open(ref[:image_path]) )
  # end
	#
  # puts "create pack_products"
