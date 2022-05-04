package pages;

import com.codeborne.selenide.SelenideElement;
import ru.lanit.at.web.annotations.Name;
import ru.lanit.at.web.pagecontext.WebPage;

import static com.codeborne.selenide.Selenide.$x;

@Name(value = "HelpdeskTicketEditPage")
public class HelpdeskTicketEditPage extends WebPage {

    @Name("поле редактирования заголовка")
    private final SelenideElement ticketTitleField = $x("//input[@name='title']");

    @Name("поле редактирования очереди")
    private final SelenideElement ticketQueueList = $x("//select[@id='id_queue']");

    @Name("поле редактирования почтового адреса")
    private final SelenideElement ticketEmailField = $x("//input[@name='submitter_email']");

    @Name("поле редактирования описания")
    private final SelenideElement ticketDescriptionField = $x("//textarea[@id='id_description']");

    @Name("поле редактирования приоритета")
    private final SelenideElement ticketPriorityList = $x("//select[@id='id_priority']");

    @Name("копка сохранения изменений")
    private final SelenideElement ticketSaveBtn = $x("//input[@value='Save Changes']");
}
