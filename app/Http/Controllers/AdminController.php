<?php

namespace App\Http\Controllers;

use App\Models\Introduce;
use App\Models\Room;
use App\Models\Service;
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
    public function indexservice()
    {
        return view('admin.service.index', ['rows' => Service::GetAll()]);
    }
    public function getaddservice()
    {
        return view('admin.service.add');
    }
    public function delservice($id)
    {
        $rows = Service::findOrFail($id);
        $rows->delete();
        return redirect('admin/service');
    }
    public function storeservice(Request $request)
    {
        $request->validate(
            [
                'content_vi' => 'required',
                'title_vi' => 'required',
                'content_en' => 'required',
                'title_en' => 'required',
                 'content_ru' => 'required',
                'title_ru' => 'required',
                'content_cn' => 'required',
                'title_cn' => 'required',
                 'content_jp' => 'required',
                'title_jp' => 'required',
                'content_kr' => 'required',
                'title_kr' => 'required',
                'photo' => 'required',
            ],
            [
                'content_vi.required' => 'Vui lòng nhập nội dung tiếng Việt',
                'title_vi.required' => 'Vui lòng nhập tiêu đề tiếng Việt',
                'content_en.required' => 'Vui lòng nhập nội dung tiếng Anh',
                'title_en.required' => 'Vui lòng nhập tiêu đề tiếng Anh',
                'content_ru.required' => 'Vui lòng nhập nội dung tiếng Nga',
                'title_ru.required' => 'Vui lòng nhập tiêu đề tiếng Nga',
                'content_jp.required' => 'Vui lòng nhập nội dung tiếng Nhật',
                'title_jp.required' => 'Vui lòng nhập tiêu đề tiếng Nhật',
                'content_cn.required' => 'Vui lòng nhập nội dung tiếng Trung',
                'title_cn.required' => 'Vui lòng nhập tiêu đề tiếng Trung',
                'content_kr.required' => 'Vui lòng nhập nội dung tiếng Hàn',
                'title_kr.required' => 'Vui lòng nhập tiêu đề tiếng Hàn',
                'photo.required' => 'Vui lòng nhập hình ảnh',
            ],
        );
        $rows = new Service();

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

        $rows->title_vi = $request->input('title_vi');
        $rows->title_en = $request->input('title_en');
        $rows->title_ru = $request->input('title_ru');
        $rows->title_kr = $request->input('title_kr');
        $rows->title_cn = $request->input('title_cn');
        $rows->title_jp = $request->input('title_jp');
        $rows->content_vi = $request->input('content_vi');
        $rows->content_en = $request->input('content_en');
        $rows->content_ru = $request->input('content_ru');
        $rows->content_kr = $request->input('content_kr');
        $rows->content_cn = $request->input('content_cn');
        $rows->content_jp = $request->input('content_jp');
        $rows->slug = Str::slug($request->input('title_en'));
        $rows->save();
        return redirect('admin/service')->with('success', 'Cập nhật tin thành công!');
    }
    public function editservice($id)
    {
        $rows = Service::find($id);
        return view('admin.service.edit', compact('rows'));
    }
    public function updateservice(Request $request, $id)
    {
        $request->validate(
            [
                'content_vi' => 'required',
                'title_vi' => 'required',
                'content_en' => 'required',
                'title_en' => 'required',
                 'content_ru' => 'required',
                'title_ru' => 'required',
                'content_cn' => 'required',
                'title_cn' => 'required',
                 'content_jp' => 'required',
                'title_jp' => 'required',
                'content_kr' => 'required',
                'title_kr' => 'required',
                'photo' => 'required',
            ],
            [
                'content_vi.required' => 'Vui lòng nhập nội dung tiếng Việt',
                'title_vi.required' => 'Vui lòng nhập tiêu đề tiếng Việt',
                'content_en.required' => 'Vui lòng nhập nội dung tiếng Anh',
                'title_en.required' => 'Vui lòng nhập tiêu đề tiếng Anh',
                'content_ru.required' => 'Vui lòng nhập nội dung tiếng Nga',
                'title_ru.required' => 'Vui lòng nhập tiêu đề tiếng Nga',
                'content_jp.required' => 'Vui lòng nhập nội dung tiếng Nhật',
                'title_jp.required' => 'Vui lòng nhập tiêu đề tiếng Nhật',
                'content_cn.required' => 'Vui lòng nhập nội dung tiếng Trung',
                'title_cn.required' => 'Vui lòng nhập tiêu đề tiếng Trung',
                'content_kr.required' => 'Vui lòng nhập nội dung tiếng Hàn',
                'title_kr.required' => 'Vui lòng nhập tiêu đề tiếng Hàn',
                'photo.required' => 'Vui lòng nhập hình ảnh',
            ],
        );
        $rows = Service::find($id);
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

        $rows->title_vi = $request->input('title_vi');
        $rows->title_en = $request->input('title_en');
        $rows->title_ru = $request->input('title_ru');
        $rows->title_kr = $request->input('title_kr');
        $rows->title_cn = $request->input('title_cn');
        $rows->title_jp = $request->input('title_jp');
        $rows->content_vi = $request->input('content_vi');
        $rows->content_en = $request->input('content_en');
        $rows->content_ru = $request->input('content_ru');
        $rows->content_kr = $request->input('content_kr');
        $rows->content_cn = $request->input('content_cn');
        $rows->content_jp = $request->input('content_jp');
        $rows->slug = Str::slug($request->input('title_en'));
        $rows->save();
        return redirect('admin/service')->with('success', 'Cập nhật tin thành công!');
    }

         
}
