import selenium.webdriver as webdriver
from selenium.webdriver.common.keys import Keys
browser = webdriver.Firefox()

url = 'http://www.google.com/'
browser.get(url)
