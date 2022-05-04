package pages;

import com.codeborne.selenide.SelenideElement;
import ru.lanit.at.web.annotations.Name;
import ru.lanit.at.web.pagecontext.WebPage;

import static com.codeborne.selenide.Selenide.$x;

@Name(value = "HelpdeskAuthPage")
public class HelpdeskAuthPage extends WebPage {

    @Name("поле ввода логина")
    private final SelenideElement usernameField = $x("//input[@id='username']");

    @Name("поле ввода пароля")
    private final SelenideElement passwordField = $x("//input[@id='password']");

    @Name("кнопка авторизации")
    private final SelenideElement authBtn = $x("//input[@value='Login']");
}
