$(document).ready(function(){
    var booksDataSource = new Bloodhound({
      datumTokenizer: Bloodhound.tokenizers.obj.whitespace('value'),
      queryTokenizer: Bloodhound.tokenizers.whitespace,
      // prefetch: '../data/films/post_1960.json',
      remote: {
        url: '../books/google_api_search/%QUERY.json',
        wildcard: '%QUERY'
      }
    });
    
    $('#book_title').typeahead(null, {
      name: 'best-titles',
      minLength: 3,
      display: 'title',
      source: booksDataSource
    });
    
    $('#book_title').on('typeahead:selected', function(evt, item) {
        console.log(item);
        var authors = item.authors.join()
        var description = item.description 
        $('#book_author').val(authors)
        $('#book_description').val(description)
        // do what you want with the item here
    })
})
