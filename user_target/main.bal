import ballerina/http;
import ballerina/log;

// invoke this using following curl command
// curl -X PATCH http://localhost:9090/users -H "Content-Type: application/json" -d '{"users": [{"id": 1, "name": "John Doe", "email": "john.doe@example.com"}, {"id": 2, "name": "Jane Smith", "email": "jane.smith@example.com"}]}'
service / on new http:Listener(9090) {
    // mock service for receiving a list of users
    resource function patch users(@http:Payload json users) returns json {
        log:printInfo(users.toJsonString());
        return {
            "message": "Users received"
        };
    }
}
