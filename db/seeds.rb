# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# https://icook.tw/recipes/79515
dish = Dish.create(
				:name => "日式馬鈴薯燉肉",
				:lg_pic_link => ""
				)
dish.ingredients.create(
				:name => "豬肉切塊",
				:amount => "150元左右"
				)
dish.ingredients.create(
				:name => "洋蔥",
				:amount => "半個"
				)
dish.ingredients.create(
				:name => "馬鈴薯",
				:amount => "2個"
				)
dish.ingredients.create(
				:name => "紅蘿蔔",
				:amount => "少許"
				)
dish.ingredients.create(
				:name => "醬油",
				:amount => "約4-5匙"
				)
dish.ingredients.create(
				:name => "水、鹽",
				:amount => "少許"
				)
dish.ingredients.create(
				:name => "冰糖約3、4個",
				:amount => "少許"
				)

# https://icook.tw/recipes/99716
dish2 = Dish.create(
				:name => "巨無霸黃金蛋餃",
				:lg_pic_link => ""
				)
dish2.ingredients.create(
				:name => "豬絞肉",
				:amount => "半碗"
				)
dish2.ingredients.create(
				:name => "蛋",
				:amount => "兩顆"
				)
dish2.ingredients.create(
				:name => "醬油",
				:amount => "一湯匙"
				)
dish2.ingredients.create(
				:name => "蔥",
				:amount => "少許"
				)
dish2.ingredients.create(
				:name => "薑",
				:amount => "少許"
				)
dish2.ingredients.create(
				:name => "糖",
				:amount => "少許"
				)
dish2.ingredients.create(
				:name => "水",
				:amount => "一碗"
				)


# https://icook.tw/recipes/99401
dish3 = Dish.create(
				:name => "台式控肉",
				:lg_pic_link => ""
				)
dish3.ingredients.create(
				:name => "五花肉",
				:amount => "900g"
				)
dish3.ingredients.create(
				:name => "蔥",
				:amount => "3根"
				)
dish3.ingredients.create(
				:name => "薑",
				:amount => "10g"
				)
dish3.ingredients.create(
				:name => "蒜頭",
				:amount => "20g"
				)
dish3.ingredients.create(
				:name => "紅辣椒",
				:amount => "少許"
				)
dish3.ingredients.create(
				:name => "滷包",
				:amount => "1包"
				)
dish3.ingredients.create(
				:name => "醬油",
				:amount => "120cc"
				)
dish3.ingredients.create(
				:name => "醬油膏",
				:amount => "50g"
				)
dish3.ingredients.create(
				:name => "冰糖",
				:amount => "30g"
				)

# https://icook.tw/recipes/99375
dish4 = Dish.create(
				:name => "冷壓初榨橄欖油香煎嫩雞腿",
				:lg_pic_link => ""
				)
dish4.ingredients.create(
				:name => "雞腿",
				:amount => "3支"
				)
dish4.ingredients.create(
				:name => "冷壓初榨橄欖油",
				:amount => "適量"
				)
dish4.ingredients.create(
				:name => "粗粒黑胡椒",
				:amount => "適量"
				)
dish4.ingredients.create(
				:name => "岩鹽",
				:amount => "少許"
				)
dish4.ingredients.create(
				:name => "義大利香料",
				:amount => "適量"
				)
dish4.ingredients.create(
				:name => "蒜末",
				:amount => "少許"
				)


# https://icook.tw/recipes/99374
dish5 = Dish.create(
				:name => "孜然香豬肉",
				:lg_pic_link => ""
				)
dish5.ingredients.create(
				:name => "梅花豬肉片",
				:amount => "300克"
				)
dish5.ingredients.create(
				:name => "青椒",
				:amount => "150g"
				)
dish5.ingredients.create(
				:name => "蒜",
				:amount => "4瓣"
				)
dish5.ingredients.create(
				:name => "乾辣椒",
				:amount => "2支"
				)
dish5.ingredients.create(
				:name => "八角",
				:amount => "2個"
				)
dish5.ingredients.create(
				:name => "孜然顆粒",
				:amount => "1大匙"
				)
dish5.ingredients.create(
				:name => "醬油",
				:amount => "半大匙"
				)
dish5.ingredients.create(
				:name => "油",
				:amount => "2大匙"
				)
