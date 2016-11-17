from django.db import models
from mezzanine.pages.models import Page
from mezzanine.core.models import RichText
from mezzanine.core.fields import RichTextField
from django.utils.translation import ugettext_lazy as _


class ConcreteRichText(models.Model):
    content = RichTextField(_("Content"))
    landing_page = models.ForeignKey("LandingPage", default=None)
    
    search_fields = ("content",)
    

class LandingPage(Page):
  """
  Like RichTextPage, but with multiple RichText content fields, as a sort of gallery. 
  The user should be able to control the number of gallery fields.
  This can't be done with Mezzanine's RichText model, as it is abstract (sigh),
  so I've made my own ConcreteRichText class, above.
  """
  gallery_items = models.ManyToManyField(ConcreteRichText)