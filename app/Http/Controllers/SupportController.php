<?php

namespace App\Http\Controllers;

use App\Models\Support;
use Illuminate\Http\Request;

class SupportController extends Controller
{
    //
    
    public function indexsupport()
    {
        return view('admin.support.index', ['rows' => Support::GetAll()]);
    }
    public function getaddsupport()
    {
        return view('admin.support.add');
    }
    public function delsupport($id)
    {
        $rows = Support::findOrFail($id);
        $rows->delete();
        return redirect('admin/support');
    }
    public function storesupport(Request $request)
    {
        $request->validate(
            [
                'name' => 'required',
                'sdt' => 'required',
                'email' => 'required'
            ],
            [
                'name.required' => 'Vui lòng nhập tên',
                'sdt.required' => 'Vui lòng nhập sdt',
                'email.required' => 'Vui lòng nhập email'
            ],
        );
        $rows = new Support();
        $rows->name = $request->input('name');
        $rows->sdt = $request->input('sdt');
        $rows->email = $request->input('email');
        $rows->save();
        return redirect('admin/support')->with('success', 'Cập nhật tin thành công!');
    }
    public function editservice($id)
    {
        $rows = Support::find($id);
        return view('admin.support.edit', compact('rows'));
    }
    public function updateservice(Request $request, $id)
    {
        $request->validate(
            [
                'name' => 'required',
                'sdt' => 'required',
                'email' => 'required'
            ],
            [
                'name.required' => 'Vui lòng nhập tên',
                'sdt.required' => 'Vui lòng nhập sdt',
                'email.required' => 'Vui lòng nhập email'
            ],
        );
        $rows = Support::find($id);

        $rows->name = $request->input('name');
        $rows->sdt = $request->input('sdt');
        $rows->email = $request->input('email');
        $rows->save();
        return redirect('admin/support')->with('success', 'Cập nhật tin thành công!');
    }
}
