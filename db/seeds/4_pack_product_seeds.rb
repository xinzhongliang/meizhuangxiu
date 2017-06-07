
pack_products =[
	{title: "ysl圣罗兰气垫粉底",category_id: 3,pack_id: 1,description: "气垫粉底",price: 550,image_path: "http://oqecjavzf.bkt.clouddn.com/ysl%E5%9C%A3%E7%BD%97%E5%85%B0%E6%B0%94%E5%9E%AB%E7%B2%89%E5%BA%95.jpg"},
	{title: "nars腮红",category_id: 3,pack_id: 2,description: "腮红",price: 450,image_path: "http://oqecjavzf.bkt.clouddn.com/nars%20%E8%85%AE%E7%BA%A2.jpg"},
	{title: "ysl圣罗兰遮瑕明彩笔",category_id: 1,pack_id: 3,description: "遮瑕明彩笔",price: 650,image_path: "http://oqecjavzf.bkt.clouddn.com/ysl%E5%9C%A3%E7%BD%97%E5%85%B0%E9%81%AE%E7%91%95%E6%98%8E%E5%BD%A9%E7%AC%94.jpg"},
	{title: "ysl春夏限量眼影盘斩男色",category_id: 2,pack_id: 4,description: "限量眼影盘",price: 550,image_path: "http://oqecjavzf.bkt.clouddn.com/ysl%E6%98%A5%E5%A4%8F%E9%99%90%E9%87%8F%E7%9C%BC%E5%BD%B1%E7%9B%98%E6%96%A9%E7%94%B7%E8%89%B2.jpg"},
	{title: "ysl圣罗兰唇釉10色号",category_id: 4,pack_id: 5,description: "圣罗兰唇釉",price: 350,image_path: "http://oqecjavzf.bkt.clouddn.com/ysl%E5%9C%A3%E7%BD%97%E5%85%B0%E5%94%87%E9%87%8910%E8%89%B2%E5%8F%B7.jpg"},
	{title: "Nars大地色眼影盘",category_id: 2,pack_id: 1,description: "眼影盘",price: 680,image_path: "http://oqecjavzf.bkt.clouddn.com/Nars%E5%A4%A7%E5%9C%B0%E8%89%B2%E7%9C%BC%E5%BD%B1%E7%9B%98.jpg"},
	{title: "ysl圣罗兰水感粉底液",category_id: 5,pack_id: 2,description: "粉底液",price: 565,image_path: "http://oqecjavzf.bkt.clouddn.com/ysl%E5%9C%A3%E7%BD%97%E5%85%B0%E6%B0%B4%E6%84%9F%E7%B2%89%E5%BA%95%E6%B6%B2.jpg"},
	{title: "Nars丝绒眼线胶笔",category_id: 2,pack_id: 3,description: "眼线胶笔",price: 320,image_path: "http://oqecjavzf.bkt.clouddn.com/Nars%E4%B8%9D%E7%BB%92%E7%9C%BC%E7%BA%BF%E8%83%B6%E7%AC%94.jpg"},
]

pack_products.each do |ref|
	Product.create!(title: ref[:title], description: ref[:description], category_id: ref[:category_id], pack_id: ref[:pack_id],
   quantity: rand(100..200), price: ref[:price],
	 image: open(ref[:image_path]) )
end

puts "create pack_products"
