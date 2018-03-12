module MealsHelper
  def image_for(meal)
    if meal.image.exists?
      image_tag(meal.image.url)
    else
      image_tag('placeholder.png') # image_tag looks for placeholder.png in the app/assets/images directory
    end
  end
end
