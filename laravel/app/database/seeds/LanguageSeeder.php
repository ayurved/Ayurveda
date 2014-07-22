<?php

class LanguageSeeder extends Seeder {

    public function run(){

        DB::table('languages')->truncate();
        $lang_model = new Vizioart\Cookbook\Models\DB\LanguageDBModel;

        $langs = array(
        	array(
        		'id' => 1,
        		'code' => 'cs',
        		'description' => '',
        	),
        	array(
        		'id' => 2,
        		'code' => 'en',
        		'description' => '',
        	)
        );

        foreach ($langs as $lang) {
	        $lang_model->create(array(
	        	'id' => $lang['id'],
	        	'code' => $lang['code'],
	        	'description' => $lang['description'],
	        ));
        }

    }

}