module BooksHelper

  def image_from_amazon(amazon_id)
    image_tag 'http://imags.amazon.com/images/P/#{amazon_id}.01.ZTZZZZZZ.jpg'
  end
  
end
