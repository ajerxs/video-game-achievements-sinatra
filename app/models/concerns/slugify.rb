module Slugify
    module ClassMethods
 
        def findable_slug
            split_slug = @slug.split('-')
            @findable = "#{split_slug.first}" + "%" + "#{split_slug.last}"
        end

    end
end