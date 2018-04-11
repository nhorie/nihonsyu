module BrandsHelper
    def get_region_name(prefecture_id)
        prefecture = Prefecture.find(prefecture_id)
        region = Region.find(prefecture.region_id)
        region.region_name
    end

    def get_prefecture_name(prefecture_id)
        prefecture = Prefecture.find(prefecture_id)
        prefecture.prefecture_name
    end

    def sortable(column, title = nil)
        title ||= column.titleize
        css_class = (column == sort_column) ? "current #{sort_direction}" : nil
        direction = (column == sort_column && sort_direction == "asc") ? "desc" : "asc"
        link_to title, {:sort => column, :direction => direction}, {:class => css_class}
    end
end
