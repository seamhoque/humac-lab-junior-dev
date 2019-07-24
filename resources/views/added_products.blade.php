{{--{{dd($variant_products)}}--}}

@extends('layouts.master')
@section('content')
    <div class="container">
        <a href="{{route('landing')}}" type="submit" style="margin-top: 20px" class="btn btn-primary btn-block">Add new product</a>
        <h1>List of added products</h1>
        <table class="table table-dark">
            <thead>
            <tr>
                <th scope="col">Id</th>
                <th scope="col">Product Name</th>
                <th scope="col">Product Size</th>
                <th scope="col">Product Color</th>
                <th scope="col">Product Craft</th>
                <th scope="col">Product Type</th>
                <th scope="col">Price</th>
            </tr>
            </thead>
            <tbody>

            @foreach($variant_products as $variant_product)
                <tr>
                    <th scope="row">{{$variant_product->id}}</th>
                    <td>{{$variant_product->v_product_name}}</td>
                    <td>{{$variant_product->v_product_size}}</td>
                    <td>{{$variant_product->v_product_color}}</td>
                    <td>{{$variant_product->v_product_craft}}</td>
                    <td>{{$variant_product->v_product_type}}</td>
                    <td>{{$variant_product->v_product_proce}}</td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
@endsection
