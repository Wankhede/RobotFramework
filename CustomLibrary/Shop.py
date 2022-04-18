from robot.api.deco import library, keyword


@library
class Shop:


        #method name will be converted to keyword   Hello World
    @keyword
    def hello_world(self):
            print("Hello")