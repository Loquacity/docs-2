class Page::TileItem

  def initialize(title, url, image_url = '', desc, links)
    @title = title
    @url = url
    @image_url = image_url
    @desc = desc
    @links = links
  end

  def render
    title_html =
      @url ? 
        %{<h2 class="TileItem__title"><a class="TileItem__title-link" href="#{@url}">#{@title}</a></h2>}
        : %{<h2 class="TileItem__title">#{@title}</h2>}
    image_html = @image_url && %{<img alt="Image #{@title}" class="TileItem__image" src="#{@image_url}" />}
    desc_html = @desc && %{<p class="TileItem__desc">#{@desc}</p>}
    links_html = @links && TileItemLinksList.new(@links).render
    learn_more_html = @url && %{<a href="#{@url}" class="TileItem__learn-more">Learn more</a>}
    %{
      <article class="TileItem">
        #{image_html}
        #{title_html}
        #{desc_html}
        #{links_html}
        #{learn_more_html}
      </article>
    }
  end

  class TileItemLinksList

    def initialize(links)
      @links = links
    end

    def render
      @links && @links.length() > 0 && 
      %{
        <ul class="TileItem__list">
          #{
            @links
              .map {
                |link|
                link['text'] && link['url'] && %{
                  <li class="TileItem__list-item"><a href="#{link['url']}" class="TileItem__list-item-link">#{link['text']}</a></li>
                }
              }
              .join('')
          }
        </ul>
      }
    end
  end

end