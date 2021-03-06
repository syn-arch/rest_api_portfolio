<?php

namespace App\Http\Controllers;

use App\Mail\Mail as MailMail;
use App\Models\Profile;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class MailController extends Controller
{
    public function send(Request $request)
    {
        $profile = Profile::first();

        $this->validate($request, [
            'name' => 'required',
            'email' => 'required|email',
            'body' => 'required',
        ]);

        if ($request->has('verified')) {
            if ($request->verified) {
                Mail::to($profile->email)->send(new MailMail($request->all()));
                return response()->json(['success' => 'Email is Sent!', 'data' => $request->all()]);
            } else {
                return response()->json(['success' => false, 'message' => 'reCaptcha is required'], 401);
            }
        }
    }
}
