// ==UserScript==
// @name	Habr Users Blocker
// @namespace	https://wiki.greasespot.net/Metadata_Block
// @description	Hides sellers, highlights yellow press and hides comments
// @author	bopoh13
// @license	GPL-3.0+; http://gnu.org/licenses/gpl-3.0.txt
// @downloadURL	https://github.com/bopoh13/docs/raw/master/vendor/firefox/habrusers_blocker_gm.user.js
// @homepageURL	https://github.com/bopoh13/docs/tree/master/vendor/firefox
// @supportURL	https://github.com/bopoh13/docs/issues
// @version	1.2.12
// @icon	https://habr.com/images/favicon-32x32.png
// @require	https://dr.habracdn.net/habrcom/javascripts/1547577650/libs/jquery-1.8.3.min.js
// @include	https://habr.com/*
// @exclude	https://habr.com/*/company/*
// @exclude	https://habr.com/*/search/*
// @exclude	https://habr.com/*/users/*
// @exclude	https://habr.com/*/hub/ios_dev/*
// @exclude	https://habr.com/*/hub/sci-fi/*
// @grant	none
// @run-at	document-end
// ==/UserScript==
/**
 * По статье "Делаем пространство чище" //habr.com/post/391233/#comment_17336589
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
  'PatientZero',
  'ragequit',
  'SLY_G',
  'vconst',
  
  'alconost',
  'aleksandrit',
  'Alexandra_Varonis',
  'esetnod32',
  'estet',
  'habrahabr',
  'holymay',
  'LKulakova',
  'Mary_Golubeva',
  'PayOnline',
  'semen_grinshtein',
  'Shapelez',
  'shulyndina',
  'SmirkinDA',
  'YuliaSinyanskaya'
];
var slob = [
  'display_adv',
  'hr_management',
  'ios_dev',
  'sci-fi'
];
// Only for companies
var pr = [
  'alconost',
  'blog_potok',
  'haysrussia',
  'hosting-cafe',
  'hygger',
  'icanchoose',
  'infobip',
  'JetBrains',
  'lanit',
  'miip',
  'mobio',
  'netologyru',
  'odnoklassniki',
  'plarium',
  'ptsecurity',
  'redmond',
  'regionsoft',
  'skillbox',
  'superjob',
  'tuturu',
  'varonis',
  'yamoney'
];
/*
  '380365'
  'latimeria'
  'maghamed'
  'nmivan'(2)
  'rvnikita'(2)
  'shuvaevgl'
  'Skybladev2'
  'x-foby'
*/
// Only for companies
var sellers = [
  '3dtool',
  'aquaphor',
  'arttel',
  'advocam',
  'coptertime',
  'cvetmir3d',
  'dadget',
  'dell',
  'englishdom',
  'epson',
  'gadgetfreaks',
  'gearbest',
  'iqb_technologies',
  'itinvest',
  'kingston_technology',
  'maccentre',
  'madrobots',
  'makeshoppro',
  'medgadgets',
  'mishiko',
  'mvideo',
  'piter',
  'pocketbook',
  'pult',
  'top3dshop',
  'tp_link_russia'
];
var wampus = [
  '1MK-Ultra',
  'AlexPu',
  'askv',
  'Cast_iron',
  'deNULL',
  'devop-su',
  'dipsy',
  'DrZlodberg',
  'Endeavour',
  'Gnuava',
  'ilyasok',
  'Ilyasyakubov',
  'izhanov',
  'lair',
  'lakegull',
  'mistik_max',
  'Neikist',
  'odissey_nemo',
  'Olga_Voronova',
  'samhuawey',
  'Sormovich',
  'Sword_Dancer',
  'VenomBlood',
  'Welran',
  'Y1975',
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
