$(document).on('click', '#search-btn', function() {
        $.ajax({    //create an ajax request to load_page.php
        type: "GET",
        url: "search?q="+document.getElementById('search-tbx').value,             
        dataType: "html",   //expect html to be returned                
        success: function(response){                    
            $("#search-result").html(response); 
            //alert(response);
        }
    });
});