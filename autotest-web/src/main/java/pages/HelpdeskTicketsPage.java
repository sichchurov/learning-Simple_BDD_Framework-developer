package pages;

import com.codeborne.selenide.SelenideElement;
import ru.lanit.at.web.annotations.Name;
import ru.lanit.at.web.pagecontext.WebPage;

import static com.codeborne.selenide.Selenide.$x;

@Name(value = "HelpdeskTicketsPage")
public class HelpdeskTicketsPage extends WebPage {

    @Name("поле поиска")
    private final SelenideElement ticketSearchField = $x("//input[@id='search_query']");

    @Name("кнопка поиска")
    private final SelenideElement ticketSearchBtn = $x("//button[@type='submit']");

    @Name("заголовок найденного тикета")
    private final SelenideElement foundedTicketTitle = $x("//div[@class='tickettitle']/a");

    @Name("кнопка сохранения поискового запроса")
    private final SelenideElement saveQueryBtn = $x("//div[@id='headingTwo']//button");

    @Name("поле ввода имени поискового запроса")
    private final SelenideElement saveQueryField = $x("//input[@id='id_title']");

    @Name("кнопка подтверждения сохранения поискового запроса")
    private final SelenideElement saveQueryConfirmBtn = $x("//input[@value='Save Query']");

}
