from django import template

register = template.Library()

@register.filter(name='cut') #NEW
def cut(value, arg):
    return value.replace(arg,'')

#OLD
# register.filter('cut', cut) #string one is what you will call it in html and normal one is the function
