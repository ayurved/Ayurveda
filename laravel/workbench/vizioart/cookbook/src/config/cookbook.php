<?php

return array(

	/**
	 * Package URI
	 *
	 * @type string
	 */
	'uri' => 'admin',

	'image_versions' => array(
		'large' => array(
			'method' => 'resize',
			'width' => 1920,
			'height' => 1080,
			'constraints' => array('upsize', 'aspectRatio'),
			'prefix' => 'lg_'
		),
		'medium' => array(
			'method' => 'fit',
			'width' => 640,
			'height' => 1080,
			'prefix' => 'md_'
		),
		'small' => array(
			'method' => 'fit',
			'width' => 200,
			'height' => 120,
			'prefix' => 'xs_'
		),
		'admin_thumb' => array(
			'method' => 'fit',
			'width' => 200,
			'height' => 150,
			'prefix' => 'at_'
		)
	),

	'uploads_url' => 'uploads',

	'image_packages' => array(
		'all' => array('admin_thumb'),
		'gallery' => array('large', 'medium', 'small'),
		'featured_image' => array('medium', 'small')
	),

);
