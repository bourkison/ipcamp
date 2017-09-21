$(document).ready(function() {
  setInterval(function() {
    let url = location.pathname.split('/')
    if (url[1] === "listings") {
      $.get('/comments_for/' + url[2]).done(function(data) {
        data = JSON.parse(data.comments);
        console.log(data);
        let s = "";

        for (let i = 0; i < data.length; i++) {
          s += `<li>${data[i].content} | <a href='/users/${data[i].user.id}'>${data[i].user.username}</a></li>`
        }
        $('#comments').html(s);
      })
    }
  }, 1000)
})
