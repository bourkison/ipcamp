'use strict';

$(document).ready(function () {
  setInterval(function () {
    var url = location.pathname.split('/');
    if (url[1] === "listings" && !isNaN(url[2])) {
      $.get('/comments_for/' + url[2]).done(function (data) {
        // COMMENTS
        let comments = JSON.parse(data.comments);
        console.log(comments);
        var s = "";

        for (var i = 0; i < comments.length; i++) {
          s += '<li>' + comments[i].content + ' | <a href=\'/users/' + comments[i].user.id + '\'>' + comments[i].user.username + '</a></li>';
        }
        if (s !== "") {
          $('#comments').html(s);
        }

        // BIDS
        let bids = JSON.parse(data.bids);
        console.log("BIDS:", bids);
        if (bids.length > 0) {
          let highestBid = bids[bids.length - 1];

          $('.bid-indiv').html('<a href=\'/users/' + highestBid.user.id + '\'>' + highestBid.user.username + '</a><div>' + highestBid.amount + '</div>');
        }

      });
    }
  }, 1000);
});
