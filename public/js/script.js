var _ua;

_ua = (function(u) {
  return {
    Tablet: u.indexOf('windows') !== -1 && u.indexOf('touch') !== -1 && u.indexOf('tablet pc') === -1 || u.indexOf('ipad') !== -1 || u.indexOf('android') !== -1 && u.indexOf('mobile') === -1 || u.indexOf('firefox') !== -1 && u.indexOf('tablet') !== -1 || u.indexOf('kindle') !== -1 || u.indexOf('silk') !== -1 || u.indexOf('playbook') !== -1,
    Mobile: u.indexOf('windows') !== -1 && u.indexOf('phone') !== -1 || u.indexOf('iphone') !== -1 || u.indexOf('ipod') !== -1 || u.indexOf('android') !== -1 && u.indexOf('mobile') !== -1 || u.indexOf('firefox') !== -1 && u.indexOf('mobile') !== -1 || u.indexOf('blackberry') !== -1
  };
})(window.navigator.userAgent.toLowerCase());

$(function() {

  /* Global
  -----------------------------------------------------------------
   */
  var accordion, breakPoint, header, smoothScroll, tab, tellink, windowWidth;
  breakPoint = 769;
  windowWidth = parseInt($(window).width());

  /* tellink
  -----------------------------------------------------------------
   */
  tellink = function() {
    if (_ua.Mobile || _ua.Tablet) {
      return $('[data-js-tellink]').each(function() {
        var telno;
        telno = $(this).attr('data-js-tellink');
        return $(this).wrapInner('<a href="tel:' + telno + '"></a>');
      });
    }
  };

  /* smoothScroll
  -----------------------------------------------------------------
   */
  smoothScroll = function() {
    var trriger;
    trriger = 'a[href^="#"]';
    return $(trriger).smoothScroll();
  };

  /* header
  -----------------------------------------------------------------
   */
  header = function() {
    var button, closeButton, currentClass, openClass, primary, searchArea, searchButton;
    primary = '[data-header-primary]';
    button = '[data-header-primary__button]';
    currentClass = 'is-current';
    $(primary).each(function() {
      return $(button, this).on('click', function() {
        if (!$(this).hasClass(currentClass)) {
          $(button).removeClass(currentClass).next().hide();
          return $(this).addClass(currentClass).next().show();
        }
      });
    });
    $("[data-header-primary]").hiraku({
      btn: ".header__button",
      fixedHeader: ".header",
      direction: "left",
      breakpoint: 768
    });
    searchButton = '[data-header-search-button]';
    searchArea = '[data-header-search]';
    closeButton = '[data-header-search__close]';
    openClass = 'is-open';
    $(searchButton).on('click', function() {
      if ($(searchArea).hasClass(openClass)) {
        return $(searchArea).removeClass(openClass);
      } else {
        return $(searchArea).addClass(openClass);
      }
    });
    return $(closeButton).on('click', function() {
      if ($(searchArea).hasClass(openClass)) {
        return $(searchArea).removeClass(openClass);
      } else {
        return $(searchArea).addClass(openClass);
      }
    });
  };

  /* accordion
  -----------------------------------------------------------------
   */
  accordion = function() {
    var hd, openClass, speed;
    hd = '[data-accordion]';
    openClass = 'is-open';
    speed = 100;
    return $(hd).each(function() {
      return $(this).on('click', function() {
        if (parseInt($(window).width()) < breakPoint) {
          if ($(this).hasClass(openClass)) {
            $(this).not(":animated").next().slideUp(speed);
            $(this).removeClass(openClass);
          } else {
            $(this).not(":animated").next().slideDown(speed);
            $(this).addClass(openClass);
          }
        }
      });
    });
  };

  /* tab
  -----------------------------------------------------------------
   */
  tab = function() {
    var column, hd, list, openClass;
    tab = '[data-js-tab]';
    column = '[data-js-tab-column]';
    hd = '[data-js-tab-hd]';
    list = '[data-js-tab-list]';
    openClass = 'is-open';
    return $(tab).each(function() {
      return $(column, this).each(function() {
        var $palentColumn;
        $palentColumn = $(this);
        return $(hd, this).on('click', function() {
          $(column).removeClass(openClass);
          $palentColumn.addClass(openClass);
          $(list).hide();
          return $(this).next().show();
        });
      });
    });
  };

  /* init
  -----------------------------------------------------------------
   */
  smoothScroll();
  tab();
  tellink();
  header();
  return accordion();

  /* scroll
  -----------------------------------------------------------------
   */
});
