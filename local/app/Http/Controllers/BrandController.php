<?php
/**
 * Created by PhpStorm.
 * User: trungtt
 * Date: 2/22/17
 * Time: 6:09 PM
 */

namespace App\Http\Controllers;


use Illuminate\Support\Facades\DB;

class BrandController extends Controller
{
    public function getBrand() {
        $brand = DB::select('select * from brand');
        return view("pages.brand")->with("brand", $brand);
    }
}