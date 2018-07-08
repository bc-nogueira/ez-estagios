module BootstrapHelper
  # rubocop:disable Rails/OutputSafety
  def bootstrap_tooltip(titles, placement = 'top')
    "data-toggle=tooltip data-placement=#{placement} " \
    "title='#{title_to_tooltip(titles)}'".html_safe
  end

  def title_to_tooltip(titles)
    titles = [titles].flatten
    titles = titles.map do |title|
      next I18n.t("tooltips.#{title}") if title.is_a? Symbol
      title if title.is_a? String
    end
    titles.join(' ')
  end
  # rubocop:enable Rails/OutputSafety
end