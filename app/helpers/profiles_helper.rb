module ProfilesHelper
    include HomeHelper

    def get_date_in_month_year_format(date)
        if date.nil?
            return ""
        end
        date.strftime("%b %Y")
    end

    def update_array_attributes_in_params(params)
        params[:career_highlights] = get_array_from_comma_separated_string(params[:career_highlights])
        params[:primary_skills] = get_array_from_comma_separated_string(params[:primary_skills])
        params[:secondary_skills] = get_array_from_comma_separated_string(params[:secondary_skills])
        params[:experiences_attributes].each do | projects |
            unless projects.instance_of? (String)
                projects.each do | project |
                    unless project.instance_of? (String)
                        project[:projects_attributes].each do | p |
                            unless p.instance_of? (String)
                                p.each do | tech |
                                    unless tech.instance_of? (String)
                                        tech[:tech_stack] = get_array_from_comma_separated_string(tech[:tech_stack])
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end if params[:experiences_attributes].present?
        params
    end
    
end
