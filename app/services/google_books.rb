class GoogleBooks
   def self.get_by_title(title)
       api_key = "AIzaSyCeelIchvzHQd8Yji9XCZe5NtwLAQkRTzg"
       base_url = "https://www.googleapis.com/books/v1/volumes"
       encoded_title = URI.escape(title)
       url = "#{base_url}?q=#{encoded_title}&key=#{api_key}"
       response = %x{curl "#{url}"}
       JSON.parse(response)
    #   https://www.googleapis.com/books/v1/volumes?q=flowers+inauthor:keyes&key=yourAPIKey
       
   end
   
end