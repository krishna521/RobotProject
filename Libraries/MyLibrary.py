from robot.libraries.BuiltIn import BuiltIn

class MyLibrary(object):
    def __init__(self):
        self._seleniumlib = BuiltIn().get_library_instance('Selenium2Library')
        self.email = '//input[@id="identifierId"]'
        self.Next  = '//div[@id="identifierNext"]'

    def Login(self,MailAddress):
        self._seleniumlib.input_text(self.email,MailAddress)
        self._seleniumlib.click_element(self.Next)
        self._seleniumlib.wait_until_page_contains("Welcome")

