import { Given, When, Then } from '@cucumber/cucumber';
import { expect } from '@playwright/test';
import { BrowserUtility } from '../utilities/BrowserUtility.js';
import { PageManager } from "../globalPagesSetup.js";


// WRITE YOUR STEP DEFINITIONS HERE...

Given('user is already logged in as {string}', async function (string) {
    await PageManager.loginPage.login(string);
});

When('use click user profile on top right corner of the page', async function () {
  // Implement logic to click user profile
  await PageManager.dashboardPage.userprofileImage.click();
});

When('click the logout button', async function () {
  // Implement logic to click logout button
  await PageManager.dashboardPage.logoutButton.click();
});

Then('user should be logged out from the app', async function () {
  // Implement logic to verify user logout
  await expect(PageManager.page).toHaveTitle("Login - Library");
});