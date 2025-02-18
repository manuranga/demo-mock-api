import ballerina/log;

@display {
    label: "SyncUsers"
}
public function main() returns error? {
    do {
        json jsonResult = check httpClientOrigin->get("/users");
        log:printInfo("received users: " + jsonResult.toJsonString());

        json jsonOut = check httpClientTarget->patch("/users", jsonResult);
        log:printInfo("send users: " + jsonOut.toJsonString());
    } on fail error e {
        log:printError("Error: ", 'error = e);
        return e;
    }
}
