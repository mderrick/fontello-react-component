@font-face {
  font-family: '<%= fontName %>';
  src: url('<%= eotFontPath %>?<%= timestamp %>');
  src: url('<%= eotFontPath %>?<%= timestamp %>#iefix') format('embedded-opentype'),
       url('<%= woffFontPath %>?<%= timestamp %>') format('woff'),
       url('<%= ttfFontPath %>?<%= timestamp %>') format('truetype'),
       url('<%= svgFontPath %>?<%= timestamp %>#fontello') format('svg');
  font-weight: normal;
  font-style: normal;
}

.icon {
 	font-family: "<%= fontName %>";
	font-style: normal;
	font-weight: normal;
	speak: none;

	display: inline-block;
	text-decoration: inherit;
	width: 1em;
	margin-right: .2em;
	text-align: center;
	/* opacity: .8; */

	/* For safety - reset parent styles, that can break glyph codes*/
	font-variant: normal;
	text-transform: none;

	/* fix buttons height, for twitter bootstrap */
	line-height: 1em;

	/* Animation center compensation - margins should be symmetric */
	/* remove if not needed */
	margin-left: .2em;

	/* you can be more comfortable with increased icons size */
	/* font-size: 120%; */

	/* Font smoothing. That was taken from TWBS */
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;

	/* Uncomment for 3D effect */
	/* text-shadow: 1px 1px 1px rgba(127, 127, 127, 0.3); */
}

<% _.each(glyphs, function(i) { %>
.<%= i['glyph-name'] %> {
	content: '<%= i['unicode'] %>';
}
<% }); %>