%%%-------------------------------------------------------------------
%%% @author Tatenda Caston Hove - TatlaCas 
%%% @copyright (C) 2016, TatlaCas
%%% tathove@tatlacas.org tatlacas.org@gmail.com
%%% @doc
%%%
%%% @end
%%% Created : 08. Mar 2016 8:00 PM
%%%-------------------------------------------------------------------
-module(client).
-author("TatlaCas").

%% API
-export([area/2]).



area(Pid, Request) ->
  rpc(Pid, Request).

rpc(Pid, Request) ->
  Pid ! {self(), Request},
  receive
    {Pid,Response} ->
      Response
  end.