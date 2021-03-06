<?php

namespace App\View\Components;

use App\Models\Introduce;
use App\Models\Room;
use App\Models\Service;
use Illuminate\View\Component;

class Header extends Component
{
    /**
     * Create a new component instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {
        return view('components.header', ['dichvu' => Service::GetAll()], ['menu' => Room::GetAll()]);
    }
}
