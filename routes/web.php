<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\DestinationController;
use App\Http\Controllers\EmployeController;
use App\Http\Controllers\ChargeController;
use App\Http\Controllers\InstructionController;
use App\Http\Controllers\AccountController;
use App\Http\Controllers\TransportController;
use App\Http\Controllers\TripController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ExportController;
use App\Http\Controllers\RekeningController;
use App\Http\Controllers\ResumeController;
use App\Http\Controllers\SignatureController;
use App\Http\Controllers\TransactionController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;

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

// Starter
Route::get('/', function () {
    return redirect('/login');
});
Route::get('/login', [AuthController::class, 'index'])->name('login')->middleware('guest');
Route::post('/logout', [AuthController::class, 'logout']);
Route::post('/authenticate', [AuthController::class, 'authenticate'])->name('authenticate');
Route::get('/dashboard', [DashboardController::class, 'index'])->middleware('auth');

// Employe
Route::resource('/employes', EmployeController::class)->middleware('auth');
// Destination
Route::resource('/destinations', DestinationController::class)->middleware('auth');
// Charge
Route::resource('/charges', ChargeController::class)->middleware('auth');
// User
Route::resource('/users', UserController::class)->middleware('auth');
Route::get('/changepass', [UserController::class, 'changePass'])->name('user.changepass');
Route::post('/updatepass', [UserController::class, 'updatePassword'])->name('user.changepass.update');
// SPT
Route::resource('/instructions', InstructionController::class)->middleware('auth');
Route::get('/instructions/{instruction}/print', [InstructionController::class, 'cetak'])->name('instructions.print')->middleware('auth');
Route::get('/instructions/{instruction?}/{id?}/printsppd', [InstructionController::class, 'cetaksppd'])->name('instructions.printsppd')->middleware('auth');

// SPPD
Route::resource('/trips', TripController::class)->middleware('auth');
Route::get('/trips/{trip}/print', [TripController::class, 'cetak'])->name('trips.print')->middleware('auth');

// Akun
Route::resource('/accounts', AccountController::class)->middleware('auth');

// Transports
Route::resource('/transports', TransportController::class)->middleware('auth');

// Trip Category
Route::resource('/categories', CategoryController::class)->middleware('auth');

// Signature
Route::resource('/signatures', SignatureController::class)->middleware('auth');

// Transaction
Route::resource('/transactions', TransactionController::class)->middleware('auth');
Route::get('/transactions/{transaction}/print', [TransactionController::class, 'cetak'])->name('transactions.print')->middleware('auth');

// Rekening
Route::resource('/rekenings', RekeningController::class)->middleware('auth');

// Resume
Route::resource('/resumes', ResumeController::class)->middleware('auth');
Route::get('/resumes/{resume}/print', [ResumeController::class, 'cetak'])->name('resumes.print')->middleware('auth');

// Update Status Pegawai dan Tugas
Route::put('/instructions/{instruction?}/{id?}/tugas', [InstructionController::class, 'tugas'])->name('instructions.tugas')->middleware('auth');
Route::put('/instructions/{instruction?}/{id?}/selesai', [InstructionController::class, 'selesai'])->name('instructions.selesai')->middleware('auth');

// Export Excel
Route::get('excel', [InstructionController::class, 'export'])->name('excel')->middleware('auth');