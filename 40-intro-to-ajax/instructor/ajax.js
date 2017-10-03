document.addEventListener( 'DOMContentLoaded', function() {
    console.log( 'INSIDE `ajax.js`' );

    // DECLARE VARIABLES
    var button = document.querySelector( '#get_monsters' );
    var postMonster = document.querySelector( '#post_monster' );

    // ADD EVENT LISTENERS
    postMonster.addEventListener( 'click', function() {
        var request = $.ajax( {
            url: 'https://monsters-api.herokuapp.com/monsters',
            method: 'POST',
            data: {
                monster: {
                    name: 'Roy Batty',
                    home: 'Off-World',
                    creepiness: 100,
                }
            }
        } ).done( function( data ) {

            console.log( 'SUCCESSFULLY CREATED MONSTER' );
            console.log( data );

        } ).fail( function( jqXHR, textStatus, errorThrown ) {

            console.log( 'FAILED TO CREATE MONSTER' );
            console.log( textStatus, errorThrown );

        } );
    } );

    button.addEventListener( 'click', function() {
        console.log( 'BEFORE AJAX' );

        // MAKE AJAX REQUEST HERE
        var request = $.ajax( {
            url: 'https://monsters-api.herokuapp.com/monsters',
            method: 'GET',
            dataType: 'html',
        } );

        console.log( 'LOGGING OUT `request`' );
        console.log( request );

        request.done( function( data ) {

            console.log( 'REQUEST SUCCEEDED --> ADDING `data` TO PAGE.' );

            var dataWrapper = document.createElement( 'div' );
            dataWrapper.innerHTML = data;
            document.body.appendChild( dataWrapper );

        } ).fail( function( jqXHR, textStatus, errorThrown ) {

            console.log( 'REQUEST FAILED --> ADDING ERROR MESSAGE TO PAGE.' );

            var errorMsg = document.createElement( 'p' );
            errorMsg.innerHTML = 'Whoops, something went wrong.';
            document.body.appendChild( errorMsg );

        } );

        console.log( 'AFTER AJAX' );
    } );
});
