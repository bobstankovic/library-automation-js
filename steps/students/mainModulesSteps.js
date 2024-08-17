import { Given, When, Then } from "@cucumber/cucumber";
import { expect } from "@playwright/test";
import { BrowserUtility } from "../../utilities/BrowserUtility.js";
import { PageManager } from "../../globalPagesSetup.js";


// WRITE YOUR STEP DEFINITIONS HERE...

Then('user shud see {int} modules', async function (int) {
   const numberOfModules =  await PageManager.dashboardPage.modulesLinks.locator("li").count();
   
   //console.log("Number of modules: ", numberOfModules);  // Uncomment this line to print the number of modules
  // expect(numberOfModules).toBe(int);

  await expect(PageManager.dashboardPage.modulesBookLinks).toBeEnabled();
  await expect(PageManager.dashboardPage.modulesBorrowingBooksLinks).toBeEnabled();
});
