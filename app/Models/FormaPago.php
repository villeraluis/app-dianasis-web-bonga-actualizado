<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FormaPago extends Model
{
      // use HasFactory;
      protected $table = 'formapagos';
      protected $primaryKey = 'FpaIdInFormaPago';
      public $timestamps = false;
}

