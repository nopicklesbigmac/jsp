package crawling;


public class MainCrawling {
	
	public static final String WEB_DRIVER_ID = "webdriver.chrome.driver";
	public static final String WEB_DRIVER_PATH = "C:\\chromedriver.exe";
	public static final String MEGABOX_THEATER = "https://www.megabox.co.kr/theater/list";
	
	public static void main(String[] args) {

		TheaterCrawling theater = new TheaterCrawling(WEB_DRIVER_ID, WEB_DRIVER_PATH, MEGABOX_THEATER);
		theater.insert_db();
	}
}
