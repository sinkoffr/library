A checklist of features either built or in planning stages for this library app.

Started building a library for books with plans to expand to include catalogs of
such items as CDs, DVDs, artwork, etc.

[X] Create Homepage 
        add login/signup buttons using devise gem - done
        
[X] Must be signed in
        to view catalogs - done
        to add items - done

[X] Add picture loading for cover art using carrierwave

My Catalogs page (currently set to books#index)
        dropdown of available catalogs 
                - choosing one will link to that catalog (will be added at a later date)
        add a "add catalog" button to personal page
    
[X] Add pagination

Books I own page
        Header - done
        links to sort by: (title, author, genre, date added, etc.)
        letters that link to sort method (for title, author, genre)
    
Add a new item page (/.../new)
        each catalog will have a seperate page for new items
                -[X] books
                -[] CDs
                -[] DVDs
                -[]etc...
        move form into modal - done for books
    
make genre a dropdown at all applicable locations

alphabetize by:
        Author last name (user option)
        Title (default) - done

[X] add google books API

add Twitter typeahead
        currently only works with no spaces between words
        