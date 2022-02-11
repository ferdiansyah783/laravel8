@extends('layouts.main')

@section('container')
    <h1>Halaman About</h1>
    <h2>{{ $name }}</h2>
    <h2>{{ $email }}</h2>
    <img src="img/{{ $image }}" alt="{{ $name }}" width="400" class="img-thumbnail rounded-circle">
@endsection
