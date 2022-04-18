<?php

namespace App\Http\Controllers;

use App\Models\Profile;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;

class ProfileController extends Controller
{
    /**
     * Create a new AuthController instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth:api', ['except' => ['index']]);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return response()->json(['message' => 'success', 'data' => Profile::first()]);
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
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Profile  $profile
     * @return \Illuminate\Http\Response
     */
    public function show(Profile $profile)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Profile  $profile
     * @return \Illuminate\Http\Response
     */
    public function edit(Profile $profile)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Profile  $profile
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'profession' => 'required',
            'about' => 'required',
            'email' => 'required',
            'phone' => 'required',
            'facebook' => 'required',
            'instagram' => 'required',
            'github' => 'required',
            'telegram' => 'required',
            'linkedin' => 'required',
        ]);

        $profile = Profile::first();

        $input = $request->all();

        if ($request->picture !== $profile->picture) {
            $request->validate([
                'picture' => 'image|mimes:jpg,png,jpeg,svg'
            ]);
            $picture = Profile::first()->picture;
            File::delete('uploads/' . $picture);

            $image = $request->file('picture');
            $filename = time() . rand(1, 100) . '.' . $image->getClientOriginalExtension();
            $image->move('uploads', $filename);
            $input['picture'] = $filename;
        } else {
            unset($input['picture']);
        }

        if ($request->cv !== $profile->cv) {
            $request->validate([
                'cv' => 'mimes:pdf'
            ]);
            $cv = Profile::first()->cv;
            File::delete('uploads/' . $cv);

            $image = $request->file('cv');
            $filename = time() . rand(1, 100) . '.' . $image->getClientOriginalExtension();
            $image->move('uploads', $filename);
            $input['cv'] = $filename;
        } else {
            unset($input['cv']);
        }

        unset($input['_method']);

        Profile::first()->update($input);

        return response()->json([
            'message' => 'success',
            'data' => Profile::first()
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Profile  $profile
     * @return \Illuminate\Http\Response
     */
    public function destroy(Profile $profile)
    {
        //
    }
}
