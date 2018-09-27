var _ua;

inView('.inview').on('enter', function(el) {
  el.classList.add('is-inview');
});

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
  var accordion, accordionProductList, bodyFix, bodyFixReset, breakPoint, dropdownHeaderSearch, dropdownHeaderHover,
        header, priceComma,
        productDetailModal,
        productDetailSlider, productFilterModal, scrollPosi, smoothScroll, tab, tellink, windowWidth;
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
    var button, closeButton, currentClass, gmenu, gmenuli, openClass, primary, searchArea, searchButton, dropdownButton;
    primary = '[data-header-primary]';
    button = '[data-header-primary__button]';
    gmenuli = '.header__nav-primary__list__menu li';
    currentClass = 'is-current';
    $(primary).each(function() {
      return $(button, this).on('click', function() {
        if (!$(this).hasClass(currentClass)) {
          $(button).removeClass(currentClass).next().hide();
          return $(this).addClass(currentClass).next().show();
        }
      });
    });
    $(gmenuli).on({
        'mouseenter': function () {
            $(".slide-line").css({
                "width": $(this).width(),
                "left": $(this).position().left
            });
        },
        'mouseleave': function () {
            $(".slide-line").width(0);
        }
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
    $(closeButton).on('click', function() {
      if ($(searchArea).hasClass(openClass)) {
        return $(searchArea).removeClass(openClass);
      } else {
        return $(searchArea).addClass(openClass);
      }
    });
    dropdownButton = '[data-header-dropdown]';
    $(dropdownButton).mouseover(function (e) {
        $(this).find('.dropdown-wrapper').show();
    }).mouseout(function (e) {
        $(this).find('.dropdown-wrapper').hide();
    });
    $("[js-data-header-modal]").on('click', function() {
      var el, target;
      el = $(this);
      target = el.attr('js-data-header-modal');
      $("#" + target).addClass("is-open");
    });
    $(document).on('click', '.header__modal__close', function() {
      $(this).parent().removeClass('is-open');
    });
    if ($('.header-modal--sp').length === 0) {
      $("body").append('<div class="header__modal--sp"></div>');
    }
    $("[js-data-header-modal-sp]").on('click', function() {
      var el, elClone, target;
      el = $(this);
      target = el.attr('js-data-header-modal-sp');
      elClone = $("#" + target).clone();
      $(".header__modal--sp").html(elClone);
      $(".header__modal--sp #" + target).removeAttr("id").addClass('is-open');
    });
  };

  /* accordion
  -----------------------------------------------------------------
   */
  accordion = function() {
    var hd, openClass, speed;
    hd = '[data-accordion]';
    openClass = 'is-open';
    speed = 300;
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

  /* accordionProductList
  -----------------------------------------------------------------
   */
  accordionProductList = function() {
    var hd, openClass, speed;
    hd = '[data-accordionProductList]';
    openClass = 'is-open';
    speed = 300;
    return $(hd).each(function() {
      if (parseInt($(window).width()) > breakPoint) {
        if (!$(this).hasClass(openClass)) {
          $(this).not(":animated").next().hide(0);
        }
      }
      return $(this).on('click', function() {
        if (parseInt($(window).width()) > breakPoint) {
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

    /* dropdownHeaderHover
    -----------------------------------------------------------------
     */
    dropdownHeaderHover = function () {
        var searchInput, dropdownArea;
        searchInput = '.header__search__input';
        dropdownArea = '.header__search__dropdown';
        return $(searchInput).bind("focus", function () {
            $(dropdownArea).show();
        }).blur(function () {
            setTimeout(function(){
                $(dropdownArea).hide();
            },200);
        });
    };

    /* dropdownHeaderSearch
-----------------------------------------------------------------
 */
    dropdownHeaderSearch = function () {
        /*        var searchInput, dropdownArea;
                searchInput = '.header__search__input';
                dropdownArea = '.header__search__dropdown';
                return $(searchInput).focus(function () {
                    $(dropdownArea).show();
                }).blur(function () {
                    $(dropdownArea).hover(function () {
                        $(dropdownArea).show();
                    }, function () {
                        $(dropdownArea).hide();
                    });
                });*/
    };

    /* tab
  -----------------------------------------------------------------
   */
  tab = function() {
    var content, currentClass, list;
    tab = '[data-tab]';
    list = '[data-tab__list]';
    content = '[data-tab__content]';
    currentClass = 'is-current';
    return $(tab).each(function() {
      var el;
      el = $(this);
      $(content, el).children().hide();
      $(content, el).children().eq(0).show();
      $(list, el).find('a').removeAttr('href');
      return $(list, el).children().on('click', function() {
        var index;
        index = $(this).index();
        $(list, el).children().children().removeClass(currentClass);
        $(this).children().addClass(currentClass);
        $(content, el).children().hide();
        return $(content, el).children().eq(index).show();
      });
    });
  };

  /* topSlider
  -----------------------------------------------------------------
   */
  topSlider = function() {
    var slider;
    slider = '[data-topslider]';
    if (slider.length) {
      array = $(slider).data('topslider');
      $(slider).bgSwitcher({
          images: array
      });
    }
  };

  /* productDetailSlider
  -----------------------------------------------------------------
   */
  productDetailSlider = function() {
    var slider;
    slider = '[data-productDetailSlider]';
    if (slider.length) {
      return $(slider).slick({
        slidesToScroll: 1,
        slidesToShow: 1,
        infinite: true,
        arrows: true,
        speed: 300,
        fade: false,
        lazyLoad: 'ondemand',
        prevArrow: '<span class="product-detail__figure__slider__arrow product-detail__figure__slider__arrow--prev"><i class="c-icon"></i></span>',
        nextArrow: '<span class="product-detail__figure__slider__arrow product-detail__figure__slider__arrow--next"><i class="c-icon"></i></span>',
        dots: true,
        dotsClass: 'product-detail__figure__slider__thumb',
        customPaging: function(slider, i) {
          var thumbSrc;
          thumbSrc = $(slider.$slides[i]).data('thumb');
          return '<img src="' + thumbSrc + '">';
        },
        responsive: [
          {
            breakpoint: 768,
            settings: {
              slidesToShow: 1,
              slidesToScroll: 1,
              infinite: true,
              dots: true
            }
          }
        ]
      });
    }
  };

  /* productFilterModal
  -----------------------------------------------------------------
   */
	productFilterModal = function () {
	    var clear, clearData, close, closeData, content, contentData, modalAddclass, modalTarget, open, openAddclass,
	        openData, price, priceData, priceLabel, priceLabelData, priceLabelDefault, priceMax, priceMaxData,
	        priceMaxDefault, priceMin, priceMinData, priceMinDefault, radio, radioData, submit, submitData,
	        targetButton, targetButtonData, targetClear, targetClearData, targetClose, targetCloseData, targetContent,
	        targetContentData, valueKey, valueKeyData, valueKeyDefault, valueLabel, valueLabelData, valueLabelDefault;
	    targetButtonData = 'productfilter__button';
    targetButton = '[data-' + targetButtonData + ']';
    targetContentData = 'productfilter__content';
    targetContent = '[data-' + targetContentData + ']';
    targetCloseData = 'productfilter__close';
    targetClose = '[data-' + targetCloseData + ']';
    targetClearData = 'productfilter__clear';
    targetClear = '[data-' + targetClearData + ']';
    modalTarget = '[data-productfilterModal]';
    openData = 'productfiltermodal__open';
    open = '[data-' + openData + ']';
    closeData = 'productfiltermodal__close';
    close = '[data-' + closeData + ']';
    contentData = 'productfiltermodal__content';
    content = '[data-' + contentData + ']';
    clearData = 'productfiltermodal__clear';
    clear = '[data-' + clearData + ']';
    submitData = 'productfiltermodal__submit';
    submit = '[data-' + submitData + ']';
    radioData = 'productfiltermodal__radio';
    radio = '[data-' + radioData + ']';
    valueLabelData = 'productfiltermodal__value__label';
    valueLabel = '[data-' + valueLabelData + ']';
    valueKeyData = 'productfiltermodal__value__key';
    valueKey = '[data-' + valueKeyData + ']';
    valueLabelDefault = "";
    valueKeyDefault = "";

    /* price */
    priceData = 'productlistprice';
    price = '[data-' + priceData + ']';
    priceMinData = 'productlistprice__min';
    priceMin = '[data-' + priceMinData + ']';
    priceMaxData = 'productlistprice__max';
    priceMax = '[data-' + priceMaxData + ']';
    priceLabelData = 'productfilterPrice__label';
    priceLabel = '[data-' + priceLabelData + ']';

    /* class */
    openAddclass = 'is-open';
    modalAddclass = 'product-list__nav__modal';
    if ($(targetContent).length) {
      $(targetContent).prepend('<span class="product-list__column__nav__close is-sp" data-' + targetCloseData + '><i class="c-icon"></i></span>');
    }
    $(targetButton).click(function() {
      $(targetContent).addClass(openAddclass);
      bodyFix();
    });
    $(targetClose).click(function() {
      $(targetContent).removeClass(openAddclass);
      bodyFixReset();
    });
    $(modalTarget).each(function() {
      var el, modal;
      el = $(this);
      modal = $(content, el);
      modal.prepend('<span class="product-list__column__nav__close is-sp" data-' + closeData + '><i class="c-icon"></i></span>');
      if ($(radio, el).length) {
        if ($(valueLabel, el).length) {
          valueLabelDefault = $(valueLabel, el).text();
        }
        if ($(valueKey, el).length) {
          valueKeyDefault = $(valueKey, el).val();
        }
      }
    });
    if ($(price).length) {
      priceLabelDefault = $(priceLabel).text();
      priceMinDefault = $(priceMin).attr('value');
      priceMaxDefault = $(priceMax).attr('value');
    }
    $(targetClear).click(function() {
      return $(modalTarget).each(function() {
        var el;
        el = $(this);
        if ($(radio, el).length) {
          $(radio, el).attr('checked', false);
          $(submit, el).addClass('c-button--disabled');
          $(valueLabel, el).text(valueLabelDefault);
          $(valueKey, el).val(valueKeyDefault);
        }
        if ($(price, el).length) {
          $(priceMin).val(priceMinDefault);
          $(priceMax).val(priceMaxDefault);
          productListPriceRange.setValue(0, priceMinDefault);
          productListPriceRange.setValue(1, priceMaxDefault);
          return $(priceLabel, el).text(priceLabelDefault);
        }
      });
    });
    $(modalTarget).each(function() {
      var el, modal;
      el = $(this);
      if ($(open, el).length) {
        modal = $(content, el);
        modal.addClass(modalAddclass);
        $(open, el).click(function() {
          $(content, el).addClass(openAddclass);
          return bodyFix();
        });
        $(close, el).click(function() {
          $(content, el).removeClass(openAddclass);
          return bodyFixReset();
        });
      }
      if ($(radio, el).length) {
        if ($(valueLabel, el).length) {
          valueLabelDefault = $(valueLabel, el).text();
        }
        if ($(valueKey, el).length) {
          valueKeyDefault = $(valueKey, el).val();
        }
        $(radio, el).click(function() {
          return $(submit, el).removeClass('c-button--disabled');
        });
        $(submit, el).click(function() {
          var key, label;
          label = $(radio + ':checked', el).data(radioData)['label'];
          key = $(radio + ':checked', el).data(radioData)['key'];
          $(valueLabel, el).text(label);
          $(valueKey, el).val(key);
          return $(content, el).removeClass(openAddclass);
        });
        $(clear, el).click(function() {
          $(radio, el).attr('checked', false);
          $(submit, el).addClass('c-button--disabled');
          $(valueLabel, el).text(valueLabelDefault);
          return $(valueKey, el).val(valueKeyDefault);
        });
      }
      if ($(price, el).length) {
        priceMinDefault = $(priceMin).attr('value');
        priceMaxDefault = $(priceMax).attr('value');
        $(submit, el).click(function() {
          var priceMaxNow, priceMinNow;
          priceMinNow = priceComma($(priceMin).attr('value'));
          priceMaxNow = priceComma($(priceMax).attr('value'));
          $(priceLabel, el).text(priceMinNow + ' ～ ' + priceMaxNow);
          $(content, el).removeClass(openAddclass);
        });
        return $(clear, el).click(function() {
          $(priceMin).val(priceMinDefault);
          $(priceMax).val(priceMaxDefault);
          productListPriceRange.setValue(0, priceMinDefault);
          productListPriceRange.setValue(1, priceMaxDefault);
        });
      }
    });
  };
  scrollPosi = void 0;
  bodyFix = function() {
    scrollPosi = $(window).scrollTop();
    $('body').css({
      'position': 'fixed',
      'width': '100%',
      'z-index': '1',
      'top': -scrollPosi,
      'overflow': "hidden"
    });
  };
  bodyFixReset = function() {
    $('body').css({
      'position': 'relative',
      'width': 'auto',
      'top': 'auto',
      'overflow': "auto"
    });
    $('html, body').scrollTop(scrollPosi);
  };
  priceComma = function(value) {
    return '￥' + value.toString().replace(/(\d)(?=(\d{3})+$)/g, '$1,');
  };

  /* productDetailModal
  -----------------------------------------------------------------
   */
    productDetailModal = function () {
        var modalAddclass, openAddclass, targetButton, targetButtonData, targetClose, targetCloseData, targetContent,
            targetContentData;
    targetButtonData = 'productdetail__button';
    targetButton = '[data-' + targetButtonData + ']';
    targetContentData = 'productdetail__content';
    targetContent = '[data-' + targetContentData + ']';
    targetCloseData = 'productdetail__close';
    targetClose = '[data-' + targetCloseData + ']';

    /* class */
    openAddclass = 'is-open';
    modalAddclass = 'product-list__nav__modal';
    if ($(targetContent).length) {
      $(targetContent).prepend('<span class="product-list__column__nav__close u-sp" data-' + targetCloseData + '><i class="c-icon"></i></span>');
      $(targetContent).append('<div class="l-button"><span class="c-button c-button--clear u-sp" data-' + targetCloseData + '>閉じる</span></div>');
    }
    $(targetButton).click(function() {
      $(targetContent).addClass(openAddclass);
      bodyFix();
    });
    return $(targetClose).click(function() {
      $(targetContent).removeClass(openAddclass);
      bodyFixReset();
    });
  };

  /* checkOpen
  -----------------------------------------------------------------
   */
  checkOpen = function() {
    var classOpen, slideSpeend, target, targetData, targetList, targetListContent, targetListRadio;
    target = 'checkopen';
    targetData = '[data-' + target + ']';
    targetList = 'checkopen__list';
    targetListRadio = 'checkopen__list__radio';
    targetListContent = 'checkopen__list__content';
    classOpen = "is-open";
    slideSpeend = 100;
    $(targetData).each(function() {
      var el, elContent, elList, key;
      el = $(this);
      key = $(this).data(target);
      elList = $('[data-' + targetList + ' = ' + key + ']', el);
      elContent = $('[data-' + targetListContent + ' = ' + key + ']', el);
      elList.each(function() {
        var content, list, radio;
        list = $(this);
        radio = $('[data-' + targetListRadio + ' = ' + key + ']', list);
        content = $('[data-' + targetListContent + ' = ' + key + ']', list);
        if (content.length) {
          content = content;
        } else {
          content = false;
        }
        if (radio.children('input').prop('checked') === true) {
          if (content) {
            list.addClass(classOpen);
          }
        } else {
          if (content) {
            content.hide();
          }
        }
        radio.on('click', function() {
          if ($(this).children('input').prop('checked') === true) {
            if (content) {
              content.slideDown(slideSpeend);
              list.addClass(classOpen);
            } else {
              elContent.slideUp(slideSpeend);
              elList.removeClass(classOpen);
            }
          } else {
            if (content) {
              content.slideUp(slideSpeend);
              list.removeClass(classOpen);
            }
          }
        });
      });
    });
  };

  /* sticky
  -----------------------------------------------------------------
   */
  sticky = function() {
    if ($('[data-js-sticky]').length) {
      windowWidth = parseInt($(window).width());
      $('[data-js-sticky]').stickySidebar({
        topSpacing: $(".header").outerHeight(),
        bottomSpacing: $(".footer").outerHeight()
      });
    }
  };

  /* init
  -----------------------------------------------------------------
   */
    smoothScroll();
    tab();
    tellink();
    header();
    accordion();
    dropdownHeaderHover();
    dropdownHeaderSearch();
    accordionProductList();
    topSlider()
    productFilterModal();
    productDetailModal();
    productDetailSlider();
    checkOpen();
    sticky();
    $('.modal').modaal();
    $('.modal-sm').modaal({width: 600});
    $('.modal-fullscreen').modaal({fullscreen: true});
});
