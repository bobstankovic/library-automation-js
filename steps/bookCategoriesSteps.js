import { Given, When, Then } from '@cucumber/cucumber';
import { expect } from '@playwright/test';
import { BrowserUtility } from '../utilities/BrowserUtility.js';
import { PageManager } from "../globalPagesSetup.js";

// WRITE YOUR STEP DEFINITIONS HERE...



When('user clicks Books link', async function () {
  await PageManager.dashboardPage.booksLink.click();
});

When('user clicks the book categories drop down box', async function () {
    await PageManager.booksPage.booksDropdown.click();
});

Then('user should see {int} book categories', async function (int) {
  await expect(PageManager.booksPage.booksDropdown.locator("option")).toHaveCount(int);
});

Then('book category name {string} should be included in the categories', async function (string) {
  
});