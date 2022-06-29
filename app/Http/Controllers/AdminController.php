<?php

namespace App\Http\Controllers;

use App\Models\Introduce;
use App\Models\Room;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class AdminController extends Controller
{
    public function index()
    {
        return view('admin.layout');
    }
    public function getaddroom()
    {
        return view('admin.room.add');
    }
    public function indextq()
    {
        return view('admin.tongquan.index', ['rows' => Introduce::GetAll()]);
    }
    public function indexroom()
    {
        return view('admin.room.index', ['rows' => Room::GetAll()]);
    }
    public function edittq($id)
    {
        $rows = Introduce::find($id);
        return view('admin.tongquan.edit', compact('rows'));
    }
    public function editroom($id)
    {
        $rows = Room::find($id);
        return view('admin.room.edit', compact('rows'));
    }

    public function storeroom(Request $request)
    {
        $request->validate(
            [
                'content_vi' => 'required',
                'detail_vi' => 'required',
                'photo' => 'required',
            ],
            [
                'content_vi.required' => 'Vui lòng nhập nội dung tiếng Việt',
                'detail_vi.required' => 'Vui lòng nhập đặc điểm tiếng Việt',
                'photo.required' => 'Vui lòng nhập hình ảnh',
            ],
        );
        $rows = new Room();
        //image upload
        // if ($request->hasFile('photo')) {

        //     $file = $request->file('photo');
        //     $allowedfileExtention = ['pdf', 'png', 'jpg'];
        //     $extention = $file->getClientOriginalExtension();
        //     $check = in_array($extention, $allowedfileExtention);
        //     if ($check) {
        //         $name =  $file->getClientOriginalName();
        //         $file->move('img', $name);
        //         $rows->photo = $name;
        //     }
        // }
        // Upload Multiple Image

        // if ($request->hasFile('photo')) {
        //     $image = $request->file('photo');
        //     foreach ($image as $files) {
        //         $file_name = $files->getClientOriginalExtension();
        //         $name = $files->getClientOriginalName();
        //         $files->move('img', $file_name);
        //         $data[] =  $name;
        //         $json_encode = json_encode($data);
        //     }
        //     $rows->photo = $json_encode;
        // }
        if ($request->hasFile('photo')) {
            $image = $request->file('photo');
            foreach ($image as $files) {
                $allowedfileExtention = ['pdf', 'png', 'jpg'];
                $extention = $files->getClientOriginalExtension();

                $name = $files->getClientOriginalName();
                $check = in_array($extention, $allowedfileExtention);
                if ($check) {
                    $files->move('img', $name);
                    $data[] =  $name;
                    $json_encode = json_encode($data);
                }
            }
            $rows->photo = $json_encode;
        }
        $rows->title = $request->input('title');
        $rows->detail_vi = $request->input('detail_vi');
        $rows->detail_en = $request->input('detail_en');
        $rows->detail_ru = $request->input('detail_ru');
        $rows->detail_kr = $request->input('detail_kr');
        $rows->detail_cn = $request->input('detail_cn');
        $rows->detail_jp = $request->input('detail_jp');
        $rows->content_vi = $request->input('content_vi');
        $rows->content_en = $request->input('content_en');
        $rows->content_ru = $request->input('content_ru');
        $rows->content_kr = $request->input('content_kr');
        $rows->content_cn = $request->input('content_cn');
        $rows->content_jp = $request->input('content_jp');
        $rows->slug = Str::slug($request->input('title'));
        $rows->save();
        return redirect('admin/room')->with('success', 'Cập nhật tin thành công!');
    }
    public function updatetq(Request $request, $id)
    {
        $request->validate(
            [
                'content_vi' => 'required',
            ],
            [
                'content_vi.required' => 'Vui lòng nhập nội dung tiếng Việt',
            ],
        );
        $rows = Introduce::find($id);
        //image upload
        if ($request->hasFile('photo')) {
            $file = $request->file('photo');
            $allowedfileExtention = ['pdf', 'png', 'jpg'];
            $extention = $file->getClientOriginalExtension();
            $check = in_array($extention, $allowedfileExtention);
            if ($check) {
                $name = $file->getClientOriginalName();
                $file->move('img', $name);
                $rows->photo = $name;
            }
        }
        $rows->title = $request->input('title');
        $rows->content_vi = $request->input('content_vi');
        $rows->content_en = $request->input('content_en');
        $rows->content_ru = $request->input('content_ru');
        $rows->content_kr = $request->input('content_kr');
        $rows->content_cn = $request->input('content_cn');
        $rows->content_jp = $request->input('content_jp');
        $rows->save();
        return redirect('admin/tong-quan')->with('success', 'Cập nhật tin thành công!');
    }
    public function updateroom(Request $request, $id)
    {
        $request->validate(
            [
                'content_vi' => 'required',
                'detail_vi' => 'required',
            ],
            [
                'content_vi.required' => 'Vui lòng nhập nội dung tiếng Việt',
                'detail_vi.required' => 'Vui lòng nhập đặc điểm tiếng Việt',
            ],
        );
        $rows = Room::find($id);
        // Upload Multiple Image
        if ($request->hasFile('photo')) {
            $image = $request->file('photo');
            foreach ($image as $files) {
                $destinationPath = 'public/img/';
                $file_name = $files->getClientOriginalExtension();
                $name = $files->getClientOriginalName();

                $files->move($destinationPath, $file_name);
                $data[] =  $name;
                $json_encode = json_encode($data);
            }
            $rows->photo = $json_encode;
        }
        $rows->title = $request->input('title');
        $rows->detail_vi = $request->input('detail_vi');
        $rows->detail_en = $request->input('detail_en');
        $rows->detail_ru = $request->input('detail_ru');
        $rows->detail_kr = $request->input('detail_kr');
        $rows->detail_cn = $request->input('detail_cn');
        $rows->detail_jp = $request->input('detail_jp');
        $rows->content_vi = $request->input('content_vi');
        $rows->content_en = $request->input('content_en');
        $rows->content_ru = $request->input('content_ru');
        $rows->content_kr = $request->input('content_kr');
        $rows->content_cn = $request->input('content_cn');
        $rows->content_jp = $request->input('content_jp');
        $rows->slug = Str::slug($request->input('title'));
        $rows->save();
        return redirect('admin/room')->with('success', 'Cập nhật tin thành công!');
    }
    public function delroom($id)
    {
        $rows = Room::findOrFail($id);
        $rows->delete();
        return redirect('admin/room');
    }
}
