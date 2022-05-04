package ru.lanit.at.api.models;

import com.google.gson.GsonBuilder;

public class RequestModel {

    private final String method;
    private final String body;
    private final String path;
    private final String url;

    public RequestModel(String method, String body, String path, String url) {
        this.method = method;
        this.body = body;
        this.path = path;
        this.url = url;
    }

    public String getMethod() {
        return method;
    }

    public String getBody() {
        return body;
    }

    public String getPath() {
        return path;
    }

    public String getUrl() {
        return url;
    }

    @Override
    public String toString() {
        return new GsonBuilder()
                .setPrettyPrinting()
                .create()
                .toJson(this);
    }
}
