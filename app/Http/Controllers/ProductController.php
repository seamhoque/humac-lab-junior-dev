<?php

namespace App\Http\Controllers;

use App\Craft;
use App\Size;
use App\Type;
use App\Variant_Product;
use Illuminate\Http\Request;
use App\Product;
use App\Color;

class ProductController extends Controller
{
    public function landing(){
        $products = Product::all();
        return view('landing',compact('products'));

    }
    public function index(Request $request){

        /*dd($request);*/

        $product = Product::find($request->product);

        //dd($product);
        $colors = Color::all();
        $sizes = Size::all();
        $crafts = Craft::all();
        $types = Type::all();

        //dd($colors);
        return view('welcome',compact('colors','product','sizes','crafts','types'));
    }

    public function variant_product (Request $request){

        /*dd("inside");*/
        /*dd($request)*/;
        $v_product = "";
        $v_color = "";
        $v_size = "";
        $v_craft = "";
        $v_type = "";
        $total_price = 0;

        if($request->product){
            $product = Product::find($request->product);
            $total_price = $total_price + $product->base_price;
            $v_product = $product->product_name;
        }


        if($request->color){
            $color = Color::find($request->color);
            $total_price = $total_price + $color->price;
            $v_color = $color->color_name;

        }

        if($request->size){
            $size = Size::find($request->size);
            $total_price = $total_price + $size->price;
            $v_size = $size->size_name;
        }

        if($request->craft){

            /*dd("inside");*/
            $craft = Craft::find($request->craft);
            $total_price = $total_price + $craft->price;
            $v_craft = $craft->craft_name;

            /*dd($v_craft);*/
        }

        if($request->type){
            $type = Type::find($request->type);
            $total_price = $total_price + $type->price;
            $v_type = $type->type_name;
        }

        /*dd($total_price);*/

        $variant_product = ([
            'v_product_name' => $v_product,
            'v_product_color' => $v_color,
            'v_product_size' => $v_size,
            'v_product_craft' => $v_craft,
            'v_product_type' => $v_type,
            'v_product_proce' => $total_price

        ]);

        $variant_product = new Variant_Product($variant_product);

        /*dd($variant_product);*/

        $variant_product->save();

        return redirect('added_products');


    }

    public  function added_products() {

        $variant_products = Variant_Product::all();

        /*dd($variant_products);*/

        return view('added_products',compact('variant_products'));
    }
}
