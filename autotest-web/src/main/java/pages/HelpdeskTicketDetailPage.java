package pages;

import com.codeborne.selenide.SelenideElement;
import ru.lanit.at.web.annotations.Name;
import ru.lanit.at.web.pagecontext.WebPage;

import static com.codeborne.selenide.Selenide.$x;

@Name(value = "HelpdeskTicketDetailPage")
public class HelpdeskTicketDetailPage extends WebPage {

    @Name("кнопка редактирования тикета")
    private final SelenideElement ticketEditBtn = $x("//a[@class='ticket-edit']/button");

    @Name("кнопка редактирования деталей тикета")
    private final SelenideElement ticketEditDetailBtn = $x("//button[contains(text(), 'Edit details')]");

    @Name("кнопка прикрепления файла")
    private final SelenideElement ticketAttachFileBtn = $x("//button[@id='ShowFileUpload']");

    @Name("кнопка обзора добавления файла")
    private final SelenideElement ticketBrowseFileBtn = $x("//label[contains(@class, 'btn-primary')]");

    @Name("кнопка инпута файла")
    private final SelenideElement ticketBrowseFileInputBtn = $x("//input[@id='file0']");

    @Name("поле наличия прикрепленного файла")
    private final SelenideElement fileExistingField = $x("//th[contains(text(), 'Attachments')]/following-sibling::td//a");

    @Name("кнопка обновления тикета")
    private final SelenideElement ticketUpdateBtn = $x("//button[contains(text(), 'Update This Ticket')]");
}
