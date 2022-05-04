package ru.lanit.at.api.properties;

import org.aeonbits.owner.Config;

@Config.LoadPolicy(Config.LoadType.MERGE)
@Config.Sources({
        "classpath:config/configuration.properties",
        "system:properties",
        "system:env"
})
public interface RestConfigurations extends Config {

    @Key("baseURL")
    @DefaultValue("")
    String getBaseUrl();

}
