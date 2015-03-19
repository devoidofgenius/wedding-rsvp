module AdminHelper

    def user_sortable(column, title = nil)
        title ||= column.titleize
        direction = column == user_sort_column && sort_direction == "ASC" ? "DESC" : "ASC"
        link_to title, sort: column, direction: direction
    end

    def guest_sortable(column, title = nil)
        title ||= column.titleize
        direction = column == guest_sort_column && sort_direction == "ASC" ? "DESC" : "ASC"
        link_to title, sort: column, direction: direction
    end

end
