import ballerina/http;

# A service representing a network-accessible API
# bound to port `9091`.
service / on new http:Listener(9091) {

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get newRes(string name) returns string|error {
        // Send a response back to the caller.
        
        return "Hello, from greeting";
    }
}
