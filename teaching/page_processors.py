from teaching.models import LandingPage, ConcreteRichText
from mezzanine.pages.page_processors import processor_for

@processor_for(LandingPage)
def landingpage_preprocessor(request, page):
  landing_page = LandingPage.objects.get(page_ptr=page)
  gallery_items = ConcreteRichText.objects.filter(landing_page=landing_page)
  return_value = dict()
  return_value['gallery_items'] = gallery_items
  return return_value