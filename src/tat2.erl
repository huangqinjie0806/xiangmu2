%%%-------------------------------------------------------------------
%%% @author snow
%%% @copyright (C) 2021, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 08. 一月 2021 12:50
%%%-------------------------------------------------------------------
-module(tat2).
-author("snow").

-export([budge/2]).

budge([X1, Y1, X2, Y2], [X3, Y3, X4, Y4]) ->
  F1 = erlang:abs(X1 + X2 - X3 - X4),
  F2 = erlang:abs(X1 - X2) + erlang:abs(X3 - X4),
  F3 = erlang:abs(Y1 + Y2 - Y3 - Y4),
  F4 = erlang:abs(Y1 - Y2) + erlang:abs(Y3 - Y4),

  case (F1 =< F2) and (F3 =< F4) of
    true -> io:format("Yes~n");
    false -> io:format("No~n")
  end.


