class Brand < ApplicationRecord
    belongs_to :prefecture

    enum type_id: {
        jyunmai_daiginjyo: 1,
        jyunmai_ginjyo: 2,
        jyunmai: 3,
        daiginjyo: 4,
        ginjyo: 5,
        honjyozo: 6
    }

    enum evaluation: {
        star_1: 1,
        star_2: 2,
        star_3: 3,
        star_4: 4,
        star_5: 5,
        star_6: 6,
        star_7: 7,
        star_8: 8,
        star_9: 9,
        star_10: 10        
    }

    scope :get_by_name, ->(search_name) {
        where("brand_name like ?", "%#{search_name}%")
    }
    scope :get_by_region, ->(search_region) {
        joins("join prefectures on prefectures.id = brands.prefecture_id").where(:prefectures => {region_id: search_region})
    }
    scope :get_by_type, ->(search_type) {
        where(type_id: search_type)
    }
    scope :get_by_price, ->(search_min_price, search_max_price) {
        wheresql = ""
        if search_min_price.present?
            wheresql += "price >= #{search_min_price}"
        end
        if search_max_price.present?
            if wheresql.present?
                wheresql += " and "
            end
            wheresql += "price <= #{search_max_price}" 
        end
        where(wheresql)
    }

    def self.search(search)
        if search
            where(['brand_name like ?', "%{search}%"])
        else
            all
        end
    end
end
