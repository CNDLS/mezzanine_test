from copy import deepcopy
from django.contrib import admin
from mezzanine.pages.admin import PageAdmin
from mezzanine.pages.models import Page, RichTextPage

from mezzanine.core.admin import TabularDynamicInlineAdmin
from teaching.models import LandingPage, ConcreteRichText
from mezzanine.utils.static import static_lazy as static



tcpage_fieldsets = deepcopy(PageAdmin.fieldsets)
tcpage_fieldsets[0][1]["fields"] += ("tagline", "content",) 
# content field also has to be added, because we have somehow interrupted its addition through Mezzanine.

class TCPageAdmin(PageAdmin):
    fieldsets = tcpage_fieldsets

admin.site.unregister(RichTextPage)
admin.site.register(RichTextPage, TCPageAdmin)


"""
ConcreteRichTextInline is based on mezzanine.galleries.admin.GalleryImageInline.
"""
class ConcreteRichTextInline(TabularDynamicInlineAdmin):
    model = ConcreteRichText



lpage_fieldsets = deepcopy(PageAdmin.fieldsets)
lpage_fieldsets[0][1]["fields"] += ("tagline",)
# only the tagline field is added, because we aren't interested in the generic content field on this page. 

"""
LandingPageAdmin just adds a 'rich text gallery' to PageAdmin.
"""
class LandingPageAdmin(PageAdmin):
    fieldsets = lpage_fieldsets

    class Media:
      css = {"all": (static("admin/css/landing_page.css"),)}

    inlines = (ConcreteRichTextInline,)


admin.site.register(LandingPage, LandingPageAdmin) 