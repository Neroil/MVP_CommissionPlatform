/*
	Spectral by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
*/

(function($) {

	var	$window = $(window),
		$body = $('body'),
		$wrapper = $('#page-wrapper'),
		$banner = $('#banner'),
		$header = $('#header');

	// Breakpoints.
		breakpoints({
			xlarge:   [ '1281px',  '1680px' ],
			large:    [ '981px',   '1280px' ],
			medium:   [ '737px',   '980px'  ],
			small:    [ '481px',   '736px'  ],
			xsmall:   [ null,      '480px'  ]
		});

	// Play initial animations on page load.
		$window.on('load', function() {
			window.setTimeout(function() {
				$body.removeClass('is-preload');
			}, 100);
		});

	// Mobile?
		if (browser.mobile)
			$body.addClass('is-mobile');
		else {

			breakpoints.on('>medium', function() {
				$body.removeClass('is-mobile');
			});

			breakpoints.on('<=medium', function() {
				$body.addClass('is-mobile');
			});

		}

	// Scrolly.
		$('.scrolly')
			.scrolly({
				speed: 1500,
				offset: $header.outerHeight()
			});

	// Menu.
		$('#menu')
			.append('<a href="#menu" class="close"></a>')
			.appendTo($body)
			.panel({
				delay: 500,
				hideOnClick: true,
				hideOnSwipe: true,
				resetScroll: true,
				resetForms: true,
				side: 'right',
				target: $body,
				visibleClass: 'is-menu-visible'
			});

	$(document).ready(function() {
		// Initialize the feature toggle buttons
		$('#artist-features').hide();
		$('#client-features').show();

		// Feature toggle functionality
		$('#client-toggle').on('click', function() {
			if ($(this).hasClass('active')) return;
			$(this).addClass('active');
			$('#artist-toggle').removeClass('active');

			// Fade out artist features
			$('#artist-features').fadeOut(300, function() {
				// Then fade in client features with a scale animation
				$('#client-features')
					.css({
						display: 'flex',
						opacity: 0,
						transform: 'scale(0.9)'
					})
					.animate({
						opacity: 1
					}, 300)
					.css({
						transform: 'scale(1)',
						transition: 'transform 0.3s ease-out'
					});
			});
		});

		$('#artist-toggle').on('click', function() {
			if ($(this).hasClass('active')) return;
			$(this).addClass('active');
			$('#client-toggle').removeClass('active');

			// Fade out client features
			$('#client-features').fadeOut(300, function() {
				// Then fade in artist features with a scale animation
				$('#artist-features')
					.css({
						display: 'flex',
						opacity: 0,
						transform: 'scale(0.9)'
					})
					.animate({
						opacity: 1
					}, 300)
					.css({
						transform: 'scale(1)',
						transition: 'transform 0.3s ease-out'
					});
			});

			// Add to main.js at the end of the document ready function
			function removeUnusedCSS() {
				const allElements = document.querySelectorAll('*');
				const usedSelectors = new Set();

				// Get all stylesheets
				const sheets = document.styleSheets;
				try {
					for (let i = 0; i < sheets.length; i++) {
						const rules = sheets[i].cssRules || sheets[i].rules;
						for (let j = 0; j < rules.length; j++) {
							if (rules[j].selectorText) {
								const selector = rules[j].selectorText;
								try {
									if (document.querySelector(selector)) {
										usedSelectors.add(selector);
									}
								} catch (e) {
									// Invalid selector, skip
								}
							}
						}
					}
				} catch (e) {
					// Cross-origin stylesheet, can't access rules
				}

				// Log used selectors for development
				console.log('Used CSS selectors:', usedSelectors);
			}

// Call on window load when all resources are loaded
			window.addEventListener('load', removeUnusedCSS);
		});

		// Add some CSS for our animation
		$("<style>")
			.prop("type", "text/css")
			.html(`
      .features {
        display: flex;
        flex-wrap: wrap;
        transition: opacity 0.3s ease-out;
      }
      .feature-toggle .button {
        transition: background-color 0.3s ease;
      }
    `)
			.appendTo("head");
	});

	// Header.
		if ($banner.length > 0
		&&	$header.hasClass('alt')) {

			$window.on('resize', function() { $window.trigger('scroll'); });

			$banner.scrollex({
				bottom:		$header.outerHeight() + 1,
				terminate:	function() { $header.removeClass('alt'); },
				enter:		function() { $header.addClass('alt'); },
				leave:		function() { $header.removeClass('alt'); }
			});

		}

})(jQuery);