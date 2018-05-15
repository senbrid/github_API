function page_url(num) {
  var loc = document.location
  var q = loc.search;
  if (q) {
    q = q.substr(1); //Skip the leading '?'
    var params = {};
    var pairs = q.split('&');
    pairs.forEach(function(e) {
      var pair = e.split('=');
      params[pair[0]] = pair[1];
    });
    params['page'] = num;
  }
  else {
    params = { page: num };
  }
  q = [];
  for (var k in params) {
    q.push(k + '=' + params[k]);
  }
  var url = loc.pathname + '?' + q.join('&');
  return url;
}

function deparams(url) {
  var idx = url.indexOf('?');
  if (idx > 0) {
    var params = {};
    var q = url.substr(idx + 1);
    var pairs = q.split('&');
    for (var i = 0; i < pairs.length; i++) {
      var arr = pairs[i].split('=');
      params[decodeURIComponent(arr[0])] = decodeURIComponent(arr[1]);
    }
  }
  else {
    var params = null;
  }
  return params;
}

function redirectPost(url) {
  var form = '';
  //Since some browsers may trash the query string in form action, we need
  //to add the query params if any in some other way.
  data = deparams(url);
  if (data) {
    $.each(data, function(key, value) {
      form += '<input type="hidden" name="' + key + '" value="' + value + '">';
    });
  }
  $('<form action="' + url + '" method="POST">' + form + '</form>').appendTo('body').submit();
}

function restyleNavbar() {
  if ($(window).innerWidth() <= 1024) {
    $('#header > div').removeClass('container').addClass('container-fluid');
  }
  else {
    $('#header > div').removeClass('container-fluid').addClass('container');
  }
}

function setActiveMenuItem() {
  var curpath = document.location.pathname;
  var $obj = null;
  var score = -1;
  $('#navbar .nav > li > a').each(function() {
    var $this = $(this);
    var path = $(this).attr('href');
    if (path == curpath) {
      score = 10000;
      $obj = $this;
    }
    else if (path.length > score && curpath.indexOf(path) == 0) {
      score = path.length;
      $obj = $this;
    }
  });
  if ($obj) {
    $obj.closest('li').addClass('active');
  }
}

$(function() {
  setActiveMenuItem();

  $('a[data-toggle="popover"]').popover();

  $('a[data-method="post"]').click(function() {
    var url = $(this).prop('href');
    redirectPost(url);
    $(this).attr('disabled', true);
    return false;
  });

  $(window).resize(function() { restyleNavbar(); });
  restyleNavbar();
});

