// ==UserScript==
// @name		Habr Users Blocker
// @namespace	https://wiki.greasespot.net/Metadata_Block
// @description	Hides sellers, highlights yellow press and hides comments
// @author		h8nor
// @license		GPL-3.0+; http://gnu.org/licenses/gpl-3.0.txt
// @downloadURL	https://github.com/h8nor/docs/raw/master/vendor/firefox/habrusers_blocker_gm.user.js
// @homepageURL	https://github.com/h8nor/docs/tree/master/vendor/firefox
// @supportURL	https://github.com/h8nor/docs/issues
// @version		2.1.1
// @icon		https://habr.com/images/favicon-32x32.png
// @include		https://habr.com/*
// @exclude		https://habr.com/company/*
// @exclude		https://habr.com/*/search/*
// @exclude		https://habr.com/*/users/*
// @exclude		https://habr.com/*/hub/ios_dev/*
// @exclude		https://habr.com/*/hub/sci-fi/*
// @grant		none
// @run-at		document-start
// ==/UserScript==
/**
 * По статье "Делаем пространство чище" //habr.com/post/391233/#comment_17336589
 * Часть кода ниже скопирована с //greasyfork.org/ru/scripts/368828
 */

const fablers = [
	'alizar',
	'andorro',
	'atomlib',
	'Boomburum',
	'ilya42',
	'ivansychev',
	'germn',
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
/*
  'ruvds'
*/
const slob = [
	'display_adv',
	'hr_management',
	'ios_dev',
	'sci-fi'
];
// Only for companies
const pr = [
	'alconost',
	'audiomania',
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
	'oleg-bunin',
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
  'nmivan'(3)
  'RockMachine'
  'rvnikita'(2)
  'shuvaevgl'
  'Skybladev2'
  'x-foby'
*/
// Only for companies
const sellers = [
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
const wampus = [
	'1MK-Ultra',
	'AlexPu',
	'aliev',
	'Am0ralist',
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

function ready(fn) {
	const { readyState } = document;
	if (readyState === 'loading') {
		document.addEventListener('DOMContentLoaded', () => {
			fn();
		});
	} else {
		fn();
	}
}

ready(() => {
	if (document.getElementById('habrafixmarker')) return;

	fablers.forEach(function(r) {
		$('a.post__user-info').filter('[href$="/users/' + r + '/"]').parents('article.post').css("background", "#ffe");
	});
	slob.forEach(function(r) {
		$('a.hub-link').filter('[href$="/hub/' + r + '/"]').parents('article.post_preview.post').hide();
	});
	pr.forEach(function(r) {
		$('a.post__title_link').filter('[href*="/company/' + r + '/"]').parents('article.post_preview.post').hide();
	});
	sellers.forEach(function(r) {
		$('a.post__title_link').filter('[href*="/company/' + r + '/"]').parents('article.post').css("background", "#def");
	});
	wampus.forEach(function(r) {
		let v = $('a.user-info.user-info_inline').filter('[href$="/users/' + r + '/"]').parents('.comment')
		v.parent('li.js-comment').html('<div class="comment__message comment__message_banned">РЕДИСКА пустила корни в этой ветке</div>');
	});
	// https://habr.com/post/456338/ - 4. Слияние объектов
	//в блоке <div class="jGrowl-notification"></div>
	//<div class="jGrowl-notification highlight ui-corner-all notice" style="display: block;"><div class="jGrowl-close">×</div><div class="jGrowl-header"></div><div class="jGrowl-message">РЕДИСКИ в комментариях</div></div>
	//обытие на закрытие не работает (?атрибут data-action="?remove")
	//$('.is_blocked.for_users_only_msg').html(function() {
	//	return $(this).text().replace(new RegExp('[^\\s\\w,А-яЁё]'), `$& Впрочем, можно <a href="${location.origin}/info/help/registration/#invite">откупиться</a>.`);
	//});
	//комментарий с закладкой
	//$('a.icon_comment-bookmark.icon_comment-bookmark_add').parents('.comment').css("background", "#e7f3ff"); //"#e7f3ff"-голубой "#f5fbe5"-салатовый
	var v = $('h2.promo-block__header');
	v.parents('div.promo-block').parents('li').remove();
	v.parents('div.default-block_content').remove();
	var v = $('a.default-block__header-link').filter('[href="https://tmtm.ru/megapost"]');
	v.parents('div.default-block').parents('li').remove();
	v.parents('div.sidebar_right').remove();
	console.log('=== loaded ===');

	setTimeout(() => {
		const marker = document.createElement('meta');
		marker.id = 'habrafixmarker';
		document.head.appendChild(marker);
	}, 300);
});


//wait for jQuery to be loaded
function waitForJquery() {
	if (typeof unsafeWindow.jQuery == 'undefined') {
		window.setTimeout(waitForJquery, 100);
	} else {
		//$ = unsafeWindow.jQuery.noConflict(true);
		$ = unsafeWindow.jQuery;
	}
}
waitForJquery();
