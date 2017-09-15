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
// @version	1.0.10
// @icon	https://geektimes.ru/images/favicons/apple-touch-icon-57x57.png
// @include	https://geektimes.ru/*
// @include	https://habrahabr.ru/*
// @exclude	https://habrahabr.ru/company/*
// @grant	none
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
  'itinvest',
  'latimeria',
  'LKulakova',
  'Mary_Golubeva',
  'PayOnline',
  'ptsecurity',
  'shulyndina',
  'SmirkinDA',
  'tm',
  'YuliaSinyanskaya',
]
// Only for companies. Science fiction is hiding separately
var pr = [
  'haysrussia',
  'hosting-cafe',
  'icanchoose',
  'JetBrains',
  'miip',
  'odnoklassniki',
  'plarium',
  'regionsoft',
  'superjob',
  'tuturu',
  'varonis',
];
var sellers = [
  '3dtool',
  'arttel',
  'coptertime',
  'dadget',
  'epson',
  'gearbest',
  'kingston_technology',
  'madrobots',
  'medgadgets',
  'mishiko',
  'mvideo',
  'piter',
  'pocketbook',
  'redmond',
  'top3dshop',
];
var wampus = [
  'AlexPu',
  'askv',
  'dipsy',
  'Gnuava',
  'Idot',
  'ilyasok',
  'Ilyasyakubov',
  'lakegull',
  'mistik_max',
  'Olga_Voronova',
  'Samoglas',
  'Sormovich',
  'VenomBlood',
];
$('.post__user-info').filter(function() {
    return this.href.match(new RegExp('/' + fablers.join('|') + '/'));
}).parents('.post').css("background", "#ffe");
$('.hub-link').filter(function() {
    return this.href.match(new RegExp('/sci-fi/')); // Научная фантастика
}).parents('.post').hide();
$('.post__title_link').filter(function() {
    return this.href.match(new RegExp('/company/' + pr.join('|') + '/'));
}).parents('.post').hide();
$('.post__title_link').filter(function() {
    return this.href.match(new RegExp('/company/' + sellers.join('|') + '/'));
}).parents('.post').css("background", "#def");
$('.user-info_inline.user-info').filter(function() {
    return this.href.match(new RegExp('/' + wampus.join('|') + '/'));
}).parents('.comment').html('<div class="comment__message comment__message_banned">РЕДИСКА опубликовала эту надпись здесь</div>');
