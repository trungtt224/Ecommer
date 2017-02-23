<!DOCTYPE>
<html>
    <head>
        <title>Branch</title>
    </head>
    <body>
        <h1>Branch</h1>
        @foreach ($brand as $b)
            <p>This is brand {{$b -> id}} : {{$b -> name}} </p>
        @endforeach
    </body>
</html>