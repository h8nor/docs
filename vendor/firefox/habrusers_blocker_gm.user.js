// ==UserScript==
// @name	Habr Users Blocker
// @namespace	https://wiki.greasespot.net/Metadata_Block
// @description	Hides sellers, highlights yellow press and hides comments
// @author	bopoh13
// @license	GPL version 3 or any later version; https://www.gnu.org/copyleft/gpl.html
// @downloadURL	https://github.com/bopoh13/docs/raw/master/vendor/firefox/habrusers_blocker_gm.user.js
// @homepageURL	https://github.com/bopoh13/docs/tree/master/vendor/firefox
// @supportURL	https://github.com/bopoh13/docs/issues
// @version	1.0.5
// @icon	https://geektimes.ru/images/favicons/favicon-32x32.png
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
  'hosting-cafe',
  'icanchoose',
  'JetBrains',
  'miip',
  'plarium',
  'regionsoft',
  'superjob',
  'tuturu',
];
var sellers = [
  '3dtool',
  'arttel',
  'dadget',
  'gearbest',
  'kingston_technology',
  'madrobots',
  'medgadgets',
  'mvideo',
  'piter',
  'pocketbook',
  'redmond',
  'top3dshop',
];
// Bug! Does not hide comments //habrahabr.ru/post/314980/
var wampus = [
  'AlexPu',
  'Idot',
  'lakegull',
  'VenomBlood',
];
$('.post-author__link').filter(function() {
    return this.href.match(new RegExp('/' + fablers.join('|') + '/'));
}).parents('.postinfo-panel').css("background", "#ffe").parents('.post').css("background", "#ffe");
$('.hub ').filter(function() {
    return this.href.match(new RegExp('/sci-fi/')); // Научная фантастика
}).parents('.post').hide();
$('.post__title_link').filter(function() {
    return this.href.match(new RegExp('/company/' + pr.join('|') + '/'));
}).parents('.post').hide();
$('.post__title_link').filter(function() {
    return this.href.match(new RegExp('/company/' + sellers.join('|') + '/'));
}).parents('.post').css("background", "#def").find('.postinfo-panel').css("background", "#def");
$('.comment-item__username').filter(function() {
    return this.href.match(new RegExp('/' + wampus.join('|') + '/'));
}).parents('.comment_body').html('<div class="author_banned">РЕДИСКА опубликовала эту надпись здесь</div>');
