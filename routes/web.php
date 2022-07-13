<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\Auth\LogoutController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\Home;
use App\Http\Controllers\RegistrationController;
use App\Http\Controllers\SupportController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });



Route::get('/', [ContactController::class, 'contactForm'])->name('page.index');
Route::get('/', [Home::class, 'lang_change'])->name('LangChange');

Route::get('/poseidon-service/{slug}', [Home::class, 'GotoService']);
Route::get('/room/{slug}', [Home::class, 'GotoRoom']);
Route::get('/poseidon-experience/about-us', [Home::class, 'gotogt']);
Route::get('/poseidon-experience/location', [Home::class, 'gotovt']);
Route::get('/room/deluxe-cityview-with-balcony', [Home::class, 'gotoRoomPage1'])->name('page.deluxe-cityview-with-balcony');
Route::get('/room/family-executive', [Home::class, 'gotoRoomPage2'])->name('page.family-executive');
Route::get('/room/luxury-Cityview', [Home::class, 'gotoRoomPage3'])->name('page.luxury-Cityview');
Route::get('/room/poseidon-suite', [Home::class, 'gotoRoomPage4'])->name('page.poseidon-suite');
Route::get('/room/premier-cityview', [Home::class, 'gotoRoomPage5'])->name('page.premier-cityview');
Route::get('/room/superior-room', [Home::class, 'gotoRoomPage6'])->name('page.superior-room');


Route::get('/poseidon-service/quay-dich-vu-van-phong', [Home::class, 'gotoDichVu1'])->name('page.quay-dich-vu-van-phong');
Route::get('/poseidon-service/gym', [Home::class, 'gotoDichVu2'])->name('page.gym');
Route::get('/poseidon-service/dich-vu-cho-thue-xe', [Home::class, 'gotoDichVu3'])->name('page.dich-vu-cho-thue-xe');
Route::get('/poseidon-service/ho-boi-ngoai-troi', [Home::class, 'gotoDichVu4'])->name('page.ho-boi-ngoai-troi');
Route::get('/poseidon-service/hoi-nghi', [Home::class, 'gotoDichVu5'])->name('page.hoi-nghi');

Route::get('/poseidon-dinning/poseidon-lobby-lounge-lobby', [Home::class, 'gotoDinning1'])->name('page.poseidon-lobby-lounge-lobby');
Route::get('/poseidon-dinning/Medusa-restaurant-03rd-floor', [Home::class, 'gotoDinning2'])->name('page.Medusa-restaurant-03rd-floor');
Route::get('/poseidon-dinning/Hades-bar-18th-floor', [Home::class, 'gotoDinning3'])->name('page.Hades-bar-18th-floor');

Route::get('/poseidon-promotion/family', [Home::class, 'gotoPromotion1'])->name('page.family');
Route::get('/poseidon-promotion/longstay', [Home::class, 'gotoPromotion2'])->name('page.longstay');
Route::get('/poseidon-promotion/honeymoon', [Home::class, 'gotoPromotion3'])->name('page.honeymoon');

Route::get('/poseidon-explore/haiduonghoc', [Home::class, 'gotoExplore1'])->name('page.haiduonghoc');
Route::get('/poseidon-explore/honchong', [Home::class, 'gotoExplore2'])->name('page.honchong');
Route::get('/poseidon-explore/thapba', [Home::class, 'gotoExplore3'])->name('page.thapba');
Route::get('/poseidon-explore/chualongson', [Home::class, 'gotoExplore4'])->name('page.chualongson');
Route::get('/poseidon-explore/khuphotay', [Home::class, 'gotoExplore5'])->name('page.khuphotay');
Route::get('/poseidon-explore/dammarket', [Home::class, 'gotoExplore6'])->name('page.dammarket');

Route::get('/gallery', [Home::class, 'gallery'])->name('page.gallery');
Route::get('/galleries/accommodations', [Home::class, 'gotoAccommodations'])->name('page.accommodations');
Route::get('/galleries/receptions', [Home::class, 'gotoReceptions'])->name('page.receptions');
Route::get('/galleries/restaurant', [Home::class, 'gotoRestaurant'])->name('page.restaurant');

Route::get('/contact', [Home::class, 'contact'])->name('page.contact');

Route::post('/contact-form', [ContactController::class, 'storeContactForm'])->name('contact-form.store');
Route::get('/RoomAvailable', [Home::class, 'RoomAvailable'])->name('page.RoomAvailable');
Route::group(['middleware' => ['auth'],'prefix' => 'admin'], function() {
    Route::get('/', [AdminController::class, 'index']);
    Route::get('/logout', [LoginController::class, 'logout'])->name('logout');
    Route::get('tong-quan', [AdminController::class, 'indextq']);
    Route::get('tong-quan/{id}', [AdminController::class, 'edittq']);
    Route::post('tong-quan/{id}', [AdminController::class, 'updatetq'])->name('tq.update');
    Route::get('room', [AdminController::class, 'indexroom']);
    Route::get('room/add', [AdminController::class, 'getaddroom']);
    Route::get('room/del/{id}', [AdminController::class, 'delroom']);
    Route::post('room/add', [AdminController::class, 'storeroom'])->name('room.add');
    Route::get('room/edit/{id}', [AdminController::class, 'editroom']);
    Route::post('room/edit/{id}', [AdminController::class, 'updateroom'])->name('room.update');
    Route::get('service', [AdminController::class, 'indexservice']);
    Route::get('service/add', [AdminController::class, 'getaddservice']); 
    Route::get('service/del/{id}', [AdminController::class, 'delservice']);
    Route::post('service/add', [AdminController::class, 'storeservice'])->name('service.add');
    Route::get('service/edit/{id}', [AdminController::class, 'editservice']);
    Route::post('service/edit/{id}', [AdminController::class, 'updateservice'])->name('service.update');
    Route::get('support', [SupportController::class, 'indexsupport']);
    Route::get('support/add', [SupportController::class, 'getaddsupport']); 
    Route::get('support/del/{id}', [SupportController::class, 'delsupport']);
    Route::post('support/add', [SupportController::class, 'storesupport'])->name('support.add');
    Route::get('support/edit/{id}', [SupportController::class, 'editsupport']);
    Route::post('support/edit/{id}', [SupportController::class, 'updatesupport'])->name('support.update');
    
 });
 Route::get('admin/login', [LoginController::class, 'showLoginForm'])->name('login');
 Route::post('admin/login', [LoginController::class, 'login']);
 Route::post('ckeditor/upload', 'CKEditorController@upload')->name('ckeditor.image-upload');
