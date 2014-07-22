<?php

class AdminSeeder extends Seeder {

    public function run(){

        DB::table('cb_administrators')->delete();
        $admin_model = new Vizioart\Cookbook\Models\AdministratorModel;

        $admins = array(
        	array(
        		'username' => 'veljamatic',
        		'email' => 'veljamatic@gmail.com',
                'password' => 'admin123',
        	),
        	array(
        		'username' => 'hjuster',
        		'email' => 'filip.arneric@kitchenprague.com',
                'password' => 'selasije',
        	),
        );

        foreach ($admins as $admin) {

            $admin_model = new Vizioart\Cookbook\Models\AdministratorModel;

            $admin_model->username = $admin['username'];
            $admin_model->email = $admin['email'];
            $admin_model->password = $admin['password'];
            $admin_model->password_confirmation = $admin['password'];
            $admin_model->confirmed = true;

            $admin_model->save();
        }

    }

}