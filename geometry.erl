%%%-------------------------------------------------------------------
%%% @author Tatenda Caston Hove - TatlaCas 
%%% @copyright (C) 2016, TatlaCas
%%% tathove@tatlacas.org tatlacas.org@gmail.com
%%% @doc
%%%
%%% @end
%%% Created : 08. Mar 2016 7:46 PM
%%%-------------------------------------------------------------------
-module(geometry).
-author("TatlaCas").

%% API
-export([area/1]).
area({rectangle, Width, Height}) -> Width * Height;
area({square, Side})             -> Side * Side.