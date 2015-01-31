class DishesController < ApplicationController
  require 'open-uri'
  require 'nokogiri'
  # require 'watir-webdriver'

  def create
    if dish_params[:link].scan("http").count > 0
      link = dish_params[:link]
    else
      link = dish_params[:link][26..-1]
    end

    b = Watir::Browser.new
    b.goto(URI::encode(link))
    puts b.div(:class, 'object').a.when_present.text

    # content = Nokogiri::HTML(open(URI::encode(link)))
    # item_array = content.css("li .object a")
    # amount_array = content.css("li .unit")
    # object_array = []

    # item_array.each do |item|
    #   index = item_array.index(item)
    #   object_array.push({
    #                     "name" => item_array[index].content,
    #                     "amount" => amount_array[index].content
    #                     })
    # end

    # @dish = Dish.new(dish_params.except(:link)).save!

    # @dish.ingredients.create(:name => "", :amount => "")

    # render :json => object_array
  end

  def destroy
    @dish = Dish.find(params[:id])
    @dish.destroy
  end

  def search
    # content = Nokogiri::HTML(open(URI::encode("https://icook.tw/recipes/fulltext_search?query=#{params[:file]}")))
    # title_array = content.css("div.media-body.card-info a")
    # image_array = content.css(".media.list-card img.img-responsive")

    # content = Nokogiri::HTML(open(URI::encode("http://www.dodocook.com/recipes/category?st=1&sk=#{params[:fild]}")))

    content = Nokogiri::HTML(open(URI::encode("http://recipe.ytower.com.tw/Channel/MultiSearch/#{params[:file]}")))

    title_array = content.css(".rcp_img img")
    image_array = content.css(".rcp_img img")
    link_array = content.css(".rcp_img a")

    object_array = []

    title_array.each do |title|
      index = title_array.index(title)
      object_array.push({"name" => title_array[index].attr("alt"),
                 "lg_pic_link" => image_array[index].attr("src"),
                 "link"  => "http://recipe.ytower.com.tw" + link_array[index].attr('href')
                })
    end
    render :json => object_array
  end

  private

  def dish_params
    params.require(:dish).permit(:user_id, :event_id, :name, :lg_pic_link, :link)
  end
end
