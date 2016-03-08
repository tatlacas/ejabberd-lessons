%%%-------------------------------------------------------------------
%%% @author Tatenda Caston Hove - TatlaCas 
%%% @copyright (C) 2016, TatlaCas
%%% tathove@tatlacas.org tatlacas.org@gmail.com
%%% @doc
%%%
%%% @end
%%% Created : 08. Mar 2016 7:58 PM
%%%-------------------------------------------------------------------
-module(area_server1).
-author("TatlaCas").

%% API
-export([loop/0, start/0]).

start()->
  spawn(area_server1,loop,[]).



loop() ->
  receive
    {From, {rectangle, Width, Ht}} ->
      From ! {self(),Width * Ht},
      loop();
    {From, {circle, R}} -> From! {self(),3.14159*R*R}, loop();
    {From, Other} ->
      From ! {self(),error,Other},
      loop()
  end.