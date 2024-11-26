<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
class ContactController extends Controller
{

    public function sendContactForm(Request $request)
    {
        $request->validate([
            'conName' => 'required|max:255',
            'conLName' => 'required|max:255',
            'conEmail' => 'required|email',
            'conPhone' => 'nullable|max:20',
            'conService' => 'required',
            'conMessage' => 'required',
        ]);

        $data = [
            'firstName' => $request->input('conName'),
            'lastName' => $request->input('conLName'),
            'email' => $request->input('conEmail'),
            'phone' => $request->input('conPhone'),
            'service' => $request->input('conService'),
            'messageContent' => $request->input('conMessage'),
        ];
        
        Mail::send('email', $data, function ($message) use ($data) {
            $message->to('info@hani-sulaiman.com')
                    ->subject('New Contact Form Submission');
        });

        return response()->json(['success' => true]);
    }
}
