%% When working in a shell load record with rr(module name).
-module(records).
-export([first_customer/0, print_contact/1]).
-record(customer, { name="<anonymous>", address, phone }).

first_customer() ->
    #customer{name="Matt",
	      address="67th crater, Moon",
	      phone=-78654}.

print_contact(#customer{name=Name, address=Address, phone=Phone}) when Phone =/= undefined ->
    io:format("Contact: ~s at ~s. ~n", [Name, Phone]);
print_contact(#customer{name=Name, address=Address, phone=Phone}) ->
    io:format("Contact: ~s but we have no phone. ~n", [Name]).
