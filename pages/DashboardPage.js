import { BasePage } from "./BasePage.js";

export class DashboardPage extends BasePage {

  // ADD YOUR LOCATORS HERE...
  /**
   * @param {import('playwright').Page} page
   */
  constructor(page) {
    super(page);
    this.userprofileImage = page.locator("//img[@id='user_avatar']");
    this.logoutButton = page.getByText('Log Out');
    this.booksLink = page.locator("//a[@href='#books']");
    this.modulesLinks = page.locator("//ul[@id='menu_item']");
    this.modulesBookLinks = page.locator("//ul[@id='menu_item']/li[1]");
    this.modulesBorrowingBooksLinks = page.locator("//ul[@id='menu_item']/li[2]");
  
    
  
  }


}
