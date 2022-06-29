<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;

class RegistrationController extends Controller
{
    public function create()
    {
        return view('auth.registration.create');
    }

    public function store()
    {
        $this->validate(request(), [
            'name' => 'required|string|max:20',
            'email' => 'required|email|unique:users,email',
            'password' => 'required|alpha_num|min:6',
        ]);

        $dataArray      =       array(
            "name"          =>          $this->name,
            "email"         =>          $this->email,
            "password"      =>          $this->password
        );

        $user = User::create($dataArray);

        if (!is_null($user)) {
            auth()->login($user);
            return redirect()->back()->with("success", "Success! Registration completed");
        } else {
            return back()->with("failed", "Alert! Failed to register");
        }
    }
}
