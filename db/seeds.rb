# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# https://icook.tw/recipes/79515
Dish.delete_all
Ingredient.delete_all

dish = Dish.create(
				:name => "日式馬鈴薯燉肉",
				:lg_pic_link => "images/potato_meat.jpg"
				)
dish.ingredients.create(
        dish_id: dish.id,
				name: "豬肉切塊",
				amount: "150元左右"
				)
dish.ingredients.create(
        dish_id: dish.id,
				:name => "洋蔥",
				:amount => "半個"
				)
dish.ingredients.create(
				dish_id: dish.id,
        :name => "馬鈴薯",
				:amount => "2個"
				)
dish.ingredients.create(
				dish_id: dish.id,
        :name => "紅蘿蔔",
				:amount => "少許"
				)
dish.ingredients.create(
				dish_id: dish.id,
        :name => "醬油",
				:amount => "約4-5匙"
				)
dish.ingredients.create(
				dish_id: dish.id,
        :name => "水、鹽",
				:amount => "少許"
				)
dish.ingredients.create(
				dish_id: dish.id,
        :name => "冰糖約3、4個",
				:amount => "少許"
				)

# https://icook.tw/recipes/99716
dish2 = Dish.create(
				:name => "巨無霸黃金蛋餃",
				:lg_pic_link => "images/gold_egg.jpg"
				)
dish2.ingredients.create(
				dish_id: dish2.id,
        :name => "豬絞肉",
				:amount => "半碗"
				)
dish2.ingredients.create(
				dish_id: dish2.id,
        :name => "蛋",
				:amount => "兩顆"
				)
dish2.ingredients.create(
				dish_id: dish2.id,
        :name => "醬油",
				:amount => "一湯匙"
				)
dish2.ingredients.create(
				dish_id: dish2.id,
        :name => "蔥",
				:amount => "少許"
				)
dish2.ingredients.create(
				dish_id: dish2.id,
        :name => "薑",
				:amount => "少許"
				)
dish2.ingredients.create(
				dish_id: dish2.id,
        :name => "糖",
				:amount => "少許"
				)
dish2.ingredients.create(
				dish_id: dish2.id,
        :name => "水",
				:amount => "一碗"
				)


# https://icook.tw/recipes/99401
dish3 = Dish.create(
				:name => "台式控肉",
				:lg_pic_link => "/images/taiwanese_meat.jpg"
				)
dish3.ingredients.create(
				dish_id: dish3.id,
        :name => "五花肉",
				:amount => "900g"
				)
dish3.ingredients.create(
				dish_id: dish3.id,
        :name => "蔥",
				:amount => "3根"
				)
dish3.ingredients.create(
				dish_id: dish3.id,
        :name => "薑",
				:amount => "10g"
				)
dish3.ingredients.create(
				dish_id: dish3.id,
        :name => "蒜頭",
				:amount => "20g"
				)
dish3.ingredients.create(
				dish_id: dish3.id,
        :name => "紅辣椒",
				:amount => "少許"
				)
dish3.ingredients.create(
				dish_id: dish3.id,
        :name => "滷包",
				:amount => "1包"
				)
dish3.ingredients.create(
				dish_id: dish3.id,
        :name => "醬油",
				:amount => "120cc"
				)
dish3.ingredients.create(
				dish_id: dish3.id,
        :name => "醬油膏",
				:amount => "50g"
				)
dish3.ingredients.create(
				dish_id: dish3.id,
        :name => "冰糖",
				:amount => "30g"
				)

# https://icook.tw/recipes/99375
dish4 = Dish.create(
				:name => "冷壓初榨橄欖油香煎嫩雞腿",
				:lg_pic_link => "/images/chicken.jpg"
				)
dish4.ingredients.create(
        dish_id: dish4.id,
				:name => "雞腿",
				:amount => "3支"
				)
dish4.ingredients.create(
				dish_id: dish4.id,
        :name => "冷壓初榨橄欖油",
				:amount => "適量"
				)
dish4.ingredients.create(
				dish_id: dish4.id,
        :name => "粗粒黑胡椒",
				:amount => "適量"
				)
dish4.ingredients.create(
				dish_id: dish4.id,
        :name => "岩鹽",
				:amount => "少許"
				)
dish4.ingredients.create(
				dish_id: dish4.id,
        :name => "義大利香料",
				:amount => "適量"
				)
dish4.ingredients.create(
				dish_id: dish4.id,
        :name => "蒜末",
				:amount => "少許"
				)


# https://icook.tw/recipes/99374
dish5 = Dish.create(
				:name => "孜然香豬肉",
				:lg_pic_link => "/images/pork.jpg"
				)
dish5.ingredients.create(
				dish_id: dish5.id,
        :name => "梅花豬肉片",
				:amount => "300克"
				)
dish5.ingredients.create(
				dish_id: dish5.id,
        :name => "青椒",
				:amount => "150g"
				)
dish5.ingredients.create(
				dish_id: dish5.id,
        :name => "蒜",
				:amount => "4瓣"
				)
dish5.ingredients.create(
				dish_id: dish5.id,
        :name => "乾辣椒",
				:amount => "2支"
				)
dish5.ingredients.create(
				dish_id: dish5.id,
        :name => "八角",
				:amount => "2個"
				)
dish5.ingredients.create(
				dish_id: dish5.id,
        :name => "孜然顆粒",
				:amount => "1大匙"
				)
dish5.ingredients.create(
				dish_id: dish5.id,
        :name => "醬油",
				:amount => "半大匙"
				)
dish5.ingredients.create(
				dish_id: dish5.id,
        :name => "油",
				:amount => "2大匙"
				)
