// ===============================================================================
// LOAD DATA
// We are linking our routes to a series of "data" sources.
// These data sources hold arrays of information on table-data, waitinglist, etc.
// ===============================================================================
var fs = require("fs");
var path = require("path");
// ===============================================================================
// ROUTING
// ===============================================================================
// var fname = path.join(__dirname, "../data/friends.js");

module.exports = function (app) {
    // API GET Requests
    // Below code handles when users "visit" a page.
    // In each of the below cases when a user visits a link
    // (ex: localhost:PORT/api/admin... they are shown a JSON of the data in the table)
    // ---------------------------------------------------------------------------
    app.post("/api/listing", function(request,response){
        console.log(request.data);
    });
};