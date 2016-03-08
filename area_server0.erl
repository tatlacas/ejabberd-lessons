%%%-------------------------------------------------------------------
%%% @author Tatenda Caston Hove - TatlaCas 
%%% @copyright (C) 2016, TatlaCas
%%% tathove@tatlacas.org tatlacas.org@gmail.com
%%% @doc
%%%
%%% @end
%%% Created : 08. Mar 2016 7:48 PM
%%%-------------------------------------------------------------------
-module(area_server0).
-author("TatlaCas").

%% API
-export([loop/0]).
loop() ->
  receive
    {Sender,rectangle, Width, Ht} ->
      Sender ! [Width * Ht]
      , loop();
    {Sender,square, Side} ->
      Sender ! [Side*Side], loop()
  end.