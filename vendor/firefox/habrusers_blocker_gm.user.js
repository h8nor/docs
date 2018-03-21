// ==UserScript==
// @name	Habr Users Blocker
// @namespace	https://wiki.greasespot.net/Metadata_Block
// @description	Hides sellers, highlights yellow press and hides comments
// @author	bopoh13
// @license	GPL version 3 or any later version
// @resource	license https://gnu.org/licenses/gpl-3.0.txt
// @downloadURL	https://github.com/bopoh13/docs/raw/master/vendor/firefox/habrusers_blocker_gm.user.js
// @homepageURL	https://github.com/bopoh13/docs/tree/master/vendor/firefox
// @supportURL	https://github.com/bopoh13/docs/issues
// @version	1.2
// @icon	https://geektimes.ru/images/favicons/apple-touch-icon-57x57.png
// @include	https://geektimes.ru/*
// @include	https://habrahabr.ru/*
// @exclude	https://*habrahabr.ru/company/*
// @exclude	https://*geektimes.ru/users/*
// @exclude	https://*habrahabr.ru/users/*
// @require	https://dr.habracdn.net/gt/javascripts/1521637170/libs/jquery-1.8.3.min.js
// @grant	none
// @run-at	document-end
// ==/UserScript==
/**
 * По статье "Делаем пространство чище" //geektimes.ru/post/272164/#comment_9074942
 */

var fablers = [
  'alizar',
  'andorro',
  'atomlib',
  'Boomburum',
  'ilya42',
  'ivansychev',
  'jeston',
  'krasandm',
  'lozga',
  'marks',
  'ragequit',
  'semen_grinshtein',
  'Shapelez',
  'SLY_G',
  'vconst',
  
  'alconost',
  'Alexandra_Varonis',
  'dronk',
  'esetnod32',
  'estet',
  'holymay',
  'latimeria',
  'LKulakova',
  'Mary_Golubeva',
  'PayOnline',
  'ptsecurity',
  'shulyndina',
  'SmirkinDA',
  'tm',
  'YuliaSinyanskaya',
];
var slob = [
  'display_adv',
  'sci-fi'
];
// Only for companies
var pr = [
  'alconost',
  'blog_potok',
  'haysrussia',
  'hosting-cafe',
  'icanchoose',
  'infobip',
  'JetBrains',
  'miip',
  'odnoklassniki',
  'plarium',
  'redmond',
  'regionsoft',
  'superjob',
  'tuturu',
  'varonis'
];
/*
  '380365',
  'maghamed',
*/
// Only for companies
var sellers = [
  '3dtool',
  'arttel',
  'coptertime',
  'cvetmir3d',
  'dadget',
  'epson',
  'gadgetfreaks',
  'gearbest',
  'itinvest',
  'kingston_technology',
  'madrobots',
  'medgadgets',
  'mishiko',
  'mvideo',
  'piter',
  'pocketbook',
  'top3dshop'
];
var wampus = [
  '1MK-Ultra',
  'AlexPu',
  'askv',
  'deNULL',
  'dipsy',
  'Gnuava',
  'Idot',
  'ilyasok',
  'Ilyasyakubov',
  'izhanov',
  'lakegull',
  'mistik_max',
  'Olga_Voronova',
  'Sormovich',
  'VenomBlood',
  'yarric'
];
$('.post__user-info').filter(function() {
    return this.href.match(new RegExp('/users/(' + fablers.join('|') + ')/$'));
}).parents('.post').css("background", "#ffe");
$('.hub-link').filter(function() {
    return this.href.match(new RegExp('/hub/(' + slob.join('|') + ')/$'));
}).parents('.post_preview.post').hide();
$('.post__title_link').filter(function() {
    return this.href.match(new RegExp('/company/(' + pr.join('|') + ')/\\w+/\\d+/$'));
}).parents('.post_preview.post').hide();
$('.post__title_link').filter(function() {
    return this.href.match(new RegExp('/company/(' + sellers.join('|') + ')/\\w+/\\d+/$'));
}).parents('.post').css("background", "#def");
$('.user-info_inline.user-info').filter(function() {
    return this.href.match(new RegExp('/users/(' + wampus.join('|') + ')/$'));
}).parents('.comment').html('<div class="comment__message comment__message_banned">РЕДИСКА опубликовала эту надпись здесь</div>');
$('.is_blocked.for_users_only_msg').html(function() {
    return $(this).text().replace(new RegExp('[^\\s\\w,А-яЁё]'), `$& Впрочем, можно <a href="https://${location.hostname}/info/help/registration/#invite">откупиться</a>.`);
});
