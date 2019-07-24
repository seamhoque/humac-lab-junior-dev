@extends('layouts.master')
@section('content')

    {{--{{dd($product)}}--}}


    <div class="container">
        <h1>please add product</h1>
        <form action="{{route('variant_product')}}" method="get" class="form-horizontal">
            @csrf
            <div class="form-group">
                <label for="Product Name">Product Name: {{$product->product_name}}</label>
                <input type="hidden" name="product" value="{{$product->id}}">

            </div>

            <div class="form-group">
                <label for="Size">Product size:</label>
                <select name="size" class="form-control form-control-lg" id="sel1">
                    @foreach($sizes as $size)
                        <option value="{{$size->id}}"> {{$size->size_name}}</option>
                    @endforeach
                </select>
            </div>

            @if($product->product_name == "Shirt")

                <div class="form-group">
                    <label for="Color">Product Colour:</label>
                    <select name="color" class="form-control form-control-lg" id="sel1">
                        @foreach($colors as $color)
                            <option value="{{$color->id}}"> {{$color->color_name}}</option>
                        @endforeach
                    </select>
                </div>


                <div class="form-group">
                    <label for="Color">Product craft:</label>
                    <select name="craft" class="form-control form-control-lg" id="sel1">
                        @foreach($crafts as $craft)
                            <option value="{{$craft->id}}"> {{$craft->craft_name}}</option>
                        @endforeach
                    </select>
                </div>
            @endif

            @if($product->product_name == "Rod")
                <div class="form-group">
                    <label for="Color">Product type:</label>
                    <select name="type" class="form-control form-control-lg" id="sel1">
                        @foreach($types as $type)
                            <option value="{{$type->id}}"> {{$type->type_name}}</option>
                        @endforeach
                    </select>
                </div>
            @endif


            <button type="submit" class="btn btn-primary btn-block ">ADD</button>

        </form>

    </div>





    @endsection
