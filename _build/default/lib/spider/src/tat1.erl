%%%-------------------------------------------------------------------
%%% @author snow
%%% @copyright (C) 2021, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 08. 一月 2021 12:50
%%%-------------------------------------------------------------------
-module(tat1).
-author("snow").

-export([tupleSort/1]).
sublist(L) -> sublist(L, 100).
sublist(_, 0) -> [];
sublist([], _) -> [];
sublist([H | T], N) when N > 0 -> [H | sublist(T, N - 1)].
tupleSort(List) -> tupleSort(List, 2).
tupleSort(List, 2) ->
  L1 = lists:reverse(lists:keysort(2, List)),
  sublist(L1).


