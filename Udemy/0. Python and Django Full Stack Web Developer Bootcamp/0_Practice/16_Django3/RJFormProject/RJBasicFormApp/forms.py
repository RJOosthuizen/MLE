from django import forms
from django.core import validators

#GOOD FOR INDIVIDUAL FIELDS
# def check_for_z(value):
#     if value[0].lower() != 'z':
#         raise forms.ValidationError('Name must start with z')

class FormName(forms.Form):
    name = forms.CharField()#validators=[check_for_z])
    email = forms.EmailField()
    verify_email = forms.EmailField(label='Verify Email')
    text = forms.CharField(widget=forms.Textarea) # check docs for all widgets
    botcatcher = forms.CharField(required=False,
                                widget = forms.HiddenInput, #check in dom inspector
                                validators = [validators.MaxLengthValidator(0)]) #CHECK DOCS FOR ALL VALIDATORS



    def clean(self):
        all_clean_data = super().clean()
        email = all_clean_data['email']
        vmail = all_clean_data['verify_email']

        if email != vmail:
            raise forms.ValidationError('Emails must match')




    # def clean_botcatcher(self): #check if value has been changed my bot #WILL NOT REALLY USE THIS
    #         botcatcher = self.cleaned_data['botcatcher']
    #         if len(botcatcher) > 0:
    #             raise forms.ValidationError("bot found")
    #         return botcatcher
