%% When working in a shell load record with rr(module name).
-module(records).
-export([first_customer/0]).
-record(customer, { name="<anonymous>", address, phone }).

first_customer() ->
    #customer{name="Matt",
	      address="67th crater, Moon",
	      phone=-78654}.
