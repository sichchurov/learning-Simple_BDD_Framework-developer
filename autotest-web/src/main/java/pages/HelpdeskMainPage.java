package pages;

import com.codeborne.selenide.SelenideElement;
import ru.lanit.at.web.annotations.Name;
import ru.lanit.at.web.pagecontext.WebPage;

import static com.codeborne.selenide.Selenide.$x;

@Name(value = "HelpdeskMainPage")
public class HelpdeskMainPage extends WebPage {

    @Name("кнопка логина")
    private final SelenideElement loginBtn = $x("//a[@id='userDropdown']");

    @Name("меню сохраненных запросов")
    private final SelenideElement queryMenu = $x("//span[contains(text(), 'Saved Queries')]");

    @Name("элемент сохраненного запроса")
    private final SelenideElement queriesList = $x("//li[contains(@class, 'show')]//a[contains(text(), 'Errors in')]");
}
