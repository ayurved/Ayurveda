<?php namespace Vizioart\Cookbook\Models;

use DB;
use Vizioart\Cookbook\Models\DB\LanguageDBModel as LangModel;


class LanguageRepository {
    
    protected $langModel;

    public function __construct(LangModel $langModel) {
        $this->langModel = $langModel;
    }


    public function newInstance(array $attributes = array()) {
        return $this->langModel->newInstance($attributes);
    }

    public function all($columns = array('*')) {
        return $this->langModel->all($columns);
    }

    public function create(array $attributes) {
        return $this->langModel->create($attributes);
    }

    public function find($id, $columns = array('*')) {
        return $this->langModel->findOrFail($id, $columns);
    }

    public function updateWithIdAndInput($id, array $input){
        $lang = $this->langModel->find($id);
        return $lang->update($input);
    }

    public function destroy($id) {
        return $this->langModel->destroy($id);
    }

}