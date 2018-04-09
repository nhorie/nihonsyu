class Brand < ApplicationRecord
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
end
