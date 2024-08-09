export class BrowserUtility {

    static async sleep(seconds){
        await new Promise((resolve) => setTimeout(resolve, seconds * 1000));
    }

    // ADD YOUR OWN BROWSER UTILITY FUNCTIONS HERE...


    // create a function that can verify expected and actual massages are equal, and return promises
    static async verifyMesage(actual, expect){
        return new Promise((resolve) => {
            resolve(actual.toString() === expect.toString())
        });
    }

    

}