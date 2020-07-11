<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ToolsController extends Controller
{
    function sms()
    {
        return view('setting.sms');
    }

    function whatapps()
    {
        return view('setting.whatapps');
    }
}
