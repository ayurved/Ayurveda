require.config({
	urlArgs: "noCache=" + (new Date).getTime(),
	baseUrl: CB.admin_assets_url+'/js/',
	paths: {
		'jquery': 'lib/jquery-1.11.0.min',
		'underscore': 'lib/underscore.min',
		'fast-class': 'lib/fast-class.min',
		'angular': 'lib/angular-1.2.16/angular.min',
		'angular-sanitize': 'lib/angular-1.2.16/angular-sanitize.min',
		// plugins
		'bootstrap': 'plugins/bootstrap/bootstrap.min',
		'tinymce': 'plugins/tinymce/tinymce.min',
		// angular ui
		'ui-utils': 'lib/angular-ui/ui-utils/ui-utils.min',
		'ui-bootstrap': 'lib/angular-ui/ui-bootstrap/ui-bootstrap-tpls-0.10.0.min',
		'ui-tinymce': 'lib/angular-ui/ui-tinymce/ui-tinymce',
		'ui-sortable': 'lib/angular-ui/ui-sortable/ui-sortable',
		'moment': 'plugins/moment.min',
		'plupload': 'plugins/plupload-2.1.1/plupload.full.min',
		'spin':  'plugins/spin.min',
		'ladda': 'plugins/ladda.min'
		// "Page" specific js scripts...
	},
	shim: {
		'angular': {
			exports: 'angular'
		},
		'angular-sanitize': {
			deps: ['angular'],
			exports: 'angular-sanitize'
		},
		'ui-utils': {
			deps: ['angular'],
			exports: 'ui-utils'
		},
		'ui-bootstrap': {
			deps: ['angular'],
			exports: 'ui-bootstrap'
		},
		'ui-tinymce': {
			deps: ['tinymce', 'angular'],
			exports: 'ui-tinymce'
		},
		'ui-sortable': {
			deps: ['angular'],
			exports: 'ui-sortable'
		},
		'bootstrap': {
			deps: ['jquery'],
			exports: 'bootstrap'
		},
		'moment': {
			deps: ['jquery'],
			exports: 'moment'
		},
		'spin': {
			exports: 'spin'
		},
		'ladda': {
			deps: ['spin'],
			exports: 'ladda'
		}
	}
});


require([  
	'jquery', 
	'underscore',
	'bootstrap', 
	'moment',
	'fast-class', 
	'angular',
	'ui-utils',
	'ui-bootstrap',
	'ui-tinymce',
	'app/pages/app',
	'app/pages/controllers/pages-controller'
],function ($) {
	
	var $appContainer = $('#app-container');
	angular.bootstrap($appContainer, ['app']);
})