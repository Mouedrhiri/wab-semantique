<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('home');
});
Route::get('/about', function () {
    return view('about');
});
Route::get('/project', function () {
    return view('project');
});
Route::get('/service', function () {
    return view('service');
});
Route::get('/contact', function () {
    return view('contact');
});

Route::get('/auth', function () {
    return view('auth');
});

Route::get('/dashboard', function () {
    return view('admin/dashboard');
});
Route::get('/directeur-dashboard', function () {
    return view('directeur/dashboard');
});
Route::get('/client', function () {
    return view('admin/client');
});
Route::get('/demande_de_projet', function () {
    return view('admin/demand');
});
Route::get('/direction-demande_de_projet', function () {
    return view('directeur/demand');
});
Route::get('/projet', function () {
    return view('admin/projet');
});
Route::get('/direction-projet', function () {
    return view('directeur/projet');
});
Route::get('/employeur', function () {
    return view('admin/employe');
});
Route::get('/facture', function () {
    return view('admin/facture');
});
Route::get('/direction-facture', function () {
    return view('directeur/facture');
});
Route::get('/matriel', function () {
    return view('admin/matriel');
});
Route::get('/direction-matriel', function () {
    return view('directeur/matriel');
});
Route::get('/notifications', function () {
    return view('admin/notification');
});
Route::get('/tache', function () {
    return view('admin/tache');
});
Route::get('/direction-tache', function () {
    return view('directeur/tache');
});
Route::get('/users', function () {
    return view('admin/user');
});