module BooksHelper

  def image_from_amazon(amazon_id)
    image_tag 'http://ecx.images-amazon.com/images/I/#{amazon_id}_BO1,204,203,200_.jpg'
  end
end
