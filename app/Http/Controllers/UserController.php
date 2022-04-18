<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;

class UserController extends Controller
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
        return response()->json(['message' => 'success', 'data' => User::first()]);
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
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function show(User $user)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function edit(User $user)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {

        $request->validate([
            'name' => 'required',
            'email' => 'required',
        ]);

        $input = $request->all();

        if ($request->new_password) {
            $request->validate([
                'new_password' => 'same:confirm_new_password',
                'confirm_new_password' => 'same:new_password',
            ]);

            $input['password'] = bcrypt($request->new_password);
        }

        $user = User::first();

        if ($request->picture !== $user->picture) {
            $request->validate([
                'picture' => 'image|mimes:jpg,png,jpeg,svg'
            ]);

            $picture = User::first()->picture;
            if ($picture !== 'default.jpg') {
                File::delete('uploads/' . $picture);
            }

            $image = $request->file('picture');
            $filename = time() . rand(1, 100) . '.' . $image->getClientOriginalExtension();
            $image->move('uploads', $filename);
            $input['picture'] = $filename;
        } else {
            unset($input['picture']);
        }

        unset($input['_method']);

        User::first()->update($input);

        return response()->json([
            'message' => 'success',
            'data' => User::first()
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $user)
    {
        //
    }
}
