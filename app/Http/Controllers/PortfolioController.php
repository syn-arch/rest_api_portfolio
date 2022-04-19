<?php

namespace App\Http\Controllers;

use App\Models\Portfolio;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;

class PortfolioController extends Controller
{
    /**
     * Create a new AuthController instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth:api', ['except' => ['index', 'show']]);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return response()->json([
            'message' => 'success',
            'data' => Portfolio::all()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'picture' => 'required|image|mimes:jpg,png,jpeg,svg',
            'description' => 'required',
            'id_category' => 'required',
            'tags' => 'required',
            'link' => 'required',
        ]);

        $input = $request->all();

        if ($request->has('picture')) {
            $image = $request->file('picture');
            $filename = time() . rand(1, 9) . '.' . $image->getClientOriginalExtension();
            $image->move('uploads', $filename);
            $input['picture'] = $filename;
        }

        $portfolio = Portfolio::create($input);

        return response()->json([
            'message' => 'success',
            'data' => $portfolio
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Portfolio  $portfolio
     * @return \Illuminate\Http\Response
     */
    public function show(Portfolio $portfolio)
    {
        return response()->json([
            'message' => 'success',
            'data' => $portfolio
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Portfolio  $portfolio
     * @return \Illuminate\Http\Response
     */
    public function edit(Portfolio $portfolio)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Portfolio  $portfolio
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Portfolio $portfolio)
    {
        $request->validate([
            'name' => 'required',
            'picture' => 'required',
            'description' => 'required',
            'id_category' => 'required',
            'tags' => 'required',
            'link' => 'required',
        ]);

        $input = $request->all();

        if ($request->picture !== $portfolio->picture) {
            $picture = $portfolio->picture;
            File::delete('uploads/' . $picture);

            $image = $request->file('picture');
            $filename = time() . '.' . $image->getClientOriginalExtension();
            $image->move('uploads', $filename);
            $input['picture'] = $filename;
        } else {
            unset($input['picture']);
        }

        $portfolio->update($input);

        return response()->json([
            'message' => 'success',
            'data' => $portfolio
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Portfolio  $portfolio
     * @return \Illuminate\Http\Response
     */
    public function destroy(Portfolio $portfolio)
    {
        $picture = $portfolio->picture;
        File::delete('uploads/' . $picture);

        $portfolio->delete();

        return response()->json([
            'message' => 'success',
        ]);
    }
}
