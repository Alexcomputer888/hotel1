<?php

namespace App\Http\Controllers;

use App\Models\Introduce;
use App\Models\Room;
use App\Models\Service;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;

class Home extends Controller
{
    public function index()
    {
        return view('../pages/index');
    }
    public function gotogt(Request $request)
    {
        $id = 1;
        $rows= Introduce::find($id);
        App::setLocale($request->lang);
        session()->put('locale', $request->lang);
        return view('pages.poseidon-experience.gt', compact('rows'));
    }
    public function gotovt(Request $request)
    {
        $id = 2;
        $rows= Introduce::find($id);
        App::setLocale($request->lang);
        session()->put('locale', $request->lang);
        return view('pages.poseidon-experience.vt', compact('rows'));
    }
    public function GotoRoom(Request $request,$slug)
    {
        $id = Room::where('id', $slug)
        ->orWhere('slug', $slug)
        ->firstOrFail();
        $rows= Room::find($id->id);
        App::setLocale($request->lang);
        session()->put('locale', $request->lang);
        return view('pages.room.room', compact('rows'));
    }
    public function GotoService(Request $request,$slug)
    {
        $id = Service::where('id', $slug)
        ->orWhere('slug', $slug)
        ->firstOrFail();
        $rows= Service::find($id->id);
        App::setLocale($request->lang);
        session()->put('locale', $request->lang);
        return view('pages.poseidon-service.service', compact('rows'));
    }
    
    public function contact(Request $request)
    {
        App::setLocale($request->lang);
        session()->put('locale', $request->lang);
        return view('../pages/contact');
    }
    public function gotoRoomPage1(Request $request)
    {
        App::setLocale($request->lang);
        session()->put('locale', $request->lang);
        return view('../pages/room/deluxe-cityview-with-balcony');
    }
    public function gotoRoomPage2(Request $request)
    {
        App::setLocale($request->lang);
        session()->put('locale', $request->lang);
        return view('../pages/room/family-executive');
    }
    public function gotoRoomPage3(Request $request)
    {
        App::setLocale($request->lang);
        session()->put('locale', $request->lang);
        return view('../pages/room/luxury-Cityview');
    }
    public function gotoRoomPage4(Request $request)
    {
        App::setLocale($request->lang);
        session()->put('locale', $request->lang);
        return view('../pages/room/poseidon-suite');
    }
    public function gotoRoomPage5(Request $request)
    {
        App::setLocale($request->lang);
        session()->put('locale', $request->lang);
        return view('../pages/room/premier-cityview');
    }
    public function gotoRoomPage6(Request $request)
    {
        App::setLocale($request->lang);
        session()->put('locale', $request->lang);
        return view('../pages/room/superior-room');
    }

    public function gotoAboutUs(Request $request)
    {
        App::setLocale($request->lang);
        session()->put('locale', $request->lang);
        return view('../pages/poseidon-experience/about-us');
    }
    public function gotoLocation(Request $request)
    {
        App::setLocale($request->lang);
        session()->put('locale', $request->lang);
        return view('../pages/poseidon-experience/location');
    }

    public function gotoDichVu1(Request $request)
    {
        App::setLocale($request->lang);
        session()->put('locale', $request->lang);
        return view('../pages/poseidon-service/quay-dich-vu-van-phong');
    }

    public function gotoDichVu2(Request $request)
    {
        App::setLocale($request->lang);
        session()->put('locale', $request->lang);
        return view('../pages/poseidon-service/gym');
    }

    public function gotoDichVu3(Request $request)
    {
        App::setLocale($request->lang);
        session()->put('locale', $request->lang);
        return view('../pages/poseidon-service/dich-vu-cho-thue-xe');
    }

    public function gotoDichVu4(Request $request)
    {
        App::setLocale($request->lang);
        session()->put('locale', $request->lang);
        return view('../pages/poseidon-service/ho-boi-ngoai-troi');
    }

    public function gotoDichVu5(Request $request)
    {
        App::setLocale($request->lang);
        session()->put('locale', $request->lang);
        return view('../pages/poseidon-service/hoi-nghi');
    }

    public function gotoDinning1(Request $request)
    {
        App::setLocale($request->lang);
        session()->put('locale', $request->lang);
        return view('../pages/poseidon-dinning/poseidon-lobby-lounge-lobby');
    }

    public function gotoDinning2(Request $request)
    {
        App::setLocale($request->lang);
        session()->put('locale', $request->lang);
        return view('../pages/poseidon-dinning/Medusa-restaurant-03rd-floor');
    }

    public function gotoDinning3(Request $request)
    {
        App::setLocale($request->lang);
        session()->put('locale', $request->lang);
        return view('../pages/poseidon-dinning/Hades-bar-18th-floor');
    }

    public function gotoPromotion1(Request $request)
    {
        App::setLocale($request->lang);
        session()->put('locale', $request->lang);
        return view('../pages/poseidon-promotion/family');
    }

    public function gotoPromotion2(Request $request)
    {
        App::setLocale($request->lang);
        session()->put('locale', $request->lang);
        return view('../pages/poseidon-promotion/longstay');
    }

    public function gotoPromotion3(Request $request)
    {
        App::setLocale($request->lang);
        session()->put('locale', $request->lang);
        return view('../pages/poseidon-promotion/honeymoon');
    }

    public function gotoExplore1(Request $request)
    {
        App::setLocale($request->lang);
        session()->put('locale', $request->lang);
        return view('../pages/poseidon-explore/haiduonghoc');
    }

    public function gotoExplore2(Request $request)
    {
        App::setLocale($request->lang);
        session()->put('locale', $request->lang);
        return view('../pages/poseidon-explore/honchong');
    }

    public function gotoExplore3(Request $request)
    {
        App::setLocale($request->lang);
        session()->put('locale', $request->lang);
        return view('../pages/poseidon-explore/thapba');
    }

    public function gotoExplore4(Request $request)
    {
        App::setLocale($request->lang);
        session()->put('locale', $request->lang);
        return view('../pages/poseidon-explore/chualongson');
    }

    public function gotoExplore5(Request $request)
    {
        App::setLocale($request->lang);
        session()->put('locale', $request->lang);
        return view('../pages/poseidon-explore/khuphotay');
    }


    public function gotoExplore6(Request $request)
    {
        App::setLocale($request->lang);
        session()->put('locale', $request->lang);
        return view('../pages/poseidon-explore/dammarket');
    }

    public function gallery(Request $request)
    {
        App::setLocale($request->lang);
        session()->put('locale', $request->lang);
        return view('../pages/gallery');
    }

    public function gotoAccommodations(Request $request)
    {
        App::setLocale($request->lang);
        session()->put('locale', $request->lang);
        return view('../pages/galleries/accommodations');
    }

    public function gotoReceptions(Request $request)
    {
        App::setLocale($request->lang);
        session()->put('locale', $request->lang);
        return view('../pages/galleries/receptions');
    }

    public function gotoRestaurant(Request $request)
    {
        App::setLocale($request->lang);
        session()->put('locale', $request->lang);
        return view('../pages/galleries/restaurant');
    }
    public function RoomAvailable(Request $request)
    {
        App::setLocale($request->lang);
        session()->put('locale', $request->lang);
        return view('../pages/roomAvailable/roomAvailable1');
    }



    public function lang_change(Request $request)
    {
        
        App::setLocale($request->lang);
        session()->put('locale', $request->lang);
        return view('../pages/index');
    }
}
