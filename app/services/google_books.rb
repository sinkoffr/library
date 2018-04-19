class GoogleBooks
   def self.get_by_title(title)
       title = title.gsub(" ", "")
       api_key = "AIzaSyCeelIchvzHQd8Yji9XCZe5NtwLAQkRTzg"
       base_url = "https://www.googleapis.com/books/v1/volumes"
       url = "#{base_url}?q=#{title}&key=#{api_key}"
       response = %x{curl "https://www.googleapis.com/books/v1/volumes?q=#{title}&key=AIzaSyCeelIchvzHQd8Yji9XCZe5NtwLAQkRTzg"}
       JSON.parse(response)
    #   https://www.googleapis.com/books/v1/volumes?q=flowers+inauthor:keyes&key=yourAPIKey
       
   end
   
end