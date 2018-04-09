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
end
