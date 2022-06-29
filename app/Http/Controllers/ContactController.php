<?php



namespace App\Http\Controllers;


use Illuminate\Http\Request;
use App\Models\Contact;
use RealRashid\SweetAlert\Facades\Alert;
use Mail;

class ContactController extends Controller
{
    public function contactForm()

    {

        return view('pages.index');
    }



    public function storeContactForm(Request $request)

    {

        $request->validate([

            'name' => 'required',
            'email_form' => 'required|max:32',
            // 'country' => 'required|numeric',
            'phone' => 'required|digits:10|numeric',
            'support' => 'required',

        ]);
        $input = $request->all();
        //Contact::create($input);

        //  Send mail to admin

        \Mail::send('contactMail', array(

            'name' => $input['name'],

            'email_form' => $input['email_form'],
            // 'country' => $input['country'],

            'phone' => $input['phone'],

            'messages' => $input['support'],


        ), function ($support) use ($request) {

            $support->to('davidthango2021@gmail.com')->subject($request->get('subject'));

            $support->from($request->email_form);
        });
        return redirect()->back()->with(['success' => 'Contact submit Successfully']);
    }
}
