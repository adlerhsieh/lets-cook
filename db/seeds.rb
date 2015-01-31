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
				:name => "洋蔥",
				:amount => "半個",
				:dish_id => dish.id
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


my_dish = Dish.create(:name => '蜜汁風琴馬鈴薯', :lg_pic_link => '/images/potato.jpg')
my_dish.ingredients.create(:name => '馬鈴薯',:amount => '４個')

my_dish.ingredients.create(:name => '培根（火腿片也可）',:amount => '數條')

my_dish.ingredients.create(:name => '筷子',:amount => '一雙')

my_dish.ingredients.create(:name => '醬油膏',:amount => '２大匙')

my_dish.ingredients.create(:name => '味醂',:amount => '１匙')

my_dish.ingredients.create(:name => '糖',:amount => '１匙')

my_dish.ingredients.create(:name => '七味唐辛子',:amount => '適量')

my_dish.ingredients.create(:name => '孜然燒烤粉',:amount => '適量')

my_dish2 = Dish.create(:name => '蕃茄煨麵', :lg_pic_link => '/images/tomato_noodle.jpg')
my_dish2.ingredients.create(:name => '麵',:amount => '2球')

my_dish2.ingredients.create(:name => '豬五花肉片',:amount => '150g')

my_dish2.ingredients.create(:name => '小蕃茄',:amount => '10顆')

my_dish2.ingredients.create(:name => '青蔥',:amount => '2支')

my_dish2.ingredients.create(:name => '鹽巴',:amount => '適量')

my_dish3 = Dish.create(:name => '焦糖布丁', :lg_pic_link => '/images/poodin.jpg')
my_dish3.ingredients.create(:name => '全蛋（大）',:amount => '2個')

my_dish3.ingredients.create(:name => '蛋黃（大）',:amount => '2個')

my_dish3.ingredients.create(:name => '鮮奶油',:amount => '120g')

my_dish3.ingredients.create(:name => '全脂鮮奶',:amount => '300g')

my_dish3.ingredients.create(:name => '砂糖',:amount => '65g')

my_dish3.ingredients.create(:name => '香草精',:amount => '數滴')

my_dish3.ingredients.create(:name => '白蘭地（可省）',:amount => '1小匙')

my_dish3.ingredients.create(:name => '砂糖',:amount => '70g')

my_dish3.ingredients.create(:name => '水',:amount => '1大匙')

my_dish3.ingredients.create(:name => '熱水',:amount => '2大匙')

my_dish4 = Dish.create(:name => '醃雞腿肉', :lg_pic_link => '/images/chicken_2.jpg')
my_dish4.ingredients.create(:name => '雞腿肉片',:amount => '三片')

my_dish4.ingredients.create(:name => '醬油',:amount => '5匙')

my_dish4.ingredients.create(:name => '味醂',:amount => '3匙')

my_dish4.ingredients.create(:name => '糖',:amount => '一匙')

my_dish4.ingredients.create(:name => '薑末以及蒜末',:amount => '適量')

my_dish5 = Dish.create(:name => '牛肉湯', :lg_pic_link => '/images/beef_soup.jpg')
my_dish5.ingredients.create(:name => '洋蔥（切塊）',:amount => '1顆')

my_dish5.ingredients.create(:name => '蒜苗（切斜段分蒜白和蒜綠）',:amount => '1支')

my_dish5.ingredients.create(:name => '牛肋條（切塊）',:amount => '5條')

my_dish5.ingredients.create(:name => '牛番茄（切塊）',:amount => '1顆')

my_dish5.ingredients.create(:name => '洋菇或其他菇類',:amount => '半碗')

my_dish5.ingredients.create(:name => '紅蘿蔔（切塊）',:amount => '1支')

my_dish5.ingredients.create(:name => '馬鈴薯（切塊）',:amount => '2顆')

my_dish5.ingredients.create(:name => '醬油',:amount => '2大匙')

my_dish5.ingredients.create(:name => '冰糖',:amount => '1大匙')

my_dish5.ingredients.create(:name => '鹽巴',:amount => '適量')

my_dish5.ingredients.create(:name => '黑胡椒粒',:amount => '適量')

my_dish5.ingredients.create(:name => '水',:amount => '適量')

my_dish6 = Dish.create(:name => '蔬菜湯', :lg_pic_link => '/images/vege.jpg')
my_dish6.ingredients.create(:name => '干貝',:amount => '10-12顆')

my_dish6.ingredients.create(:name => '蝦米',:amount => '適量')

my_dish6.ingredients.create(:name => '大白菜',:amount => '半顆')

my_dish6.ingredients.create(:name => '乾香菇',:amount => '10朵')

my_dish6.ingredients.create(:name => '紅蘿蔔',:amount => '半條')

my_dish6.ingredients.create(:name => '蒜頭',:amount => '3-4顆')

my_dish6.ingredients.create(:name => '米酒',:amount => '1/3碗')

my_dish6.ingredients.create(:name => '鹽巴',:amount => '少許')

my_dish7 = Dish.create(:name => '雞翅', :lg_pic_link => '/images/wings.jpg')
my_dish7.ingredients.create(:name => '全雞翅',:amount => '4-6支')

my_dish7.ingredients.create(:name => '蜂蜜',:amount => '2大匙')

my_dish7.ingredients.create(:name => '薑（切碎）',:amount => '15克')

my_dish7.ingredients.create(:name => '薑黃粉',:amount => '1/4小匙')

my_dish7.ingredients.create(:name => '肉桂粉',:amount => '1/4小匙')

my_dish7.ingredients.create(:name => '醬油',:amount => '1大匙')

my_dish7.ingredients.create(:name => '橄欖油',:amount => '1大匙')

my_dish7.ingredients.create(:name => '鹽',:amount => '適量')

my_dish7.ingredients.create(:name => '黑胡椒粉',:amount => '適量')

my_dish8 = Dish.create(:name => '蛋糕', :lg_pic_link => '/images/cake.jpg')
my_dish8.ingredients.create(:name => '低筋麵粉',:amount => '60g')

my_dish8.ingredients.create(:name => '雞蛋',:amount => '2顆')

my_dish8.ingredients.create(:name => '糖粉',:amount => '40~70g')

my_dish9 = Dish.create(:name => '九層塔雞腿肉', :lg_pic_link => '/images/chicken_3.jpg')
my_dish9.ingredients.create(:name => '雞腿肉',:amount => '2塊')

my_dish9.ingredients.create(:name => '九層塔',:amount => '1把')

my_dish9.ingredients.create(:name => '蕃薯粉',:amount => '200克')

my_dish9.ingredients.create(:name => '胡椒鹽',:amount => '適量')

my_dish9.ingredients.create(:name => '水或高湯',:amount => '30克')

my_dish9.ingredients.create(:name => '米酒',:amount => '30克')

my_dish9.ingredients.create(:name => '糖',:amount => '適量')

my_dish9.ingredients.create(:name => '香蒜粉',:amount => '大量')

my_dish9.ingredients.create(:name => '五香粉',:amount => '大量')

my_dish9.ingredients.create(:name => '醬油',:amount => '適量')

my_dish10 = Dish.create(:name => '花椰菜', :lg_pic_link => '/images/garlic.jpg')
my_dish10.ingredients.create(:name => '花椰菜',:amount => '1個')

my_dish10.ingredients.create(:name => '紅椒粉',:amount => '1 1/2茶匙')

my_dish10.ingredients.create(:name => '海鹽',:amount => '1茶匙')

my_dish10.ingredients.create(:name => '黑胡椒',:amount => '1/2茶匙')

my_dish10.ingredients.create(:name => '橄欖油',:amount => '2湯匙')

my_dish11 = Dish.create(:name => '蝦仁烘蛋', :lg_pic_link => '/images/egg.jpg')
my_dish11.ingredients.create(:name => '蛋',:amount => '3顆')

my_dish11.ingredients.create(:name => '蝦仁',:amount => '100g')

my_dish11.ingredients.create(:name => '蔥',:amount => '1枝')

my_dish11.ingredients.create(:name => '太白粉',:amount => '1小匙')

my_dish11.ingredients.create(:name => '鹽',:amount => '1/2鹽罐小匙')

my_dish11.ingredients.create(:name => '米酒',:amount => '少許')

my_dish12 = Dish.create(:name => '羊小排', :lg_pic_link => '/images/lamb.jpg')
my_dish12.ingredients.create(:name => '羊小排',:amount => '8隻')

my_dish12.ingredients.create(:name => '橄欖油',:amount => '4大匙')

my_dish12.ingredients.create(:name => '蒜片',:amount => '8顆')

my_dish12.ingredients.create(:name => '義大利綜合香料',:amount => '1大匙')

my_dish12.ingredients.create(:name => '迷迭香',:amount => '1茶匙')

my_dish12.ingredients.create(:name => '鹽',:amount => '1/4茶匙')

my_dish13 = Dish.create(:name => '芥末羊排', :lg_pic_link => '/images/lamb_2.jpg')
my_dish13.ingredients.create(:name => '法是芥末子醬',:amount => '適量')

my_dish13.ingredients.create(:name => '羊排(好事多羊排)',:amount => '3隻')

my_dish13.ingredients.create(:name => '蘆筍',:amount => '5支')

my_dish13.ingredients.create(:name => '橄欖油',:amount => '適量')

my_dish14 = Dish.create(:name => '清爽羊小排', :lg_pic_link => '/images/lamb_4.jpg')
my_dish14.ingredients.create(:name => '羊小排',:amount => '5小根')

my_dish14.ingredients.create(:name => '芥末子醬',:amount => '適量')

my_dish14.ingredients.create(:name => '味什麼香料(普羅旺斯風味)',:amount => '適量')

my_dish14.ingredients.create(:name => '麵包粉',:amount => '適量')

my_dish15 = Dish.create(:name => '重口味羊小排', :lg_pic_link => '/images/lamb_5.jpg')
my_dish15.ingredients.create(:name => '羊小排',:amount => '一大份')

my_dish15.ingredients.create(:name => '洋蔥',:amount => '半顆')

my_dish15.ingredients.create(:name => '大蒜',:amount => '三瓣')

my_dish15.ingredients.create(:name => '九層塔',:amount => '少許')

my_dish15.ingredients.create(:name => '醬油',:amount => '4/1cup')

my_dish15.ingredients.create(:name => '烏斯特郡醬油,Worcestershire Sauce',:amount => '2 Tbsp')

my_dish15.ingredients.create(:name => '紅酒',:amount => '2 Tbsp')

my_dish15.ingredients.create(:name => '糖',:amount => '1 tsp')

my_dish15.ingredients.create(:name => 'Cayenne 紅椒粉',:amount => '1 tsp')

my_dish15.ingredients.create(:name => 'Rosemerry 迷迭香',:amount => '2 tsp')

my_dish15.ingredients.create(:name => '茴香子 Fennel seed',:amount => '1 tsp')

my_dish15.ingredients.create(:name => 'Cumin Powder 孜然粉',:amount => '1 tsp')

my_dish15.ingredients.create(:name => '黑胡椒',:amount => '1 tsp')

my_dish16 = Dish.create(:name => '火鍋牛肉', :lg_pic_link => '/images/beef_3.jpg')
my_dish16.ingredients.create(:name => '火鍋肉片(牛)',:amount => '一盒')

my_dish16.ingredients.create(:name => '洋蔥',:amount => '半顆')

my_dish16.ingredients.create(:name => '蒜末',:amount => '適量')

my_dish16.ingredients.create(:name => '糖',:amount => '1湯匙')

my_dish16.ingredients.create(:name => '薄鹽醬油',:amount => '2湯匙')

my_dish16.ingredients.create(:name => '泡菜',:amount => '適量')

