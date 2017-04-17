// ==UserScript==
// @name	Habr Users Blocker
// @description	Hides sellers, highlights yellow press and hides comments
// @author	bopoh13
// @license	GPL version 3 or any later version; https://www.gnu.org/copyleft/gpl.html
// @homepageURL	https://github.com/bopoh13/docs/tree/master/vendor/firefox
// @downloadURL	https://github.com/bopoh13/docs/raw/master/vendor/firefox/habrusers_blocker_sm.user.js
// @supportURL	https://github.com/bopoh13/docs/issues
// @version	r100
// @icon	https://geektimes.ru/images/favicons/favicon-32x32.png
// @include	https://geektimes.ru/*
// @include	https://habrahabr.ru/*
// @exclude	https://habrahabr.ru/company/*
// ==/UserScript==
/**
 * По статье "Делаем пространство чище" https://geektimes.ru/post/272164/#comment_9074942
 */

var fablers = [
  'alizar',
  'andorro',
  'atomlib',
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
  'Alexandra_Varonis',
  'YuliaSinyanskaya',
]
var pr = [
  'hosting-cafe',
  'icanchoose',
  'JetBrains',
  'plarium',
  'superjob',
];
var sellers = [
  'arttel',
  'dadget',
  'kingston_technology',
  'madrobots',
  'medgadgets',
  'mvideo',
  'piter',
  'pocketbook',
];
var wampus = [
  'AlexPu',
  'lakegull',
];
$('.post-author__link').filter(function() {
    return this.href.match(new RegExp('/' + fablers.join('|') + '/'));
}).parents('.postinfo-panel').css("background", "#ffe").parents('.post').css("background", "#ffe");
$('.post__title_link').filter(function() {
    return this.href.match(new RegExp('/company/' + pr.join('|') + '/'));
}).parents('.post').hide();
$('.post__title_link').filter(function() {
    return this.href.match(new RegExp('/company/' + sellers.join('|') + '/'));
}).parents('.post').css("background", "#def").find('.postinfo-panel').css("background", "#def");
$('.comment-item__username').filter(function() {
    return this.href.match(new RegExp('/' + wampus.join('|') + '/'));
}).parents('.comment_body').html('<div class="author_banned">РЕДИСКА опубликовала эту надпись здесь</div>');
