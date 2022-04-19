<?php

namespace App\Http\Controllers;

use App\Models\Skill;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;

class SkillController extends Controller
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
            'data' => Skill::all()
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
            'long_experience' => 'required',
        ]);

        $input = $request->all();

        if ($request->has('picture')) {
            $image = $request->file('picture');
            $filename = time() . rand(1, 9) . '.' . $image->getClientOriginalExtension();
            $image->move('uploads', $filename);
            $input['picture'] = $filename;
        }

        $skill = Skill::create($input);

        return response()->json([
            'message' => 'success',
            'data' => $skill
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Skill  $skill
     * @return \Illuminate\Http\Response
     */
    public function show(Skill $skill)
    {
        return response()->json([
            'message' => 'success',
            'data' => $skill
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Skill  $skill
     * @return \Illuminate\Http\Response
     */
    public function edit(Skill $skill)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Skill  $skill
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Skill $skill)
    {
        $request->validate([
            'name' => 'required',
            'description' => 'required',
            'long_experience' => 'required',
        ]);

        $input = $request->all();

        if ($request->picture !== $skill->picture) {
            $picture = $skill->picture;
            File::delete('uploads/' . $picture);

            $image = $request->file('picture');
            $filename = time() . '.' . $image->getClientOriginalExtension();
            $image->move('uploads', $filename);
            $input['picture'] = $filename;
        } else {
            unset($input['picture']);
        }

        $skill->update($input);

        return response()->json([
            'message' => 'success',
            'data' => $skill
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Skill  $skill
     * @return \Illuminate\Http\Response
     */
    public function destroy(Skill $skill)
    {
        $picture = $skill->picture;
        File::delete('uploads/' . $picture);

        $skill->delete();

        return response()->json([
            'message' => 'success',
        ]);
    }
}
