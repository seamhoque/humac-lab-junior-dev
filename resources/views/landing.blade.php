@extends('layouts.master');
@section('content')



    <div class="container">
        <h1>Please select a product</h1>
        <form method="get" action="{{route('product')}}" class="form-horizontal">

            <select name="product" class="form-control form-control-lg" id="sel1">

                @foreach($products as $product)
                    <option value="{{$product->id}}" > {{$product->product_name}}</option>
                    {{--<input type="hidden" name="product_id" value="{{$product->id}}">--}}
                @endforeach
            </select>
            <button type="submit" style="margin-top: 20px" class="btn btn-primary btn-block">Go</button>
        </form>

        <p style="margin-left: 45%">OR </p>

        <a href="{{route('added_products')}}" type="submit" style="margin-top: 20px" class="btn btn-primary btn-block">See added products</a>
    </div>



@endsection
